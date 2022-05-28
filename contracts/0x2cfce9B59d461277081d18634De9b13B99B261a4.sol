contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_f9dab964Address;
address sub_b0eae70dAddress;
address sub_f3d23b73Address;
address sub_5073b1a9Address;
uint16 sub_520b1513; offset 160
address newGameAddress;

function sub_5073b1a9(?) payable {
    return sub_5073b1a9Address
}

function sub_520b1513(?) payable {
    return sub_520b1513
}

function paused() payable {
    return bool(stor0)
}

function newGame() payable {
    return newGameAddress
}

function owner() payable {
    return owner
}

function sub_b0eae70d(?) payable {
    return sub_b0eae70dAddress
}

function sub_f3d23b73(?) payable {
    return sub_f3d23b73Address
}

function sub_f9dab964(?) payable {
    return sub_f9dab964Address
}

function _fallback() payable {
    revert
}

function sub_cccd1df4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_520b1513 = uint16(arg1)
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

function sub_e3a032a7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f9dab964Address = address(arg2)
    newGameAddress = address(arg1)
    sub_f3d23b73Address = address(arg3)
    sub_5073b1a9Address = address(arg5)
    sub_b0eae70dAddress = address(arg4)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(newGameAddress)
    call newGameAddress.0x23b872dd with:
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
        _28 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require cd[idx] == cd[idx]
        mem[_28] = cd[idx]
        require cd[(idx + 32)] == bool(cd[(idx + 32)])
        mem[_28 + 32] = cd[(idx + 32)]
        require cd[(idx + 64)] == address(cd[(idx + 64)])
        mem[_28 + 64] = cd[(idx + 64)]
        require cd[(idx + 96)] == cd[(idx + 96)]
        mem[_28 + 96] = cd[(idx + 96)]
        mem[s] = _28
        idx = idx + 128
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _54 = mem[96]
    idx = 0
    while idx < _54:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _56 = mem[(32 * idx) + 128]
        _57 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128]]
        staticcall newGameAddress.0x6352211e with:
                gas gas_remaining wei
               args _57
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_60] == mem[_60 + 12 len 20]
        if mem[_60 + 12 len 20] == sub_b0eae70dAddress:
            _62 = mem[_56]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_b0eae70dAddress
            mem[mem[64] + 36] = sub_5073b1a9Address
            mem[mem[64] + 68] = _62
            require ext_code.size(newGameAddress)
            call newGameAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_b0eae70dAddress, sub_5073b1a9Address, _62
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[_56]
            _66 = mem[_56 + 32]
            _67 = mem[_56 + 64]
            _68 = mem[_56 + 96]
            mem[mem[64]] = 0xd512853500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _65
            mem[mem[64] + 36] = bool(_66)
            mem[mem[64] + 68] = address(_67)
            mem[mem[64] + 100] = _68
            require ext_code.size(sub_5073b1a9Address)
            call sub_5073b1a9Address.0xd5128535 with:
                 gas gas_remaining wei
                args _65, bool(_66), address(_67), _68
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[_56 + 64]
            _73 = mem[_56 + 32]
            _74 = mem[_56 + 96]
            mem[mem[64]] = mem[_56]
            mem[mem[64] + 32] = address(_72)
            mem[mem[64] + 64] = bool(_73)
            mem[mem[64] + 96] = _74
            emit 0x522fbb82: mem[mem[64]], address(_72), bool(_73), _74
        if idx == -1:
            revert with 'NH{q', 17
        _54 = mem[96]
        idx = idx + 1
        continue 
}



}
