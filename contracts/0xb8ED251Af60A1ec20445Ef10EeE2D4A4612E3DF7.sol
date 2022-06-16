contract main {




// =====================  Runtime code  =====================


address owner;
address sub_445ea721Address;
address gameAddress;
address sub_b1494df2Address;

function sub_445ea721(?) payable {
    return sub_445ea721Address
}

function owner() payable {
    return owner
}

function sub_b1494df2(?) payable {
    return sub_b1494df2Address
}

function game() payable {
    return gameAddress
}

function _fallback() payable {
    revert
}

function setAddrs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_445ea721Address = arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(gameAddress)
    call gameAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_928e2e70(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (128 * ('cd', 4).length) + 36:
        require calldata.size - idx >= 128
        _33 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require cd[idx] == cd[idx]
        mem[_33] = cd[idx]
        require cd[(idx + 32)] == bool(cd[(idx + 32)])
        mem[_33 + 32] = cd[(idx + 32)]
        require cd[(idx + 64)] == address(cd[(idx + 64)])
        mem[_33 + 64] = cd[(idx + 64)]
        require cd[(idx + 96)] == cd[(idx + 96)]
        mem[_33 + 96] = cd[(idx + 96)]
        mem[s] = _33
        idx = idx + 128
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _64 = mem[96]
    idx = 0
    while idx < _64:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _66 = mem[(32 * idx) + 128]
        _67 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128]]
        staticcall gameAddress.0x6352211e with:
                gas gas_remaining wei
               args _67
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_70] == mem[_70 + 12 len 20]
        if mem[_70 + 12 len 20] == sub_b1494df2Address:
            _72 = mem[_66]
            _73 = mem[_66 + 32]
            _74 = mem[_66 + 64]
            _75 = mem[_66 + 96]
            mem[mem[64]] = 0xd512853500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _72
            mem[mem[64] + 36] = bool(_73)
            mem[mem[64] + 68] = address(_74)
            mem[mem[64] + 100] = _75
            require ext_code.size(sub_445ea721Address)
            call sub_445ea721Address.0xd5128535 with:
                 gas gas_remaining wei
                args _72, bool(_73), address(_74), _75
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[_66 + 64]
            _79 = mem[_66]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_b1494df2Address
            mem[mem[64] + 36] = address(_78)
            mem[mem[64] + 68] = _79
            require ext_code.size(gameAddress)
            call gameAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_b1494df2Address, address(_78), _79
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[_66 + 64]
            _83 = mem[_66]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_82)
            mem[mem[64] + 36] = sub_445ea721Address
            mem[mem[64] + 68] = _83
            require ext_code.size(gameAddress)
            call gameAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(_82), sub_445ea721Address, _83
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[_66 + 64]
            _88 = mem[_66 + 32]
            _89 = mem[_66 + 96]
            mem[mem[64]] = mem[_66]
            mem[mem[64] + 32] = address(_87)
            mem[mem[64] + 64] = bool(_88)
            mem[mem[64] + 96] = _89
            emit 0x522fbb82: mem[mem[64]], address(_87), bool(_88), _89
        if idx == -1:
            revert with 'NH{q', 17
        _64 = mem[96]
        idx = idx + 1
        continue 
}



}
