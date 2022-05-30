contract main {




// =====================  Runtime code  =====================


const ADMIN_ADDRESS = 0x911ae448b07e93d80942afabebe60ad1e4cdb927


uint256 stor0;
address owner;
address sub_7a26cb27Address;

function sub_6f82f8fd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_6f82f8fd[arg1].field_0
    return sub_6f82f8fd[arg1][arg2].field_0, 
           sub_6f82f8fd[arg1][arg2].field_256,
           sub_6f82f8fd[arg1][arg2].field_512,
           sub_6f82f8fd[arg1][arg2].field_768,
           sub_6f82f8fd[arg1][arg2].field_1024
}

function sub_7a26cb27(?) payable {
    return sub_7a26cb27Address
}

function owner() payable {
    return owner
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

function sub_b4e57631(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_6f82f8fd[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if not sub_6f82f8fd[address(arg1)][idx].field_768:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_5ea61de1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_6f82f8fd[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if sub_6f82f8fd[address(arg1)][idx].field_0 == arg2:
            if idx >= sub_6f82f8fd[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 3)
            sub_6f82f8fd[address(arg1)][idx].field_768 = arg3
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit 0xc9f69fa2: address(arg1), arg2
}

function sub_b07a8968(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_6f82f8fd[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if sub_6f82f8fd[address(arg1)][idx].field_0 == arg2:
            if idx >= sub_6f82f8fd[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 3)
            sub_6f82f8fd[address(arg1)][idx].field_512 = arg3
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit 0xc9f69fa2: address(arg1), arg2
}

function pendingClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_6f82f8fd[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if sub_6f82f8fd[address(arg1)][idx].field_768 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_6f82f8fd[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 3)
        if sub_6f82f8fd[address(arg1)][idx].field_512:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_6f82f8fd[address(arg1)].field_0:
            revert with 'NH{q', 50
        return sub_6f82f8fd[address(arg1)][idx].field_1024
    return 999999
}

function sub_351ae6eb(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = address(arg1)
    idx = 0
    while idx < sub_6f82f8fd[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if sub_6f82f8fd[address(arg1)][idx].field_768:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_6f82f8fd[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[96] = 128
        mem[224] = sub_6f82f8fd[address(arg1)][idx].field_1280
        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 3)) + 5
        s = 0
        t = sha3(mem[0])
        u = 256
        while s < sub_6f82f8fd[address(arg1)][idx].field_1280:
            mem[u] = stor[t]
            s = s + 1
            t = t + 1
            u = u + 32
            continue 
        mem[128] = sub_6f82f8fd[address(arg1)][idx].field_1024
        mem[160] = address(arg1)
        mem[192] = sub_6f82f8fd[address(arg1)][idx].field_0
        emit 0xa80dc45c: mem[mem[64] len u - mem[64]]
}

function sub_7d29090b(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 4).length) + 97] = 128
    mem[floor32(('cd', 4).length) + 225] = ('cd', 4).length
    mem[floor32(('cd', 4).length) + 257 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    emit 0xa80dc45c: Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 257 len 32 * ('cd', 4).length]), cd[36], address(cd[68]), cd[100]
}

function sub_08befbc7(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_7a26cb27Address)
    staticcall sub_7a26cb27Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        emit 0x207e871b: 0
    else:
        require ext_code.size(sub_7a26cb27Address)
        staticcall sub_7a26cb27Address.0x2f745c59 with:
                gas gas_remaining wei
               args address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_7a26cb27Address)
        call sub_7a26cb27Address.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), 0x911ae448b07e93d80942afabebe60ad1e4cdb927, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x207e871b: ext_call.return_data[0]
}

function sub_36a5bc86(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_7a26cb27Address)
    staticcall sub_7a26cb27Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(sub_7a26cb27Address)
    staticcall sub_7a26cb27Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_7a26cb27Address)
        call sub_7a26cb27Address.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x207e871b: arg1
}

function sub_6d8a5b0f(?) payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    while idx < sub_6f82f8fd[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 3)
        if sub_6f82f8fd[address(msg.sender)][idx].field_768 > 0:
            if idx >= sub_6f82f8fd[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 3)
            if not sub_6f82f8fd[address(msg.sender)][idx].field_512:
                if idx >= sub_6f82f8fd[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(msg.sender), 3)
                if sub_6f82f8fd[address(msg.sender)][idx].field_1024 != 999999:
                    mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[100] = this.address
                    mem[132] = msg.sender
                    mem[164] = sub_6f82f8fd[address(msg.sender)][idx].field_1024
                    require ext_code.size(sub_7a26cb27Address)
                    call sub_7a26cb27Address.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, sub_6f82f8fd[address(msg.sender)][idx].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= sub_6f82f8fd[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 3)
                    sub_6f82f8fd[address(msg.sender)][idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor0 = 1
}

function sub_ceff8279(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_7a26cb27Address)
    staticcall sub_7a26cb27Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0
            require ext_code.size(sub_7a26cb27Address)
            staticcall sub_7a26cb27Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(this.address), 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22 = mem[_21]
            require mem[_21] == mem[_21]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0x911ae448b07e93d80942afabebe60ad1e4cdb927
            mem[mem[64] + 68] = _22
            require ext_code.size(sub_7a26cb27Address)
            call sub_7a26cb27Address.0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), 0x911ae448b07e93d80942afabebe60ad1e4cdb927, _22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _22
            continue 
    emit 0xdbdb9618: ext_call.return_data[0]
}

function sub_8864c4a2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[floor32(('cd', 4).length) + 101] = msg.sender
    require ext_code.size(sub_7a26cb27Address)
    staticcall sub_7a26cb27Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'User has not nft'
    mem[0] = msg.sender
    mem[32] = 3
    idx = 0
    while idx < sub_6f82f8fd[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 3)
        if sub_6f82f8fd[address(msg.sender)][idx].field_768 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_6f82f8fd[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 3)
        if sub_6f82f8fd[address(msg.sender)][idx].field_512:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_6f82f8fd[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_6f82f8fd[address(msg.sender)][idx].field_1024 != 999999:
            revert with 0, 'User has a pending claim'
        mem[0] = msg.sender
        mem[32] = 3
        idx = 0
        while idx < sub_6f82f8fd[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 3)
            if not sub_6f82f8fd[address(msg.sender)][idx].field_768:
                revert with 0, 'User has a pending process'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ('cd', 4).length < 2:
            revert with 0, 'User need assigns some nft to merge'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1055 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(sub_7a26cb27Address)
            staticcall sub_7a26cb27Address.0x6352211e with:
                    gas gas_remaining wei
                   args _1055
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1068 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1068] == mem[_1068 + 12 len 20]
            if mem[_1068 + 12 len 20] != msg.sender:
                revert with 0, 'User is not owner of all nfts sent'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _1061 = mem[128]
        mem[mem[64]] = 0x3593b46300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1061
        require ext_code.size(sub_7a26cb27Address)
        call sub_7a26cb27Address.0x3593b463 with:
             gas gas_remaining wei
            args _1061
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1070 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1074 = mem[_1070]
        require mem[_1070] <= test266151307()
        require _1070 + mem[_1070] + 31 < _1070 + return_data.size
        _1076 = mem[_1070 + mem[_1070]]
        if mem[_1070 + mem[_1070]] > test266151307():
            revert with 'NH{q', 65
        if _1070 + ceil32(return_data.size) + ceil32(ceil32(mem[_1070 + mem[_1070]])) + 1 > test266151307() or ceil32(ceil32(mem[_1070 + mem[_1070]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1070 + ceil32(return_data.size) + ceil32(ceil32(mem[_1070 + mem[_1070]])) + 1
        mem[_1070 + ceil32(return_data.size)] = _1076
        require _1074 + _1076 + 32 <= return_data.size
        idx = 0
        while idx < _1076:
            mem[_1070 + ceil32(return_data.size) + idx + 32] = mem[_1070 + _1074 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_1076) <= _1076:
            require mem[_1070 + 32] == mem[_1070 + 32]
            _1296 = mem[_1070 + 64]
            require mem[_1070 + 64] == mem[_1070 + 64]
            _1497 = mem[96]
            idx = 1
            s = 0
            while idx < _1497:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1507 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x3593b46300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1507
                require ext_code.size(sub_7a26cb27Address)
                call sub_7a26cb27Address.0x3593b463 with:
                     gas gas_remaining wei
                    args _1507
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1532 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1579 = mem[_1532]
                require mem[_1532] <= test266151307()
                require _1532 + mem[_1532] + 31 < _1532 + return_data.size
                _1596 = mem[_1532 + mem[_1532]]
                if mem[_1532 + mem[_1532]] > test266151307():
                    revert with 'NH{q', 65
                if _1532 + ceil32(return_data.size) + ceil32(ceil32(mem[_1532 + mem[_1532]])) + 1 > test266151307() or ceil32(ceil32(mem[_1532 + mem[_1532]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1532 + ceil32(return_data.size) + ceil32(ceil32(mem[_1532 + mem[_1532]])) + 1
                mem[_1532 + ceil32(return_data.size)] = _1596
                require _1579 + _1596 + 32 <= return_data.size
                s = 0
                while s < _1596:
                    mem[_1532 + ceil32(return_data.size) + s + 32] = mem[_1532 + _1579 + s + 32]
                    _1497 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1596) > _1596:
                    mem[_1532 + ceil32(return_data.size) + _1596 + 32] = 0
                require mem[_1532 + 32] == mem[_1532 + 32]
                require mem[_1532 + 64] == mem[_1532 + 64]
                if _1296 != mem[_1532 + 64]:
                    revert with 0, 'Generation artWorks must to be the same'
                if idx == -1:
                    revert with 'NH{q', 17
                _1497 = mem[96]
                idx = idx + 1
                s = mem[_1532 + 64]
                continue 
            mem[0] = msg.sender
            mem[32] = 3
            _1517 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1517] = 0
            mem[_1517 + 32] = 0
            mem[_1517 + 64] = 0
            mem[_1517 + 96] = 0
            mem[_1517 + 128] = 0
            mem[_1517 + 160] = 96
            _1693 = mem[96]
            idx = 0
            while idx < _1693:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1751 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _1751
                require ext_code.size(sub_7a26cb27Address)
                call sub_7a26cb27Address.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _1751
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                _1693 = mem[96]
                idx = idx + 1
                continue 
            mem[_1517 + 160] = 96
            mem[_1517] = sub_6f82f8fd[address(msg.sender)].field_0
            mem[_1517 + 32] = block.timestamp
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            mem[_1517 + 128] = mem[128]
            sub_6f82f8fd[address(msg.sender)].field_0++
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_0 = sub_6f82f8fd[address(msg.sender)].field_0
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_256 = block.timestamp
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_512 = mem[_1517 + 64]
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_768 = mem[_1517 + 96]
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1024 = mem[_1517 + 128]
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 = mem[96]
            if not mem[96]:
                idx = sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5)
                while sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5) + sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _1849 = mem[_1517 + 128]
                mem[mem[64]] = 128
                _1865 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 160
                while idx < _1865:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = msg.sender
                mem[mem[64] + 96] = sub_6f82f8fd[address(msg.sender)].field_0
                emit 0xa80dc45c: 128, _1849, msg.sender, sub_6f82f8fd[address(msg.sender)].field_0, mem[mem[64] + 128 len (32 * _1865) + 32]
            else:
                s = sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5)
                idx = 128
                while (32 * mem[96]) + 128 > idx:
                    stor[s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5) + (Mask(251, 0, (32 * mem[96]) + 31) >> 5)
                while sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5) + sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _1901 = mem[_1517 + 128]
                mem[mem[64]] = 128
                _1913 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 160
                while idx < _1913:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = msg.sender
                mem[mem[64] + 96] = sub_6f82f8fd[address(msg.sender)].field_0
                emit 0xa80dc45c: 128, _1901, msg.sender, sub_6f82f8fd[address(msg.sender)].field_0, mem[mem[64] + 128 len (32 * _1913) + 32]
        else:
            mem[_1070 + ceil32(return_data.size) + _1076 + 32] = 0
            require mem[_1070 + 32] == mem[_1070 + 32]
            _1298 = mem[_1070 + 64]
            require mem[_1070 + 64] == mem[_1070 + 64]
            _1498 = mem[96]
            idx = 1
            s = 0
            while idx < _1498:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1509 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x3593b46300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1509
                require ext_code.size(sub_7a26cb27Address)
                call sub_7a26cb27Address.0x3593b463 with:
                     gas gas_remaining wei
                    args _1509
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1534 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1582 = mem[_1534]
                require mem[_1534] <= test266151307()
                require _1534 + mem[_1534] + 31 < _1534 + return_data.size
                _1598 = mem[_1534 + mem[_1534]]
                if mem[_1534 + mem[_1534]] > test266151307():
                    revert with 'NH{q', 65
                if _1534 + ceil32(return_data.size) + ceil32(ceil32(mem[_1534 + mem[_1534]])) + 1 > test266151307() or ceil32(ceil32(mem[_1534 + mem[_1534]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1534 + ceil32(return_data.size) + ceil32(ceil32(mem[_1534 + mem[_1534]])) + 1
                mem[_1534 + ceil32(return_data.size)] = _1598
                require _1582 + _1598 + 32 <= return_data.size
                s = 0
                while s < _1598:
                    mem[_1534 + ceil32(return_data.size) + s + 32] = mem[_1534 + _1582 + s + 32]
                    _1498 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1598) > _1598:
                    mem[_1534 + ceil32(return_data.size) + _1598 + 32] = 0
                require mem[_1534 + 32] == mem[_1534 + 32]
                require mem[_1534 + 64] == mem[_1534 + 64]
                if _1298 != mem[_1534 + 64]:
                    revert with 0, 'Generation artWorks must to be the same'
                if idx == -1:
                    revert with 'NH{q', 17
                _1498 = mem[96]
                idx = idx + 1
                s = mem[_1534 + 64]
                continue 
            mem[0] = msg.sender
            mem[32] = 3
            _1518 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1518] = 0
            mem[_1518 + 32] = 0
            mem[_1518 + 64] = 0
            mem[_1518 + 96] = 0
            mem[_1518 + 128] = 0
            mem[_1518 + 160] = 96
            _1694 = mem[96]
            idx = 0
            while idx < _1694:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1753 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _1753
                require ext_code.size(sub_7a26cb27Address)
                call sub_7a26cb27Address.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _1753
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                _1694 = mem[96]
                idx = idx + 1
                continue 
            mem[_1518 + 160] = 96
            mem[_1518] = sub_6f82f8fd[address(msg.sender)].field_0
            mem[_1518 + 32] = block.timestamp
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            mem[_1518 + 128] = mem[128]
            sub_6f82f8fd[address(msg.sender)].field_0++
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_0 = sub_6f82f8fd[address(msg.sender)].field_0
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_256 = block.timestamp
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_512 = mem[_1518 + 64]
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_768 = mem[_1518 + 96]
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1024 = mem[_1518 + 128]
            sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 = mem[96]
            if not mem[96]:
                idx = sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5)
                while sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5) + sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _1850 = mem[_1518 + 128]
                mem[mem[64]] = 128
                _1866 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 160
                while idx < _1866:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = msg.sender
                mem[mem[64] + 96] = sub_6f82f8fd[address(msg.sender)].field_0
                emit 0xa80dc45c: 128, _1850, msg.sender, sub_6f82f8fd[address(msg.sender)].field_0, mem[mem[64] + 128 len (32 * _1866) + 32]
            else:
                s = sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5)
                idx = 128
                while (32 * mem[96]) + 128 > idx:
                    stor[s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5) + (Mask(251, 0, (32 * mem[96]) + 31) >> 5)
                while sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 3)) + 5) + sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                _1902 = mem[_1518 + 128]
                mem[mem[64]] = 128
                _1914 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 160
                while idx < _1914:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = msg.sender
                mem[mem[64] + 96] = sub_6f82f8fd[address(msg.sender)].field_0
                emit 0xa80dc45c: 128, _1902, msg.sender, sub_6f82f8fd[address(msg.sender)].field_0, mem[mem[64] + 128 len (32 * _1914) + 32]
        stor0 = 1
    mem[0] = msg.sender
    mem[32] = 3
    idx = 0
    while idx < sub_6f82f8fd[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 3)
        if not sub_6f82f8fd[address(msg.sender)][idx].field_768:
            revert with 0, 'User has a pending process'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if ('cd', 4).length < 2:
        revert with 0, 'User need assigns some nft to merge'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1053 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_7a26cb27Address)
        staticcall sub_7a26cb27Address.0x6352211e with:
                gas gas_remaining wei
               args _1053
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1066 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1066] == mem[_1066 + 12 len 20]
        if mem[_1066 + 12 len 20] != msg.sender:
            revert with 0, 'User is not owner of all nfts sent'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    _1059 = mem[128]
    mem[mem[64]] = 0x3593b46300000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1059
    require ext_code.size(sub_7a26cb27Address)
    call sub_7a26cb27Address.0x3593b463 with:
         gas gas_remaining wei
        args _1059
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1069 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _1073 = mem[_1069]
    require mem[_1069] <= test266151307()
    require _1069 + mem[_1069] + 31 < _1069 + return_data.size
    _1075 = mem[_1069 + mem[_1069]]
    if mem[_1069 + mem[_1069]] > test266151307():
        revert with 'NH{q', 65
    if _1069 + ceil32(return_data.size) + ceil32(ceil32(mem[_1069 + mem[_1069]])) + 1 > test266151307() or ceil32(ceil32(mem[_1069 + mem[_1069]])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1069 + ceil32(return_data.size) + ceil32(ceil32(mem[_1069 + mem[_1069]])) + 1
    mem[_1069 + ceil32(return_data.size)] = _1075
    require _1073 + _1075 + 32 <= return_data.size
    mem[_1069 + ceil32(return_data.size) + 32 len ceil32(_1075)] = mem[_1069 + _1073 + 32 len ceil32(_1075)]
    if ceil32(_1075) <= _1075:
        require mem[_1069 + 32] == mem[_1069 + 32]
        _1295 = mem[_1069 + 64]
        require mem[_1069 + 64] == mem[_1069 + 64]
        _1495 = mem[96]
        idx = 1
        s = 0
        while idx < _1495:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1503 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x3593b46300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1503
            require ext_code.size(sub_7a26cb27Address)
            call sub_7a26cb27Address.0x3593b463 with:
                 gas gas_remaining wei
                args _1503
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1528 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1573 = mem[_1528]
            require mem[_1528] <= test266151307()
            require _1528 + mem[_1528] + 31 < _1528 + return_data.size
            _1592 = mem[_1528 + mem[_1528]]
            if mem[_1528 + mem[_1528]] > test266151307():
                revert with 'NH{q', 65
            if _1528 + ceil32(return_data.size) + ceil32(ceil32(mem[_1528 + mem[_1528]])) + 1 > test266151307() or ceil32(ceil32(mem[_1528 + mem[_1528]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1528 + ceil32(return_data.size) + ceil32(ceil32(mem[_1528 + mem[_1528]])) + 1
            mem[_1528 + ceil32(return_data.size)] = _1592
            require _1573 + _1592 + 32 <= return_data.size
            s = 0
            while s < _1592:
                mem[_1528 + ceil32(return_data.size) + s + 32] = mem[_1528 + _1573 + s + 32]
                _1495 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1592) > _1592:
                mem[_1528 + ceil32(return_data.size) + _1592 + 32] = 0
            require mem[_1528 + 32] == mem[_1528 + 32]
            require mem[_1528 + 64] == mem[_1528 + 64]
            if _1295 != mem[_1528 + 64]:
                revert with 0, 'Generation artWorks must to be the same'
            if idx == -1:
                revert with 'NH{q', 17
            _1495 = mem[96]
            idx = idx + 1
            s = mem[_1528 + 64]
            continue 
        mem[0] = msg.sender
        mem[32] = 3
        _1515 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1515] = 0
        mem[_1515 + 32] = 0
        mem[_1515 + 64] = 0
        mem[_1515 + 96] = 0
        mem[_1515 + 128] = 0
        mem[_1515 + 160] = 96
        _1691 = mem[96]
        idx = 0
        while idx < _1691:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1747 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _1747
            require ext_code.size(sub_7a26cb27Address)
            call sub_7a26cb27Address.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _1747
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            _1691 = mem[96]
            idx = idx + 1
            continue 
        mem[_1515 + 160] = 96
        mem[_1515] = sub_6f82f8fd[address(msg.sender)].field_0
        mem[_1515 + 32] = block.timestamp
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[_1515 + 128] = mem[128]
        sub_6f82f8fd[address(msg.sender)].field_0++
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_0 = sub_6f82f8fd[address(msg.sender)].field_0
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_256 = block.timestamp
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_512 = mem[_1515 + 64]
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_768 = mem[_1515 + 96]
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1024 = mem[_1515 + 128]
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 = mem[96]
        if not mem[96]:
            idx = 0
            while sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 > idx:
                stor[idx + sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6f82f8fd', 3)) + 5)].field_0 = 0
                idx = idx + 1
                continue 
            _1847 = mem[_1515 + 128]
            mem[mem[64]] = 128
            _1863 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _1863] = mem[128 len 32 * _1863]
            var174001 = _1863
            mem[mem[64] + 64] = msg.sender
            mem[mem[64] + 96] = sub_6f82f8fd[address(msg.sender)].field_0
            emit 0xa80dc45c: 128, _1847, msg.sender, sub_6f82f8fd[address(msg.sender)].field_0, mem[mem[64] + 128 len (32 * _1863) + 32]
        else:
            s = 0
            idx = 128
            while (32 * mem[96]) + 128 > idx:
                stor[s + sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6f82f8fd', 3)) + 5)].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
            while sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 > idx:
                stor[idx + sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6f82f8fd', 3)) + 5)].field_0 = 0
                idx = idx + 1
                continue 
            _1899 = mem[_1515 + 128]
            mem[mem[64]] = 128
            _1911 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _1911] = mem[128 len 32 * _1911]
            var178001 = _1911
            mem[mem[64] + 64] = msg.sender
            mem[mem[64] + 96] = sub_6f82f8fd[address(msg.sender)].field_0
            emit 0xa80dc45c: 128, _1899, msg.sender, sub_6f82f8fd[address(msg.sender)].field_0, mem[mem[64] + 128 len (32 * _1911) + 32]
    else:
        mem[_1069 + ceil32(return_data.size) + _1075 + 32] = 0
        require mem[_1069 + 32] == mem[_1069 + 32]
        _1297 = mem[_1069 + 64]
        require mem[_1069 + 64] == mem[_1069 + 64]
        _1496 = mem[96]
        idx = 1
        s = 0
        while idx < _1496:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1505 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x3593b46300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1505
            require ext_code.size(sub_7a26cb27Address)
            call sub_7a26cb27Address.0x3593b463 with:
                 gas gas_remaining wei
                args _1505
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1530 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1576 = mem[_1530]
            require mem[_1530] <= test266151307()
            require _1530 + mem[_1530] + 31 < _1530 + return_data.size
            _1594 = mem[_1530 + mem[_1530]]
            if mem[_1530 + mem[_1530]] > test266151307():
                revert with 'NH{q', 65
            if _1530 + ceil32(return_data.size) + ceil32(ceil32(mem[_1530 + mem[_1530]])) + 1 > test266151307() or ceil32(ceil32(mem[_1530 + mem[_1530]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1530 + ceil32(return_data.size) + ceil32(ceil32(mem[_1530 + mem[_1530]])) + 1
            mem[_1530 + ceil32(return_data.size)] = _1594
            require _1576 + _1594 + 32 <= return_data.size
            s = 0
            while s < _1594:
                mem[_1530 + ceil32(return_data.size) + s + 32] = mem[_1530 + _1576 + s + 32]
                _1496 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1594) > _1594:
                mem[_1530 + ceil32(return_data.size) + _1594 + 32] = 0
            require mem[_1530 + 32] == mem[_1530 + 32]
            require mem[_1530 + 64] == mem[_1530 + 64]
            if _1297 != mem[_1530 + 64]:
                revert with 0, 'Generation artWorks must to be the same'
            if idx == -1:
                revert with 'NH{q', 17
            _1496 = mem[96]
            idx = idx + 1
            s = mem[_1530 + 64]
            continue 
        mem[0] = msg.sender
        mem[32] = 3
        _1516 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1516] = 0
        mem[_1516 + 32] = 0
        mem[_1516 + 64] = 0
        mem[_1516 + 96] = 0
        mem[_1516 + 128] = 0
        mem[_1516 + 160] = 96
        _1692 = mem[96]
        idx = 0
        while idx < _1692:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1749 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _1749
            require ext_code.size(sub_7a26cb27Address)
            call sub_7a26cb27Address.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _1749
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            _1692 = mem[96]
            idx = idx + 1
            continue 
        mem[_1516 + 160] = 96
        mem[_1516] = sub_6f82f8fd[address(msg.sender)].field_0
        mem[_1516 + 32] = block.timestamp
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[_1516 + 128] = mem[128]
        sub_6f82f8fd[address(msg.sender)].field_0++
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_0 = sub_6f82f8fd[address(msg.sender)].field_0
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_256 = block.timestamp
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_512 = mem[_1516 + 64]
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_768 = mem[_1516 + 96]
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1024 = mem[_1516 + 128]
        sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 = mem[96]
        if not mem[96]:
            idx = 0
            while sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 > idx:
                stor[idx + sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6f82f8fd', 3)) + 5)].field_0 = 0
                idx = idx + 1
                continue 
            _1848 = mem[_1516 + 128]
            mem[mem[64]] = 128
            _1864 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _1864] = mem[128 len 32 * _1864]
            mem[mem[64] + 64] = msg.sender
            mem[mem[64] + 96] = sub_6f82f8fd[address(msg.sender)].field_0
            emit 0xa80dc45c: 128, _1848, msg.sender, sub_6f82f8fd[address(msg.sender)].field_0, mem[mem[64] + 128 len (32 * _1864) + 32]
        else:
            s = 0
            idx = 128
            while (32 * mem[96]) + 128 > idx:
                stor[s + sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6f82f8fd', 3)) + 5)].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
            while sub_6f82f8fd[address(msg.sender)][sub_6f82f8fd[address(msg.sender)].field_0].field_1280 > idx:
                stor[idx + sha3((6 * sub_6f82f8fd[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_6f82f8fd', 3)) + 5)].field_0 = 0
                idx = idx + 1
                continue 
            _1900 = mem[_1516 + 128]
            mem[mem[64]] = 128
            _1912 = mem[96]
            mem[mem[64] + 128] = mem[96]
            mem[mem[64] + 160 len 32 * _1912] = mem[128 len 32 * _1912]
            var179001 = _1912
            var179002 = (32 * _1912) + 128
            var179007 = mem[64] + (32 * _1912) + 160
            mem[mem[64] + 64] = msg.sender
            mem[mem[64] + 96] = sub_6f82f8fd[address(msg.sender)].field_0
            emit 0xa80dc45c: 128, _1900, msg.sender, sub_6f82f8fd[address(msg.sender)].field_0, mem[mem[64] + 128 len (32 * _1912) + 32]
    stor0 = 1
}



}
