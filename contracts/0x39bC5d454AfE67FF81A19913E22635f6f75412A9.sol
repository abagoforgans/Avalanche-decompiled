contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of struct auctions;
address sub_2e3fe7d4Address;
address communityAddress;

function sub_2e3fe7d4(?) payable {
    return sub_2e3fe7d4Address
}

function auctions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < auctions.length
    return auctions[arg1].field_0
}

function owner() payable {
    return owner
}

function community() payable {
    return communityAddress
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

function setSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
    emit SignerChanged(arg1);
}

function sub_c5ee9636(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    communityAddress = address(arg1)
    emit 0xd7d8a202: communityAddress
}

function sub_49ae73d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e3fe7d4Address = address(arg1)
    emit 0x1f630f16: sub_2e3fe7d4Address
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

function getAuctions() payable {
    mem[64] = (32 * auctions.length) + 128
    mem[96] = auctions.length
    if not auctions.length:
        mem[(32 * auctions.length) + 128] = 32
        mem[(32 * auctions.length) + 160] = auctions.length
        idx = 0
        s = 128
        t = (32 * auctions.length) + 192
        while idx < auctions.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * auctions.length) + 128
           len (96 * auctions.length) + 64
    mem[128] = address(auctions.field_0)
    idx = 128
    s = 0
    while (32 * auctions.length) + 96 > idx:
        mem[idx + 32] = auctions[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * auctions.length) + 128] = 32
    mem[(32 * auctions.length) + 160] = auctions.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < auctions.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * auctions.length) + -mem[64] + 192
}

function sub_baeff08d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 320:
        revert with 0, 'Invalid size'
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    _7 = mem[256]
    mem[ceil32(ceil32(arg1.length)) + 129] = address(mem[128])
    mem[ceil32(ceil32(arg1.length)) + 149] = _4
    mem[ceil32(ceil32(arg1.length)) + 181] = _5
    mem[ceil32(ceil32(arg1.length)) + 213] = _6
    mem[ceil32(ceil32(arg1.length)) + 245] = _7
    mem[ceil32(ceil32(arg1.length)) + 97] = 148
    if arg1.length < 289:
        revert with 0, 'slice_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 278 len 96] = mem[321 len 96]
    if mem[ceil32(ceil32(arg1.length)) + 341] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
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
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg4.length != 320:
        revert with 0, 'Invalid size'
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    _7 = mem[256]
    mem[ceil32(ceil32(arg4.length)) + 129] = address(mem[128])
    mem[ceil32(ceil32(arg4.length)) + 149] = _4
    mem[ceil32(ceil32(arg4.length)) + 181] = _5
    mem[ceil32(ceil32(arg4.length)) + 213] = _6
    mem[ceil32(ceil32(arg4.length)) + 245] = _7
    mem[ceil32(ceil32(arg4.length)) + 97] = 148
    if arg4.length < 289:
        revert with 0, 'slice_outOfBounds'
    mem[ceil32(ceil32(arg4.length)) + 278 len 96] = mem[321 len 96]
    if mem[ceil32(ceil32(arg4.length)) + 341] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}



}
