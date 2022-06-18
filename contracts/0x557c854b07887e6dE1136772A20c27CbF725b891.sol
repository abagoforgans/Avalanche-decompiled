contract main {




// =====================  Runtime code  =====================


address owner;
address sub_6d2fac04Address;
address stor2;

function sub_6d2fac04(?) payable {
    return sub_6d2fac04Address
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

function sub_59bb3715(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startIndex needs to be lower than endIndex'
    staticcall stor2.totalSupply() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'endIndex is higher than NFT totalSupply'
    idx = arg1
    while idx <= arg2:
        mem[mem[64] + 4] = idx
        staticcall stor2.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22 = mem[_21]
        require mem[_21] == mem[_21 + 12 len 20]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_22)
        mem[mem[64] + 68] = arg3
        call sub_6d2fac04Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(_22), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
