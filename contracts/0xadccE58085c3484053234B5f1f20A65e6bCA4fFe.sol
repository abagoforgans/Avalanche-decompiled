contract main {




// =====================  Runtime code  =====================


address owner;
address addyAddress;
address stor2;

function addy() payable {
    return addyAddress
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function dropTokens(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg2
    while idx <= arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require mem[(32 * idx) + 140 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[floor32(arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        mem[floor32(arg1.length) + 129] = idx
        emit 0xa07dc753: mem[floor32(arg1.length) + 97], idx
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _42 = mem[(32 * idx) + 128]
        mem[floor32(arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[floor32(arg1.length) + 101] = this.address
        mem[floor32(arg1.length) + 133] = address(_42)
        mem[floor32(arg1.length) + 165] = idx
        require ext_code.size(stor2)
        call stor2.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), address(_42), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}



}
