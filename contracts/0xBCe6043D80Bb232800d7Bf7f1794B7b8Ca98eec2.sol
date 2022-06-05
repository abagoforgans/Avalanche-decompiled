contract main {




// =====================  Runtime code  =====================


address owner;
address nftAddress;

function nftAddress() payable {
    return nftAddress
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function deposit(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[96] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        mem[196] = 128
        mem[228] = 0
        require ext_code.size(nftAddress)
        call nftAddress.0xb88d4fde with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[96] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        mem[196] = 128
        mem[228] = 0
        require ext_code.size(nftAddress)
        call nftAddress.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    idx = 0
    s = arg2
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[floor32(arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        mem[floor32(arg1.length) + 129] = idx
        emit 0xa07dc753: mem[floor32(arg1.length) + 97], idx
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require mem[(32 * idx) + 140 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _42 = mem[(32 * idx) + 128]
        mem[floor32(arg1.length) + 97] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
        mem[floor32(arg1.length) + 101] = this.address
        mem[floor32(arg1.length) + 133] = address(_42)
        mem[floor32(arg1.length) + 165] = s
        mem[floor32(arg1.length) + 197] = 128
        mem[floor32(arg1.length) + 229] = 0
        require ext_code.size(nftAddress)
        call nftAddress.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), address(_42), s, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return 1
}



}
