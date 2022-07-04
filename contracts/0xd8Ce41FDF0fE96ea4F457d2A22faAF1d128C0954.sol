contract main {




// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address owner;
mapping of struct sub_60f5dfda;
mapping of struct sub_ab882567;
mapping of struct sub_128161a8;

function sub_128161a8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_128161a8[address(arg1)].field_0, sub_128161a8[address(arg1)].field_256
}

function paused() payable {
    return bool(stor1)
}

function sub_60f5dfda(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_60f5dfda[address(arg1)].field_768
}

function sub_85dc3013(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_60f5dfda[address(arg1)].field_512
}

function owner() payable {
    return owner
}

function sub_a53a225f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_128161a8[arg1].field_0, sub_128161a8[arg1].field_256
}

function sub_ab882567(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_ab882567[arg1][arg2].field_0, sub_ab882567[arg1][arg2].field_256
}

function tokensInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_60f5dfda[arg1].field_0, 
           bool(sub_60f5dfda[arg1].field_256),
           sub_60f5dfda[arg1].field_512,
           sub_60f5dfda[arg1].field_768,
           sub_60f5dfda[arg1].field_1024,
           sub_60f5dfda[arg1].field_1280
}

function sub_c0e4d627(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_ab882567[arg1][address(arg2)].field_0, sub_ab882567[arg1][address(arg2)].field_256
}

function _fallback() payable {
    revert
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function renounceOwnership() payable {
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_fa5e2abc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_60f5dfda[address(arg1)].field_0, 
           bool(sub_60f5dfda[address(arg1)].field_256),
           sub_60f5dfda[address(arg1)].field_512,
           sub_60f5dfda[address(arg1)].field_768,
           sub_128161a8[address(arg1)].field_0,
           sub_128161a8[address(arg1)].field_256
}

function pause() payable {
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if stor1:
        revert with 0, 'Pausable: paused'
    stor1 = 1
    if stor0 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() payable {
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not stor1:
        revert with 0, 'Pausable: not paused'
    stor1 = 0
    if stor0 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function removeSupportedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Token address cannot be 0'
    if not sub_60f5dfda[address(arg1)].field_256:
        revert with 0, 'Token not supported'
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    sub_60f5dfda[address(arg1)].field_256 = 0
}

function setTokenTransferOverhead(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Token address cannot be 0'
    if not sub_60f5dfda[address(arg1)].field_256:
        revert with 0, 'Token not supported'
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    sub_60f5dfda[address(arg1)].field_0 = arg2
}

function sub_b5ec9999(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if stor1:
        revert with 0, 'Pausable: paused'
    if not cd[36]:
        revert with 0, 'Equilibrium Fee cannot be 0'
    if not cd[68]:
        revert with 0, 'Max Fee cannot be 0'
    sub_60f5dfda[address(cd[4])].field_512 = cd[36]
    sub_60f5dfda[address(cd[4])].field_768 = cd[68]
    emit FeeChanged(address(cd[4]), cd[36], cd[68]);
}

function updateTokenCap(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Token address cannot be 0'
    if not sub_60f5dfda[address(arg1)].field_256:
        revert with 0, 'Token not supported'
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= arg2:
        revert with 0, 'maxCapLimit > minCapLimit'
    sub_128161a8[address(arg1)].field_0 = arg2
    sub_128161a8[address(arg1)].field_256 = arg3
}

function sub_4fe2cf90(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'Token address cannot be 0'
    if cd[68] <= cd[36]:
        revert with 0, 'maxCapLimit > minCapLimit'
    sub_60f5dfda[address(cd[4])].field_256 = 1
    sub_128161a8[address(cd[4])].field_0 = cd[36]
    sub_128161a8[address(cd[4])].field_256 = cd[68]
    sub_60f5dfda[address(cd[4])].field_1024 = cd[36]
    sub_60f5dfda[address(cd[4])].field_1280 = sub_128161a8[address(cd[4])].field_256
    sub_60f5dfda[address(cd[4])].field_512 = cd[100]
    sub_60f5dfda[address(cd[4])].field_768 = cd[132]
    sub_60f5dfda[address(cd[4])].field_0 = cd[164]
}

function sub_2feb4d54(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 192 < 160 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (64 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require calldata.size - s >= 64
        _184 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 64
        mem[_184] = cd[s]
        mem[_184 + 32] = cd[(s + 32)]
        mem[t] = _184
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if stor0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, ' ERR_ARRAY_LENGTH_MISMATCH'
        if mem[(32 * ('cd', 4).length) + 128] != mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
            revert with 0, ' ERR_ARRAY_LENGTH_MISMATCH'
        idx = 0
        while idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _246 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 3)
            sub_ab882567[mem[(32 * idx) + 128]][mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]].field_0 = _246
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _264 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 3)
            sub_ab882567[mem[(32 * idx) + 128]][mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]].field_256 = _264
            idx = idx + 1
            continue 
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
        if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, ' ERR_ARRAY_LENGTH_MISMATCH'
        if mem[(32 * ('cd', 4).length) + 128] != mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
            revert with 0, ' ERR_ARRAY_LENGTH_MISMATCH'
        idx = 0
        while idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _249 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 3)
            sub_ab882567[mem[(32 * idx) + 128]][mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]].field_0 = _249
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _267 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 3)
            sub_ab882567[mem[(32 * idx) + 128]][mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]].field_256 = _267
            idx = idx + 1
            continue 
}



}
