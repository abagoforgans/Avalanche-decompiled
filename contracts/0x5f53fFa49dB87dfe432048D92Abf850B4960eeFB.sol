contract main {




// =====================  Runtime code  =====================


const MAX_NFT_SUPPLY = 6886


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;
array of uint256 stor11;
uint256 stor12;
uint8 paused;
uint256 merkleRoot;
mapping of uint256 sub_e63ec947;
mapping of uint8 stor16;
uint256 whitelistAllocation;
uint8 sub_71591f55;
uint256 mintPrice;
uint8 stor20;
uint256 startTime;
uint256 pendingCount;
array of uint256 stor23;
array of uint256 stor24;
uint256 stor25;
array of uint256 stor6324;
array of uint256 stor6624;
address adminAddress;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ownerMinted() {
    return bool(stor20)
}

function totalSupply() {
    return stor23.length
}

function sub_21328f9e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor16[arg1])
}

function merkleRoot() {
    return merkleRoot
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function whitelistAllocation() {
    return whitelistAllocation
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function mintPrice() {
    return mintPrice
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_71591f55(?) {
    return bool(sub_71591f55)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_e63ec947(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e63ec947[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function pendingCount() {
    return pendingCount
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5b124ac5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    whitelistAllocation = arg1
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
}

function setMerkleRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    merkleRoot = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function pauseMint() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function sub_1b564f12(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_71591f55 = uint8(bool(arg1))
}

function unpauseMint() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Price can't be zero'
    mintPrice = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call adminAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send ether'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_7f68c5d1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 211328
    s = 25
    while 422496 > idx + 32:
        mem[idx + 32] = stor1[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    return stor24.length, stor25, mem[211360 len 211136]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_509e8d81(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if pendingCount != 6300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '300 should be minted for giveaway'
    idx = 0
    while idx < 286:
        if 6601 > !idx:
            revert with 0, 17
        if 6300 > !idx:
            revert with 0, 17
        if idx + 6300 >= 6600:
            revert with 0, 50
        stor18B4[idx] = idx + 6601
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if pendingCount > -287:
        revert with 0, 17
    pendingCount += 286
    stor20 = 1
}

function getMintedIds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor19E0.length:
        mem[128] = stor19E0
        idx = 128
        s = sha3(6624)
        while (32 * stor19E0.length) + 96 > idx:
            mem[idx + 32] = stor1[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor19E0.length, data=mem[128 len 32 * stor19E0.length])
    mem[(32 * stor19E0.length) + 128] = 32
    mem[(32 * stor19E0.length) + 160] = stor19E0.length
    mem[(32 * stor19E0.length) + 192 len 32 * stor19E0.length] = mem[128 len 32 * stor19E0.length]
    return memory
      from (32 * stor19E0.length) + 128
       len (96 * stor19E0.length) + 64
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function verify(bytes32 arg1, bytes32 arg2, bytes32[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg3.length) + 97
    mem[96] = arg3.length
    require (32 * arg3.length) + arg3 + 36 <= calldata.size
    s = 128
    idx = arg3 + 36
    while idx < (32 * arg3.length) + arg3 + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    s = arg2
    while idx < arg3.length:
        if idx >= mem[96]:
            revert with 0, 50
        _30 = mem[(32 * idx) + 128]
        if s > mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _33 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_33 + 32 len mem[_33]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _30
        _37 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(mem[_37 + 32 len mem[_37]])
        continue 
    return (arg1 == s)
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor2[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
        stor7[arg1] = 0
        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function ownerMint(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor20:
        revert with 0, 'Already minted'
    if not arg1:
        revert with 0, 'Invalid recipient'
    idx = 0
    while idx < 20:
        if stor23.length >= 6886:
            revert with 0, 'GemGame: max supply reached'
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = pendingCount
        _74 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        _76 = sha3(mem[_74 + 32 len mem[_74]])
        if not pendingCount:
            revert with 0, 18
        if sha3(mem[_74 + 32 len mem[_74]]) % pendingCount >= 6600:
            revert with 0, 50
        if not stor24[sha3(mem[_74 + 32 len mem[_74]]) % stor22]:
            if 1 > !(sha3(mem[_74 + 32 len mem[_74]]) % pendingCount):
                revert with 0, 17
            if (sha3(mem[_74 + 32 len mem[_74]]) % pendingCount) + 1 < 1:
                revert with 0, 17
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            mem[0] = sha3(mem[_74 + 32 len mem[_74]]) % pendingCount
            if ownerOf[mem[0]]:
                revert with 0, 'ERC721: token already minted'
            stor9[_76 % stor22] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = _76 % pendingCount
            if arg1:
                if arg1:
                    if not arg1:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = _76 % pendingCount
                    stor7[_76 % stor22] = balanceOf[address(arg1)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[_76 % stor22] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[_76 % stor22]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[_76 % stor22]
                stor9[_76 % stor22] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[32] = 2
            ownerOf[_76 % stor22] = arg1
            emit Transfer(0, arg1, _76 % pendingCount);
            if (_76 % pendingCount) + 1 < 1:
                revert with 0, 17
            stor19E0.length++
            mem[0] = 6624
            stor19E0[stor19E0.length] = _76 % pendingCount
            if pendingCount < 1:
                revert with 0, 17
            if pendingCount - 1 >= 6600:
                revert with 0, 50
            if not stor23[stor22]:
                if 1 > !(pendingCount - 1):
                    revert with 0, 17
                if _76 % pendingCount >= 6600:
                    revert with 0, 50
                stor24[_76 % stor22] = pendingCount
            else:
                if pendingCount - 1 >= 6600:
                    revert with 0, 50
                if _76 % pendingCount >= 6600:
                    revert with 0, 50
                stor24[_76 % stor22] = stor23[stor22]
            if not pendingCount:
                revert with 0, 17
            pendingCount--
            if stor23.length == -1:
                revert with 0, 17
            stor23.length++
            if (_76 % pendingCount) + 1 < 1:
                revert with 0, 17
        else:
            if sha3(mem[_74 + 32 len mem[_74]]) % pendingCount >= 6600:
                revert with 0, 50
            if stor24[sha3(mem[_74 + 32 len mem[_74]]) % stor22] < 1:
                revert with 0, 17
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            mem[0] = stor24[sha3(mem[_74 + 32 len mem[_74]]) % stor22] - 1
            if ownerOf[mem[0]]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor24[_76 % stor22] - 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor24[_76 % stor22] - 1
            if arg1:
                if arg1:
                    if not arg1:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor24[_76 % stor22] - 1
                    stor7[stor24[_76 % stor22] - 1] = balanceOf[address(arg1)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor24[_76 % stor22] - 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor24[_76 % stor22] - 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor24[_76 % stor22] - 1]
                stor9[stor24[_76 % stor22] - 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[32] = 2
            ownerOf[stor24[_76 % stor22] - 1] = arg1
            emit Transfer(0, arg1, stor24[_76 % stor22] - 1);
            if stor24[_76 % stor22] < 1:
                revert with 0, 17
            stor19E0.length++
            mem[0] = 6624
            stor19E0[stor19E0.length] = stor24[_76 % stor22] - 1
            if pendingCount < 1:
                revert with 0, 17
            if pendingCount - 1 >= 6600:
                revert with 0, 50
            if not stor23[stor22]:
                if 1 > !(pendingCount - 1):
                    revert with 0, 17
                if _76 % pendingCount >= 6600:
                    revert with 0, 50
                stor24[_76 % stor22] = pendingCount
            else:
                if pendingCount - 1 >= 6600:
                    revert with 0, 50
                if _76 % pendingCount >= 6600:
                    revert with 0, 50
                stor24[_76 % stor22] = stor23[stor22]
            if not pendingCount:
                revert with 0, 17
            pendingCount--
            if stor23.length == -1:
                revert with 0, 17
            stor23.length++
            if stor24[_76 % stor22] < 1:
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ceil32(arg1.length) <= arg1.length:
        _166 = sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 161] = Mask(248, 8, stor11.length)
                if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len uint255(stor11.length) * 0.5]) == _166:
                    revert with 0, 'ERC721Metadata: existed baseURI'
            else:
                if bool(stor11.length) != 1:
                    if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len -arg1.length + -ceil32(ceil32(arg1.length)) - 161]) == _166:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('ERC721Metadata: existed baseURI')
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length) * 0.5:
                        mem[idx + arg1.length + ceil32(ceil32(arg1.length)) + 161] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len uint255(stor11.length) * 0.5]) == _166:
                        revert with 0, 'ERC721Metadata: existed baseURI'
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 161] = Mask(248, 8, stor11.length)
                if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len stor11.length.field_1]) == _166:
                    revert with 0, 'ERC721Metadata: existed baseURI'
            else:
                if bool(stor11.length) != 1:
                    if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len -arg1.length + -ceil32(ceil32(arg1.length)) - 161]) == _166:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('ERC721Metadata: existed baseURI')
                else:
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1:
                        mem[idx + arg1.length + ceil32(ceil32(arg1.length)) + 161] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len stor11.length.field_1]) == _166:
                        revert with 0, 'ERC721Metadata: existed baseURI'
    else:
        _170 = sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 161] = Mask(248, 8, stor11.length)
                if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len uint255(stor11.length) * 0.5]) == _170:
                    revert with 0, 'ERC721Metadata: existed baseURI'
            else:
                if bool(stor11.length) != 1:
                    if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len -arg1.length + -ceil32(ceil32(arg1.length)) - 161]) == _170:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('ERC721Metadata: existed baseURI')
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length) * 0.5:
                        mem[idx + arg1.length + ceil32(ceil32(arg1.length)) + 161] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len uint255(stor11.length) * 0.5]) == _170:
                        revert with 0, 'ERC721Metadata: existed baseURI'
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 161] = Mask(248, 8, stor11.length)
                if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len stor11.length.field_1]) == _170:
                    revert with 0, 'ERC721Metadata: existed baseURI'
            else:
                if bool(stor11.length) != 1:
                    if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len -arg1.length + -ceil32(ceil32(arg1.length)) - 161]) == _170:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('ERC721Metadata: existed baseURI')
                else:
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1:
                        mem[idx + arg1.length + ceil32(ceil32(arg1.length)) + 161] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[arg1.length + ceil32(ceil32(arg1.length)) + 161 len stor11.length.field_1]) == _170:
                        revert with 0, 'ERC721Metadata: existed baseURI'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while (uint255(stor11.length) * 0.5) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function publicMint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not startTime:
        revert with 0, 'Start time not set'
    if block.timestamp < startTime:
        revert with 0, 'GemGame: Mint not started'
    if not stor20:
        revert with 0, 'Owner mint not done'
    if pendingCount <= 0:
        revert with 0, 'GemGame: All minted'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GemGame: numberOfNfts cannot be 0'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GemGame: You may not buy more than 20 NFTs at once'
    if stor23.length > !arg1:
        revert with 0, 17
    if stor23.length + arg1 > 6886:
        revert with 0, 'GemGame: not enough remaining'
    if mintPrice and arg1 > -1 / mintPrice:
        revert with 0, 17
    if mintPrice * arg1 != msg.value:
        revert with 0, 'GemGame: invalid ether value'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor12 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor12 = 2
    idx = 0
    while idx < arg1:
        if stor23.length >= 6886:
            revert with 0, 'GemGame: max supply reached'
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = pendingCount
        _88 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        _90 = sha3(mem[_88 + 32 len mem[_88]])
        if not pendingCount:
            revert with 0, 18
        if sha3(mem[_88 + 32 len mem[_88]]) % pendingCount >= 6600:
            revert with 0, 50
        if not stor24[sha3(mem[_88 + 32 len mem[_88]]) % stor22]:
            if 1 > !(sha3(mem[_88 + 32 len mem[_88]]) % pendingCount):
                revert with 0, 17
            if (sha3(mem[_88 + 32 len mem[_88]]) % pendingCount) + 1 < 1:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            mem[0] = sha3(mem[_88 + 32 len mem[_88]]) % pendingCount
            if ownerOf[mem[0]]:
                revert with 0, 'ERC721: token already minted'
            stor9[_90 % stor22] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = _90 % pendingCount
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = _90 % pendingCount
                    stor7[_90 % stor22] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[_90 % stor22] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[_90 % stor22]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[_90 % stor22]
                stor9[_90 % stor22] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[32] = 2
            ownerOf[_90 % stor22] = msg.sender
            emit Transfer(0, msg.sender, _90 % pendingCount);
            if (_90 % pendingCount) + 1 < 1:
                revert with 0, 17
            stor19E0.length++
            mem[0] = 6624
            stor19E0[stor19E0.length] = _90 % pendingCount
            if pendingCount < 1:
                revert with 0, 17
            if pendingCount - 1 >= 6600:
                revert with 0, 50
            if not stor23[stor22]:
                if 1 > !(pendingCount - 1):
                    revert with 0, 17
                if _90 % pendingCount >= 6600:
                    revert with 0, 50
                stor24[_90 % stor22] = pendingCount
            else:
                if pendingCount - 1 >= 6600:
                    revert with 0, 50
                if _90 % pendingCount >= 6600:
                    revert with 0, 50
                stor24[_90 % stor22] = stor23[stor22]
            if not pendingCount:
                revert with 0, 17
            pendingCount--
            if stor23.length == -1:
                revert with 0, 17
            stor23.length++
            if (_90 % pendingCount) + 1 < 1:
                revert with 0, 17
        else:
            if sha3(mem[_88 + 32 len mem[_88]]) % pendingCount >= 6600:
                revert with 0, 50
            if stor24[sha3(mem[_88 + 32 len mem[_88]]) % stor22] < 1:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            mem[0] = stor24[sha3(mem[_88 + 32 len mem[_88]]) % stor22] - 1
            if ownerOf[mem[0]]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor24[_90 % stor22] - 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor24[_90 % stor22] - 1
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor24[_90 % stor22] - 1
                    stor7[stor24[_90 % stor22] - 1] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor24[_90 % stor22] - 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor24[_90 % stor22] - 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor24[_90 % stor22] - 1]
                stor9[stor24[_90 % stor22] - 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[32] = 2
            ownerOf[stor24[_90 % stor22] - 1] = msg.sender
            emit Transfer(0, msg.sender, stor24[_90 % stor22] - 1);
            if stor24[_90 % stor22] < 1:
                revert with 0, 17
            stor19E0.length++
            mem[0] = 6624
            stor19E0[stor19E0.length] = stor24[_90 % stor22] - 1
            if pendingCount < 1:
                revert with 0, 17
            if pendingCount - 1 >= 6600:
                revert with 0, 50
            if not stor23[stor22]:
                if 1 > !(pendingCount - 1):
                    revert with 0, 17
                if _90 % pendingCount >= 6600:
                    revert with 0, 50
                stor24[_90 % stor22] = pendingCount
            else:
                if pendingCount - 1 >= 6600:
                    revert with 0, 50
                if _90 % pendingCount >= 6600:
                    revert with 0, 50
                stor24[_90 % stor22] = stor23[stor22]
            if not pendingCount:
                revert with 0, 17
            pendingCount--
            if stor23.length == -1:
                revert with 0, 17
            stor23.length++
            if stor24[_90 % stor22] < 1:
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor12 = 1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor11.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor11.length):
                    mem[192] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _254 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_254) > _254:
                            mem[_254 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_254) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length) * 0.5:
                        mem[idx + 192] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor11.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor11.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor11.length) * 0.5) + 198] = 32
                mem[(uint255(stor11.length) * 0.5) + 230] = mem[160]
                mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + (uint255(stor11.length) * 0.5) + 262] = 0
                return Array(len=mem[160], data=mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])])
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[192] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _258 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_258) > _258:
                        mem[_258 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_258) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor11.length.field_1:
                    mem[idx + 192] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor11.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor11.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[stor11.length.field_1 + 198] = 32
            mem[stor11.length.field_1 + 230] = mem[160]
            mem[stor11.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor11.length.field_1 + 262] = 0
            return Array(len=mem[160], data=mem[stor11.length.field_1 + 262 len ceil32(mem[160])])
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _732 = mem[64]
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor11.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                    _796 = mem[96]
                    mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(mem[96]) <= mem[96]:
                        _1196 = mem[64]
                        mem[64] = mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 37
                        mem[_732 + (uint255(stor11.length) * 0.5) + mem[96] + 37] = 32
                        _1284 = mem[_1196]
                        mem[_732 + (uint255(stor11.length) * 0.5) + _796 + 69] = mem[_1196]
                        mem[_732 + (uint255(stor11.length) * 0.5) + _796 + 101 len ceil32(_1284)] = mem[_1196 + 32 len ceil32(_1284)]
                        if ceil32(_1284) > _1284:
                            mem[_1284 + _732 + (uint255(stor11.length) * 0.5) + _796 + 101] = 0
                        return 32, mem[_732 + (uint255(stor11.length) * 0.5) + _796 + 69 len ceil32(_1284) + 32]
                    _1197 = mem[64]
                    mem[64] = mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 37
                    mem[_732 + (uint255(stor11.length) * 0.5) + mem[96] + 37] = 32
                    _1285 = mem[_1197]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _796 + 69] = mem[_1197]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _796 + 101 len ceil32(_1285)] = mem[_1197 + 32 len ceil32(_1285)]
                    if ceil32(_1285) > _1285:
                        mem[_1285 + _732 + (uint255(stor11.length) * 0.5) + _796 + 101] = 0
                    return 32, mem[_732 + (uint255(stor11.length) * 0.5) + _796 + 69 len ceil32(_1285) + 32]
                if bool(stor11.length) != 1:
                    _804 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_804] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_804) <= _804:
                        _1198 = mem[64]
                        mem[64] = _804 + 5
                        mem[_804 + 5] = 32
                        _1286 = mem[_1198]
                        mem[_804 + 37] = mem[_1198]
                        mem[_804 + 69 len ceil32(_1286)] = mem[_1198 + 32 len ceil32(_1286)]
                        if ceil32(_1286) > _1286:
                            mem[_1286 + _804 + 69] = 0
                        return 32, mem[_804 + 37 len ceil32(_1286) + 32]
                    _1199 = mem[64]
                    mem[64] = _804 + 5
                    mem[_804 + 5] = 32
                    _1287 = mem[_1199]
                    mem[_804 + 37] = mem[_1199]
                    mem[_804 + 69 len ceil32(_1287)] = mem[_1199 + 32 len ceil32(_1287)]
                    if ceil32(_1287) > _1287:
                        mem[_1287 + _804 + 69] = 0
                    return 32, mem[_804 + 37 len ceil32(_1287) + 32]
                mem[0] = 11
                idx = 0
                s = 0
                while idx < uint255(stor11.length) * 0.5:
                    mem[idx + _732 + 32] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1188 = mem[96]
                mem[_732 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1188) <= _1188:
                    _1548 = mem[64]
                    mem[64] = _732 + (uint255(stor11.length) * 0.5) + _1188 + 37
                    mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 37] = 32
                    _1644 = mem[_1548]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 69] = mem[_1548]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 101 len ceil32(_1644)] = mem[_1548 + 32 len ceil32(_1644)]
                    if ceil32(_1644) > _1644:
                        mem[_1644 + _732 + (uint255(stor11.length) * 0.5) + _1188 + 101] = 0
                    return 32, mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 69 len ceil32(_1644) + 32]
                _1549 = mem[64]
                mem[64] = _732 + (uint255(stor11.length) * 0.5) + _1188 + 37
                mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 37] = 32
                _1645 = mem[_1549]
                mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 69] = mem[_1549]
                mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 101 len ceil32(_1645)] = mem[_1549 + 32 len ceil32(_1645)]
                if ceil32(_1645) > _1645:
                    mem[_1645 + _732 + (uint255(stor11.length) * 0.5) + _1188 + 101] = 0
                return 32, mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 69 len ceil32(_1645) + 32]
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _805 = mem[96]
                mem[mem[64] + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor11.length.field_1 + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1200 = mem[64]
                    mem[64] = mem[64] + stor11.length.field_1 + mem[96] + 37
                    mem[_732 + stor11.length.field_1 + mem[96] + 37] = 32
                    _1288 = mem[_1200]
                    mem[_732 + stor11.length.field_1 + _805 + 69] = mem[_1200]
                    mem[_732 + stor11.length.field_1 + _805 + 101 len ceil32(_1288)] = mem[_1200 + 32 len ceil32(_1288)]
                    if ceil32(_1288) > _1288:
                        mem[_1288 + _732 + stor11.length.field_1 + _805 + 101] = 0
                    return 32, mem[_732 + stor11.length.field_1 + _805 + 69 len ceil32(_1288) + 32]
                _1201 = mem[64]
                mem[64] = mem[64] + stor11.length.field_1 + mem[96] + 37
                mem[_732 + stor11.length.field_1 + mem[96] + 37] = 32
                _1289 = mem[_1201]
                mem[_732 + stor11.length.field_1 + _805 + 69] = mem[_1201]
                mem[_732 + stor11.length.field_1 + _805 + 101 len ceil32(_1289)] = mem[_1201 + 32 len ceil32(_1289)]
                if ceil32(_1289) > _1289:
                    mem[_1289 + _732 + stor11.length.field_1 + _805 + 101] = 0
                return 32, mem[_732 + stor11.length.field_1 + _805 + 69 len ceil32(_1289) + 32]
            if bool(stor11.length) != 1:
                _824 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_824] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_824) <= _824:
                    _1202 = mem[64]
                    mem[64] = _824 + 5
                    mem[_824 + 5] = 32
                    _1290 = mem[_1202]
                    mem[_824 + 37] = mem[_1202]
                    mem[_824 + 69 len ceil32(_1290)] = mem[_1202 + 32 len ceil32(_1290)]
                    if ceil32(_1290) > _1290:
                        mem[_1290 + _824 + 69] = 0
                    return 32, mem[_824 + 37 len ceil32(_1290) + 32]
                _1203 = mem[64]
                mem[64] = _824 + 5
                mem[_824 + 5] = 32
                _1291 = mem[_1203]
                mem[_824 + 37] = mem[_1203]
                mem[_824 + 69 len ceil32(_1291)] = mem[_1203 + 32 len ceil32(_1291)]
                if ceil32(_1291) > _1291:
                    mem[_1291 + _824 + 69] = 0
                return 32, mem[_824 + 37 len ceil32(_1291) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < stor11.length.field_1:
                mem[idx + _732 + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1189 = mem[96]
            mem[_732 + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_732 + stor11.length.field_1 + _1189 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1189) <= _1189:
                _1550 = mem[64]
                mem[64] = _732 + stor11.length.field_1 + _1189 + 37
                mem[_732 + stor11.length.field_1 + _1189 + 37] = 32
                _1646 = mem[_1550]
                mem[_732 + stor11.length.field_1 + _1189 + 69] = mem[_1550]
                mem[_732 + stor11.length.field_1 + _1189 + 101 len ceil32(_1646)] = mem[_1550 + 32 len ceil32(_1646)]
                if ceil32(_1646) > _1646:
                    mem[_1646 + _732 + stor11.length.field_1 + _1189 + 101] = 0
                return 32, mem[_732 + stor11.length.field_1 + _1189 + 69 len ceil32(_1646) + 32]
            _1551 = mem[64]
            mem[64] = _732 + stor11.length.field_1 + _1189 + 37
            mem[_732 + stor11.length.field_1 + _1189 + 37] = 32
            _1647 = mem[_1551]
            mem[_732 + stor11.length.field_1 + _1189 + 69] = mem[_1551]
            mem[_732 + stor11.length.field_1 + _1189 + 101 len ceil32(_1647)] = mem[_1551 + 32 len ceil32(_1647)]
            if ceil32(_1647) > _1647:
                mem[_1647 + _732 + stor11.length.field_1 + _1189 + 101] = 0
            return 32, mem[_732 + stor11.length.field_1 + _1189 + 69 len ceil32(_1647) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _733 = mem[64]
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _798 = mem[96]
                mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1204 = mem[64]
                    mem[64] = mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 37
                    mem[_733 + (uint255(stor11.length) * 0.5) + mem[96] + 37] = 32
                    _1292 = mem[_1204]
                    mem[_733 + (uint255(stor11.length) * 0.5) + _798 + 69] = mem[_1204]
                    mem[_733 + (uint255(stor11.length) * 0.5) + _798 + 101 len ceil32(_1292)] = mem[_1204 + 32 len ceil32(_1292)]
                    if ceil32(_1292) > _1292:
                        mem[_1292 + _733 + (uint255(stor11.length) * 0.5) + _798 + 101] = 0
                    return 32, mem[_733 + (uint255(stor11.length) * 0.5) + _798 + 69 len ceil32(_1292) + 32]
                _1205 = mem[64]
                mem[64] = mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 37
                mem[_733 + (uint255(stor11.length) * 0.5) + mem[96] + 37] = 32
                _1293 = mem[_1205]
                mem[_733 + (uint255(stor11.length) * 0.5) + _798 + 69] = mem[_1205]
                mem[_733 + (uint255(stor11.length) * 0.5) + _798 + 101 len ceil32(_1293)] = mem[_1205 + 32 len ceil32(_1293)]
                if ceil32(_1293) > _1293:
                    mem[_1293 + _733 + (uint255(stor11.length) * 0.5) + _798 + 101] = 0
                return 32, mem[_733 + (uint255(stor11.length) * 0.5) + _798 + 69 len ceil32(_1293) + 32]
            if bool(stor11.length) != 1:
                _807 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_807] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_807) <= _807:
                    _1206 = mem[64]
                    mem[64] = _807 + 5
                    mem[_807 + 5] = 32
                    _1294 = mem[_1206]
                    mem[_807 + 37] = mem[_1206]
                    mem[_807 + 69 len ceil32(_1294)] = mem[_1206 + 32 len ceil32(_1294)]
                    if ceil32(_1294) > _1294:
                        mem[_1294 + _807 + 69] = 0
                    return 32, mem[_807 + 37 len ceil32(_1294) + 32]
                _1207 = mem[64]
                mem[64] = _807 + 5
                mem[_807 + 5] = 32
                _1295 = mem[_1207]
                mem[_807 + 37] = mem[_1207]
                mem[_807 + 69 len ceil32(_1295)] = mem[_1207 + 32 len ceil32(_1295)]
                if ceil32(_1295) > _1295:
                    mem[_1295 + _807 + 69] = 0
                return 32, mem[_807 + 37 len ceil32(_1295) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < uint255(stor11.length) * 0.5:
                mem[idx + _733 + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1190 = mem[96]
            mem[_733 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1190) <= _1190:
                _1552 = mem[64]
                mem[64] = _733 + (uint255(stor11.length) * 0.5) + _1190 + 37
                mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 37] = 32
                _1648 = mem[_1552]
                mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 69] = mem[_1552]
                mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 101 len ceil32(_1648)] = mem[_1552 + 32 len ceil32(_1648)]
                if ceil32(_1648) > _1648:
                    mem[_1648 + _733 + (uint255(stor11.length) * 0.5) + _1190 + 101] = 0
                return 32, mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 69 len ceil32(_1648) + 32]
            _1553 = mem[64]
            mem[64] = _733 + (uint255(stor11.length) * 0.5) + _1190 + 37
            mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 37] = 32
            _1649 = mem[_1553]
            mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 69] = mem[_1553]
            mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 101 len ceil32(_1649)] = mem[_1553 + 32 len ceil32(_1649)]
            if ceil32(_1649) > _1649:
                mem[_1649 + _733 + (uint255(stor11.length) * 0.5) + _1190 + 101] = 0
            return 32, mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 69 len ceil32(_1649) + 32]
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _808 = mem[96]
            mem[mem[64] + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor11.length.field_1 + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1208 = mem[64]
                mem[64] = mem[64] + stor11.length.field_1 + mem[96] + 37
                mem[_733 + stor11.length.field_1 + mem[96] + 37] = 32
                _1296 = mem[_1208]
                mem[_733 + stor11.length.field_1 + _808 + 69] = mem[_1208]
                mem[_733 + stor11.length.field_1 + _808 + 101 len ceil32(_1296)] = mem[_1208 + 32 len ceil32(_1296)]
                if ceil32(_1296) > _1296:
                    mem[_1296 + _733 + stor11.length.field_1 + _808 + 101] = 0
                return 32, mem[_733 + stor11.length.field_1 + _808 + 69 len ceil32(_1296) + 32]
            _1209 = mem[64]
            mem[64] = mem[64] + stor11.length.field_1 + mem[96] + 37
            mem[_733 + stor11.length.field_1 + mem[96] + 37] = 32
            _1297 = mem[_1209]
            mem[_733 + stor11.length.field_1 + _808 + 69] = mem[_1209]
            mem[_733 + stor11.length.field_1 + _808 + 101 len ceil32(_1297)] = mem[_1209 + 32 len ceil32(_1297)]
            if ceil32(_1297) > _1297:
                mem[_1297 + _733 + stor11.length.field_1 + _808 + 101] = 0
            return 32, mem[_733 + stor11.length.field_1 + _808 + 69 len ceil32(_1297) + 32]
        if bool(stor11.length) != 1:
            _825 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_825] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_825) <= _825:
                _1210 = mem[64]
                mem[64] = _825 + 5
                mem[_825 + 5] = 32
                _1298 = mem[_1210]
                mem[_825 + 37] = mem[_1210]
                mem[_825 + 69 len ceil32(_1298)] = mem[_1210 + 32 len ceil32(_1298)]
                if ceil32(_1298) > _1298:
                    mem[_1298 + _825 + 69] = 0
                return 32, mem[_825 + 37 len ceil32(_1298) + 32]
            _1211 = mem[64]
            mem[64] = _825 + 5
            mem[_825 + 5] = 32
            _1299 = mem[_1211]
            mem[_825 + 37] = mem[_1211]
            mem[_825 + 69 len ceil32(_1299)] = mem[_1211 + 32 len ceil32(_1299)]
            if ceil32(_1299) > _1299:
                mem[_1299 + _825 + 69] = 0
            return 32, mem[_825 + 37 len ceil32(_1299) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1:
            mem[idx + _733 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1191 = mem[96]
        mem[_733 + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_733 + stor11.length.field_1 + _1191 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1191) <= _1191:
            _1554 = mem[64]
            mem[64] = _733 + stor11.length.field_1 + _1191 + 37
            mem[_733 + stor11.length.field_1 + _1191 + 37] = 32
            _1650 = mem[_1554]
            mem[_733 + stor11.length.field_1 + _1191 + 69] = mem[_1554]
            mem[_733 + stor11.length.field_1 + _1191 + 101 len ceil32(_1650)] = mem[_1554 + 32 len ceil32(_1650)]
            if ceil32(_1650) > _1650:
                mem[_1650 + _733 + stor11.length.field_1 + _1191 + 101] = 0
            return 32, mem[_733 + stor11.length.field_1 + _1191 + 69 len ceil32(_1650) + 32]
        _1555 = mem[64]
        mem[64] = _733 + stor11.length.field_1 + _1191 + 37
        mem[_733 + stor11.length.field_1 + _1191 + 37] = 32
        _1651 = mem[_1555]
        mem[_733 + stor11.length.field_1 + _1191 + 69] = mem[_1555]
        mem[_733 + stor11.length.field_1 + _1191 + 101 len ceil32(_1651)] = mem[_1555 + 32 len ceil32(_1651)]
        if ceil32(_1651) > _1651:
            mem[_1651 + _733 + stor11.length.field_1 + _1191 + 101] = 0
        return 32, mem[_733 + stor11.length.field_1 + _1191 + 69 len ceil32(_1651) + 32]
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if stor11.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[192] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _263 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_263) > _263:
                        mem[_263 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_263) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor11.length) * 0.5:
                    mem[idx + 192] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor11.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor11.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor11.length) * 0.5) + 198] = 32
            mem[(uint255(stor11.length) * 0.5) + 230] = mem[160]
            mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor11.length) * 0.5) + 262] = 0
            return Array(len=mem[160], data=mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])])
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[192] = Mask(248, 8, stor11.length)
        else:
            if bool(stor11.length) != 1:
                mem[64] = 6
                _267 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_267) > _267:
                    mem[_267 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_267) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor11.length.field_1:
                mem[idx + 192] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor11.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor11.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[stor11.length.field_1 + 198] = 32
        mem[stor11.length.field_1 + 230] = mem[160]
        mem[stor11.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor11.length.field_1 + 262] = 0
        return Array(len=mem[160], data=mem[stor11.length.field_1 + 262 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _734 = mem[64]
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _800 = mem[96]
                mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1212 = mem[64]
                    mem[64] = mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 37
                    mem[_734 + (uint255(stor11.length) * 0.5) + mem[96] + 37] = 32
                    _1300 = mem[_1212]
                    mem[_734 + (uint255(stor11.length) * 0.5) + _800 + 69] = mem[_1212]
                    mem[_734 + (uint255(stor11.length) * 0.5) + _800 + 101 len ceil32(_1300)] = mem[_1212 + 32 len ceil32(_1300)]
                    if ceil32(_1300) > _1300:
                        mem[_1300 + _734 + (uint255(stor11.length) * 0.5) + _800 + 101] = 0
                    return 32, mem[_734 + (uint255(stor11.length) * 0.5) + _800 + 69 len ceil32(_1300) + 32]
                _1213 = mem[64]
                mem[64] = mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 37
                mem[_734 + (uint255(stor11.length) * 0.5) + mem[96] + 37] = 32
                _1301 = mem[_1213]
                mem[_734 + (uint255(stor11.length) * 0.5) + _800 + 69] = mem[_1213]
                mem[_734 + (uint255(stor11.length) * 0.5) + _800 + 101 len ceil32(_1301)] = mem[_1213 + 32 len ceil32(_1301)]
                if ceil32(_1301) > _1301:
                    mem[_1301 + _734 + (uint255(stor11.length) * 0.5) + _800 + 101] = 0
                return 32, mem[_734 + (uint255(stor11.length) * 0.5) + _800 + 69 len ceil32(_1301) + 32]
            if bool(stor11.length) != 1:
                _814 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_814] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_814) <= _814:
                    _1214 = mem[64]
                    mem[64] = _814 + 5
                    mem[_814 + 5] = 32
                    _1302 = mem[_1214]
                    mem[_814 + 37] = mem[_1214]
                    mem[_814 + 69 len ceil32(_1302)] = mem[_1214 + 32 len ceil32(_1302)]
                    if ceil32(_1302) > _1302:
                        mem[_1302 + _814 + 69] = 0
                    return 32, mem[_814 + 37 len ceil32(_1302) + 32]
                _1215 = mem[64]
                mem[64] = _814 + 5
                mem[_814 + 5] = 32
                _1303 = mem[_1215]
                mem[_814 + 37] = mem[_1215]
                mem[_814 + 69 len ceil32(_1303)] = mem[_1215 + 32 len ceil32(_1303)]
                if ceil32(_1303) > _1303:
                    mem[_1303 + _814 + 69] = 0
                return 32, mem[_814 + 37 len ceil32(_1303) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < uint255(stor11.length) * 0.5:
                mem[idx + _734 + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1192 = mem[96]
            mem[_734 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1192) <= _1192:
                _1556 = mem[64]
                mem[64] = _734 + (uint255(stor11.length) * 0.5) + _1192 + 37
                mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 37] = 32
                _1652 = mem[_1556]
                mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 69] = mem[_1556]
                mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 101 len ceil32(_1652)] = mem[_1556 + 32 len ceil32(_1652)]
                if ceil32(_1652) > _1652:
                    mem[_1652 + _734 + (uint255(stor11.length) * 0.5) + _1192 + 101] = 0
                return 32, mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 69 len ceil32(_1652) + 32]
            _1557 = mem[64]
            mem[64] = _734 + (uint255(stor11.length) * 0.5) + _1192 + 37
            mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 37] = 32
            _1653 = mem[_1557]
            mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 69] = mem[_1557]
            mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 101 len ceil32(_1653)] = mem[_1557 + 32 len ceil32(_1653)]
            if ceil32(_1653) > _1653:
                mem[_1653 + _734 + (uint255(stor11.length) * 0.5) + _1192 + 101] = 0
            return 32, mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 69 len ceil32(_1653) + 32]
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _815 = mem[96]
            mem[mem[64] + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor11.length.field_1 + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1216 = mem[64]
                mem[64] = mem[64] + stor11.length.field_1 + mem[96] + 37
                mem[_734 + stor11.length.field_1 + mem[96] + 37] = 32
                _1304 = mem[_1216]
                mem[_734 + stor11.length.field_1 + _815 + 69] = mem[_1216]
                mem[_734 + stor11.length.field_1 + _815 + 101 len ceil32(_1304)] = mem[_1216 + 32 len ceil32(_1304)]
                if ceil32(_1304) > _1304:
                    mem[_1304 + _734 + stor11.length.field_1 + _815 + 101] = 0
                return 32, mem[_734 + stor11.length.field_1 + _815 + 69 len ceil32(_1304) + 32]
            _1217 = mem[64]
            mem[64] = mem[64] + stor11.length.field_1 + mem[96] + 37
            mem[_734 + stor11.length.field_1 + mem[96] + 37] = 32
            _1305 = mem[_1217]
            mem[_734 + stor11.length.field_1 + _815 + 69] = mem[_1217]
            mem[_734 + stor11.length.field_1 + _815 + 101 len ceil32(_1305)] = mem[_1217 + 32 len ceil32(_1305)]
            if ceil32(_1305) > _1305:
                mem[_1305 + _734 + stor11.length.field_1 + _815 + 101] = 0
            return 32, mem[_734 + stor11.length.field_1 + _815 + 69 len ceil32(_1305) + 32]
        if bool(stor11.length) != 1:
            _826 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_826] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_826) <= _826:
                _1218 = mem[64]
                mem[64] = _826 + 5
                mem[_826 + 5] = 32
                _1306 = mem[_1218]
                mem[_826 + 37] = mem[_1218]
                mem[_826 + 69 len ceil32(_1306)] = mem[_1218 + 32 len ceil32(_1306)]
                if ceil32(_1306) > _1306:
                    mem[_1306 + _826 + 69] = 0
                return 32, mem[_826 + 37 len ceil32(_1306) + 32]
            _1219 = mem[64]
            mem[64] = _826 + 5
            mem[_826 + 5] = 32
            _1307 = mem[_1219]
            mem[_826 + 37] = mem[_1219]
            mem[_826 + 69 len ceil32(_1307)] = mem[_1219 + 32 len ceil32(_1307)]
            if ceil32(_1307) > _1307:
                mem[_1307 + _826 + 69] = 0
            return 32, mem[_826 + 37 len ceil32(_1307) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1:
            mem[idx + _734 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1193 = mem[96]
        mem[_734 + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_734 + stor11.length.field_1 + _1193 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1193) <= _1193:
            _1558 = mem[64]
            mem[64] = _734 + stor11.length.field_1 + _1193 + 37
            mem[_734 + stor11.length.field_1 + _1193 + 37] = 32
            _1654 = mem[_1558]
            mem[_734 + stor11.length.field_1 + _1193 + 69] = mem[_1558]
            mem[_734 + stor11.length.field_1 + _1193 + 101 len ceil32(_1654)] = mem[_1558 + 32 len ceil32(_1654)]
            if ceil32(_1654) > _1654:
                mem[_1654 + _734 + stor11.length.field_1 + _1193 + 101] = 0
            return 32, mem[_734 + stor11.length.field_1 + _1193 + 69 len ceil32(_1654) + 32]
        _1559 = mem[64]
        mem[64] = _734 + stor11.length.field_1 + _1193 + 37
        mem[_734 + stor11.length.field_1 + _1193 + 37] = 32
        _1655 = mem[_1559]
        mem[_734 + stor11.length.field_1 + _1193 + 69] = mem[_1559]
        mem[_734 + stor11.length.field_1 + _1193 + 101 len ceil32(_1655)] = mem[_1559 + 32 len ceil32(_1655)]
        if ceil32(_1655) > _1655:
            mem[_1655 + _734 + stor11.length.field_1 + _1193 + 101] = 0
        return 32, mem[_734 + stor11.length.field_1 + _1193 + 69 len ceil32(_1655) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _735 = mem[64]
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _802 = mem[96]
            mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1220 = mem[64]
                mem[64] = mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 37
                mem[_735 + (uint255(stor11.length) * 0.5) + mem[96] + 37] = 32
                _1308 = mem[_1220]
                mem[_735 + (uint255(stor11.length) * 0.5) + _802 + 69] = mem[_1220]
                mem[_735 + (uint255(stor11.length) * 0.5) + _802 + 101 len ceil32(_1308)] = mem[_1220 + 32 len ceil32(_1308)]
                if ceil32(_1308) > _1308:
                    mem[_1308 + _735 + (uint255(stor11.length) * 0.5) + _802 + 101] = 0
                return 32, mem[_735 + (uint255(stor11.length) * 0.5) + _802 + 69 len ceil32(_1308) + 32]
            _1221 = mem[64]
            mem[64] = mem[64] + (uint255(stor11.length) * 0.5) + mem[96] + 37
            mem[_735 + (uint255(stor11.length) * 0.5) + mem[96] + 37] = 32
            _1309 = mem[_1221]
            mem[_735 + (uint255(stor11.length) * 0.5) + _802 + 69] = mem[_1221]
            mem[_735 + (uint255(stor11.length) * 0.5) + _802 + 101 len ceil32(_1309)] = mem[_1221 + 32 len ceil32(_1309)]
            if ceil32(_1309) > _1309:
                mem[_1309 + _735 + (uint255(stor11.length) * 0.5) + _802 + 101] = 0
            return 32, mem[_735 + (uint255(stor11.length) * 0.5) + _802 + 69 len ceil32(_1309) + 32]
        if bool(stor11.length) != 1:
            _817 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_817] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_817) <= _817:
                _1222 = mem[64]
                mem[64] = _817 + 5
                mem[_817 + 5] = 32
                _1310 = mem[_1222]
                mem[_817 + 37] = mem[_1222]
                mem[_817 + 69 len ceil32(_1310)] = mem[_1222 + 32 len ceil32(_1310)]
                if ceil32(_1310) > _1310:
                    mem[_1310 + _817 + 69] = 0
                return 32, mem[_817 + 37 len ceil32(_1310) + 32]
            _1223 = mem[64]
            mem[64] = _817 + 5
            mem[_817 + 5] = 32
            _1311 = mem[_1223]
            mem[_817 + 37] = mem[_1223]
            mem[_817 + 69 len ceil32(_1311)] = mem[_1223 + 32 len ceil32(_1311)]
            if ceil32(_1311) > _1311:
                mem[_1311 + _817 + 69] = 0
            return 32, mem[_817 + 37 len ceil32(_1311) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < uint255(stor11.length) * 0.5:
            mem[idx + _735 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1194 = mem[96]
        mem[_735 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1194) <= _1194:
            _1560 = mem[64]
            mem[64] = _735 + (uint255(stor11.length) * 0.5) + _1194 + 37
            mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 37] = 32
            _1656 = mem[_1560]
            mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 69] = mem[_1560]
            mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 101 len ceil32(_1656)] = mem[_1560 + 32 len ceil32(_1656)]
            if ceil32(_1656) > _1656:
                mem[_1656 + _735 + (uint255(stor11.length) * 0.5) + _1194 + 101] = 0
            return 32, mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 69 len ceil32(_1656) + 32]
        _1561 = mem[64]
        mem[64] = _735 + (uint255(stor11.length) * 0.5) + _1194 + 37
        mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 37] = 32
        _1657 = mem[_1561]
        mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 69] = mem[_1561]
        mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 101 len ceil32(_1657)] = mem[_1561 + 32 len ceil32(_1657)]
        if ceil32(_1657) > _1657:
            mem[_1657 + _735 + (uint255(stor11.length) * 0.5) + _1194 + 101] = 0
        return 32, mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 69 len ceil32(_1657) + 32]
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor11.length):
        mem[mem[64] + 32] = Mask(248, 8, stor11.length)
        _818 = mem[96]
        mem[mem[64] + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + stor11.length.field_1 + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _1224 = mem[64]
            mem[64] = mem[64] + stor11.length.field_1 + mem[96] + 37
            mem[_735 + stor11.length.field_1 + mem[96] + 37] = 32
            _1312 = mem[_1224]
            mem[_735 + stor11.length.field_1 + _818 + 69] = mem[_1224]
            mem[_735 + stor11.length.field_1 + _818 + 101 len ceil32(_1312)] = mem[_1224 + 32 len ceil32(_1312)]
            if ceil32(_1312) > _1312:
                mem[_1312 + _735 + stor11.length.field_1 + _818 + 101] = 0
            return 32, mem[_735 + stor11.length.field_1 + _818 + 69 len ceil32(_1312) + 32]
        _1225 = mem[64]
        mem[64] = mem[64] + stor11.length.field_1 + mem[96] + 37
        mem[_735 + stor11.length.field_1 + mem[96] + 37] = 32
        _1313 = mem[_1225]
        mem[_735 + stor11.length.field_1 + _818 + 69] = mem[_1225]
        mem[_735 + stor11.length.field_1 + _818 + 101 len ceil32(_1313)] = mem[_1225 + 32 len ceil32(_1313)]
        if ceil32(_1313) > _1313:
            mem[_1313 + _735 + stor11.length.field_1 + _818 + 101] = 0
        return 32, mem[_735 + stor11.length.field_1 + _818 + 69 len ceil32(_1313) + 32]
    if bool(stor11.length) != 1:
        _827 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_827] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_827) <= _827:
            _1226 = mem[64]
            mem[64] = _827 + 5
            mem[_827 + 5] = 32
            _1314 = mem[_1226]
            mem[_827 + 37] = mem[_1226]
            mem[_827 + 69 len ceil32(_1314)] = mem[_1226 + 32 len ceil32(_1314)]
            if ceil32(_1314) > _1314:
                mem[_1314 + _827 + 69] = 0
            return 32, mem[_827 + 37 len ceil32(_1314) + 32]
        _1227 = mem[64]
        mem[64] = _827 + 5
        mem[_827 + 5] = 32
        _1315 = mem[_1227]
        mem[_827 + 37] = mem[_1227]
        mem[_827 + 69 len ceil32(_1315)] = mem[_1227 + 32 len ceil32(_1315)]
        if ceil32(_1315) > _1315:
            mem[_1315 + _827 + 69] = 0
        return 32, mem[_827 + 37 len ceil32(_1315) + 32]
    mem[0] = 11
    idx = 0
    s = 0
    while idx < stor11.length.field_1:
        mem[idx + _735 + 32] = stor11[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1195 = mem[96]
    mem[_735 + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_735 + stor11.length.field_1 + _1195 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_1195) <= _1195:
        _1562 = mem[64]
        mem[64] = _735 + stor11.length.field_1 + _1195 + 37
        mem[_735 + stor11.length.field_1 + _1195 + 37] = 32
        _1658 = mem[_1562]
        mem[_735 + stor11.length.field_1 + _1195 + 69] = mem[_1562]
        mem[_735 + stor11.length.field_1 + _1195 + 101 len ceil32(_1658)] = mem[_1562 + 32 len ceil32(_1658)]
        if ceil32(_1658) > _1658:
            mem[_1658 + _735 + stor11.length.field_1 + _1195 + 101] = 0
        return 32, mem[_735 + stor11.length.field_1 + _1195 + 69 len ceil32(_1658) + 32]
    _1563 = mem[64]
    mem[64] = _735 + stor11.length.field_1 + _1195 + 37
    mem[_735 + stor11.length.field_1 + _1195 + 37] = 32
    _1659 = mem[_1563]
    mem[_735 + stor11.length.field_1 + _1195 + 69] = mem[_1563]
    mem[_735 + stor11.length.field_1 + _1195 + 101 len ceil32(_1659)] = mem[_1563 + 32 len ceil32(_1659)]
    if ceil32(_1659) > _1659:
        mem[_1659 + _735 + stor11.length.field_1 + _1195 + 101] = 0
    return 32, mem[_735 + stor11.length.field_1 + _1195 + 69 len ceil32(_1659) + 32]
}

function sub_cebbaf55(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    else:
        if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
            revert with 0, 65
        else:
            mem[64] = ceil32(32 * ('cd', 68).length) + 97
            mem[96] = ('cd', 68).length
            require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
            s = 128
            idx = cd[68] + 36
            while idx < (32 * ('cd', 68).length) + cd[68] + 36:
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if not stor20:
                revert with 0, 'Owner mint not done'
            else:
                if pendingCount <= 0:
                    revert with 0, 'GemGame: All minted'
                else:
                    if cd[4] <= 0:
                        revert with 0, 'GemGame: numberOfNfts cannot be 0'
                    else:
                        if cd[4] > 20:
                            revert with 0, 'GemGame: You may not buy more than 20 NFTs at once'
                        else:
                            if stor23.length > !cd[4]:
                                revert with 0, 17
                            else:
                                if stor23.length + cd[4] > 6886:
                                    revert with 0, 'GemGame: not enough remaining'
                                else:
                                    if mintPrice and cd[4] > -1 / mintPrice:
                                        revert with 0, 17
                                    else:
                                        if mintPrice * cd[4] != msg.value:
                                            revert with 0, 'GemGame: invalid ether value'
                                        else:
                                            if paused:
                                                revert with 0, 'Pausable: paused'
                                            else:
                                                if stor12 == 2:
                                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                                else:
                                                    stor12 = 2
                                                    if not sub_71591f55:
                                                        revert with 0, 'Whitelist is not allowed'
                                                    else:
                                                        mem[0] = msg.sender
                                                        mem[32] = 16
                                                        if stor16[msg.sender]:
                                                            if cd[4] > sub_e63ec947[msg.sender]:
                                                                revert with 0, 'Can't mint more than remaining allocation'
                                                            else:
                                                                mem[0] = msg.sender
                                                                mem[32] = 15
                                                                if sub_e63ec947[msg.sender] < cd[4]:
                                                                    revert with 0, 17
                                                                else:
                                                                    sub_e63ec947[msg.sender] -= cd[4]
                                                                    idx = 0
                                                                    while idx < cd[4]:
                                                                        if stor23.length >= 6886:
                                                                            revert with 0, 'GemGame: max supply reached'
                                                                        else:
                                                                            mem[mem[64] + 32] = block.difficulty
                                                                            mem[mem[64] + 64] = block.timestamp
                                                                            mem[mem[64] + 96] = pendingCount
                                                                            _374 = mem[64]
                                                                            mem[mem[64]] = 96
                                                                            mem[64] = mem[64] + 128
                                                                            _376 = sha3(mem[_374 + 32 len mem[_374]])
                                                                            if not pendingCount:
                                                                                revert with 0, 18
                                                                            else:
                                                                                if sha3(mem[_374 + 32 len mem[_374]]) % pendingCount >= 6600:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    if not stor24[sha3(mem[_374 + 32 len mem[_374]]) % stor22]:
                                                                                        if 1 > !(sha3(mem[_374 + 32 len mem[_374]]) % pendingCount):
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (sha3(mem[_374 + 32 len mem[_374]]) % pendingCount) + 1 < 1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if not msg.sender:
                                                                                                    revert with 0, 'ERC721: mint to the zero address'
                                                                                                else:
                                                                                                    mem[0] = sha3(mem[_374 + 32 len mem[_374]]) % pendingCount
                                                                                                    if ownerOf[mem[0]]:
                                                                                                        revert with 0, 'ERC721: token already minted'
                                                                                                    else:
                                                                                                        stor9[_376 % stor22] = tokenByIndex.length
                                                                                                        tokenByIndex.length++
                                                                                                        tokenByIndex[tokenByIndex.length] = _376 % pendingCount
                                                                                                        if msg.sender:
                                                                                                            if not msg.sender:
                                                                                                                if balanceOf[address(msg.sender)] > -2:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    balanceOf[address(msg.sender)]++
                                                                                                                    mem[32] = 2
                                                                                                                    ownerOf[_376 % stor22] = msg.sender
                                                                                                                    emit Transfer(0, msg.sender, _376 % pendingCount);
                                                                                                                    if (_376 % pendingCount) + 1 < 1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        stor19E0.length++
                                                                                                                        mem[0] = 6624
                                                                                                                        stor19E0[stor19E0.length] = _376 % pendingCount
                                                                                                                        if pendingCount < 1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if pendingCount - 1 >= 6600:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                if not stor23[stor22]:
                                                                                                                                    if 1 > !(pendingCount - 1):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if _376 % pendingCount >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor24[_376 % stor22] = pendingCount
                                                                                                                                            if not pendingCount:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                pendingCount--
                                                                                                                                                if stor23.length == -1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    stor23.length++
                                                                                                                                                    if (_376 % pendingCount) + 1 < 1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if idx == -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            idx = idx + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if pendingCount - 1 >= 6600:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if _376 % pendingCount >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor24[_376 % stor22] = stor23[stor22]
                                                                                                                                            if not pendingCount:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                pendingCount--
                                                                                                                                                if stor23.length == -1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    stor23.length++
                                                                                                                                                    if (_376 % pendingCount) + 1 < 1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if idx == -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            idx = idx + 1
                                                                                                                                                            continue 
                                                                                                            else:
                                                                                                                if not msg.sender:
                                                                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                                                                else:
                                                                                                                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = _376 % pendingCount
                                                                                                                    stor7[_376 % stor22] = balanceOf[address(msg.sender)]
                                                                                                                    if balanceOf[address(msg.sender)] > -2:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        balanceOf[address(msg.sender)]++
                                                                                                                        mem[32] = 2
                                                                                                                        ownerOf[_376 % stor22] = msg.sender
                                                                                                                        emit Transfer(0, msg.sender, _376 % pendingCount);
                                                                                                                        if (_376 % pendingCount) + 1 < 1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            stor19E0.length++
                                                                                                                            mem[0] = 6624
                                                                                                                            stor19E0[stor19E0.length] = _376 % pendingCount
                                                                                                                            if pendingCount < 1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if pendingCount - 1 >= 6600:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if not stor23[stor22]:
                                                                                                                                        if 1 > !(pendingCount - 1):
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            if _376 % pendingCount >= 6600:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                stor24[_376 % stor22] = pendingCount
                                                                                                                                                if not pendingCount:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    pendingCount--
                                                                                                                                                    if stor23.length == -1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        stor23.length++
                                                                                                                                                        if (_376 % pendingCount) + 1 < 1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if idx == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                idx = idx + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if pendingCount - 1 >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if _376 % pendingCount >= 6600:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                stor24[_376 % stor22] = stor23[stor22]
                                                                                                                                                if not pendingCount:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    pendingCount--
                                                                                                                                                    if stor23.length == -1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        stor23.length++
                                                                                                                                                        if (_376 % pendingCount) + 1 < 1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if idx == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                idx = idx + 1
                                                                                                                                                                continue 
                                                                                                        else:
                                                                                                            if tokenByIndex.length < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    if stor9[_376 % stor22] >= tokenByIndex.length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        tokenByIndex[stor9[_376 % stor22]] = tokenByIndex[tokenByIndex.length]
                                                                                                                        stor9[stor8[stor8.length]] = stor9[_376 % stor22]
                                                                                                                        stor9[_376 % stor22] = 0
                                                                                                                        if not tokenByIndex.length:
                                                                                                                            revert with 0, 49
                                                                                                                        else:
                                                                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                                                                            tokenByIndex.length--
                                                                                                                            if balanceOf[address(msg.sender)] > -2:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                balanceOf[address(msg.sender)]++
                                                                                                                                mem[32] = 2
                                                                                                                                ownerOf[_376 % stor22] = msg.sender
                                                                                                                                emit Transfer(0, msg.sender, _376 % pendingCount);
                                                                                                                                if (_376 % pendingCount) + 1 < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    stor19E0.length++
                                                                                                                                    mem[0] = 6624
                                                                                                                                    stor19E0[stor19E0.length] = _376 % pendingCount
                                                                                                                                    if pendingCount < 1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if pendingCount - 1 >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if not stor23[stor22]:
                                                                                                                                                if 1 > !(pendingCount - 1):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if _376 % pendingCount >= 6600:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor24[_376 % stor22] = pendingCount
                                                                                                                                                        if not pendingCount:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            pendingCount--
                                                                                                                                                            if stor23.length == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                stor23.length++
                                                                                                                                                                if (_376 % pendingCount) + 1 < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                                                                                            else:
                                                                                                                                                if pendingCount - 1 >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if _376 % pendingCount >= 6600:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor24[_376 % stor22] = stor23[stor22]
                                                                                                                                                        if not pendingCount:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            pendingCount--
                                                                                                                                                            if stor23.length == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                stor23.length++
                                                                                                                                                                if (_376 % pendingCount) + 1 < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                                    else:
                                                                                        if sha3(mem[_374 + 32 len mem[_374]]) % pendingCount >= 6600:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            if stor24[sha3(mem[_374 + 32 len mem[_374]]) % stor22] < 1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if not msg.sender:
                                                                                                    revert with 0, 'ERC721: mint to the zero address'
                                                                                                else:
                                                                                                    mem[0] = stor24[sha3(mem[_374 + 32 len mem[_374]]) % stor22] - 1
                                                                                                    if ownerOf[mem[0]]:
                                                                                                        revert with 0, 'ERC721: token already minted'
                                                                                                    else:
                                                                                                        stor9[stor24[_376 % stor22] - 1] = tokenByIndex.length
                                                                                                        tokenByIndex.length++
                                                                                                        tokenByIndex[tokenByIndex.length] = stor24[_376 % stor22] - 1
                                                                                                        if msg.sender:
                                                                                                            if not msg.sender:
                                                                                                                if balanceOf[address(msg.sender)] > -2:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    balanceOf[address(msg.sender)]++
                                                                                                                    mem[32] = 2
                                                                                                                    ownerOf[stor24[_376 % stor22] - 1] = msg.sender
                                                                                                                    emit Transfer(0, msg.sender, stor24[_376 % stor22] - 1);
                                                                                                                    if stor24[_376 % stor22] < 1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        stor19E0.length++
                                                                                                                        mem[0] = 6624
                                                                                                                        stor19E0[stor19E0.length] = stor24[_376 % stor22] - 1
                                                                                                                        if pendingCount < 1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if pendingCount - 1 >= 6600:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                if not stor23[stor22]:
                                                                                                                                    if 1 > !(pendingCount - 1):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if _376 % pendingCount >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor24[_376 % stor22] = pendingCount
                                                                                                                                            if not pendingCount:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                pendingCount--
                                                                                                                                                if stor23.length == -1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    stor23.length++
                                                                                                                                                    if stor24[_376 % stor22] < 1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if idx == -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            idx = idx + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if pendingCount - 1 >= 6600:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if _376 % pendingCount >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor24[_376 % stor22] = stor23[stor22]
                                                                                                                                            if not pendingCount:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                pendingCount--
                                                                                                                                                if stor23.length == -1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    stor23.length++
                                                                                                                                                    if stor24[_376 % stor22] < 1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        if idx == -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            idx = idx + 1
                                                                                                                                                            continue 
                                                                                                            else:
                                                                                                                if not msg.sender:
                                                                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                                                                else:
                                                                                                                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor24[_376 % stor22] - 1
                                                                                                                    stor7[stor24[_376 % stor22] - 1] = balanceOf[address(msg.sender)]
                                                                                                                    if balanceOf[address(msg.sender)] > -2:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        balanceOf[address(msg.sender)]++
                                                                                                                        mem[32] = 2
                                                                                                                        ownerOf[stor24[_376 % stor22] - 1] = msg.sender
                                                                                                                        emit Transfer(0, msg.sender, stor24[_376 % stor22] - 1);
                                                                                                                        if stor24[_376 % stor22] < 1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            stor19E0.length++
                                                                                                                            mem[0] = 6624
                                                                                                                            stor19E0[stor19E0.length] = stor24[_376 % stor22] - 1
                                                                                                                            if pendingCount < 1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if pendingCount - 1 >= 6600:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if not stor23[stor22]:
                                                                                                                                        if 1 > !(pendingCount - 1):
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            if _376 % pendingCount >= 6600:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                stor24[_376 % stor22] = pendingCount
                                                                                                                                                if not pendingCount:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    pendingCount--
                                                                                                                                                    if stor23.length == -1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        stor23.length++
                                                                                                                                                        if stor24[_376 % stor22] < 1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if idx == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                idx = idx + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if pendingCount - 1 >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if _376 % pendingCount >= 6600:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                stor24[_376 % stor22] = stor23[stor22]
                                                                                                                                                if not pendingCount:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    pendingCount--
                                                                                                                                                    if stor23.length == -1:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        stor23.length++
                                                                                                                                                        if stor24[_376 % stor22] < 1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if idx == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                idx = idx + 1
                                                                                                                                                                continue 
                                                                                                        else:
                                                                                                            if tokenByIndex.length < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    if stor9[stor24[_376 % stor22] - 1] >= tokenByIndex.length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        tokenByIndex[stor9[stor24[_376 % stor22] - 1]] = tokenByIndex[tokenByIndex.length]
                                                                                                                        stor9[stor8[stor8.length]] = stor9[stor24[_376 % stor22] - 1]
                                                                                                                        stor9[stor24[_376 % stor22] - 1] = 0
                                                                                                                        if not tokenByIndex.length:
                                                                                                                            revert with 0, 49
                                                                                                                        else:
                                                                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                                                                            tokenByIndex.length--
                                                                                                                            if balanceOf[address(msg.sender)] > -2:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                balanceOf[address(msg.sender)]++
                                                                                                                                mem[32] = 2
                                                                                                                                ownerOf[stor24[_376 % stor22] - 1] = msg.sender
                                                                                                                                emit Transfer(0, msg.sender, stor24[_376 % stor22] - 1);
                                                                                                                                if stor24[_376 % stor22] < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    stor19E0.length++
                                                                                                                                    mem[0] = 6624
                                                                                                                                    stor19E0[stor19E0.length] = stor24[_376 % stor22] - 1
                                                                                                                                    if pendingCount < 1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if pendingCount - 1 >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if not stor23[stor22]:
                                                                                                                                                if 1 > !(pendingCount - 1):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if _376 % pendingCount >= 6600:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor24[_376 % stor22] = pendingCount
                                                                                                                                                        if not pendingCount:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            pendingCount--
                                                                                                                                                            if stor23.length == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                stor23.length++
                                                                                                                                                                if stor24[_376 % stor22] < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                                                                                            else:
                                                                                                                                                if pendingCount - 1 >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if _376 % pendingCount >= 6600:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor24[_376 % stor22] = stor23[stor22]
                                                                                                                                                        if not pendingCount:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            pendingCount--
                                                                                                                                                            if stor23.length == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                stor23.length++
                                                                                                                                                                if stor24[_376 % stor22] < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                    stor12 = 1
                                                        else:
                                                            mem[ceil32(32 * ('cd', 68).length) + 129] = address(msg.sender)
                                                            mem[ceil32(32 * ('cd', 68).length) + 97] = 20
                                                            mem[64] = ceil32(32 * ('cd', 68).length) + 149
                                                            if sha3(msg.sender) != cd[36]:
                                                                revert with 0, 'Sender don't match Merkle leaf'
                                                            else:
                                                                idx = 0
                                                                s = cd[36]
                                                                while idx < ('cd', 68).length:
                                                                    if idx >= mem[96]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        _364 = mem[(32 * idx) + 128]
                                                                        if s > mem[(32 * idx) + 128]:
                                                                            mem[mem[64] + 32] = mem[(32 * idx) + 128]
                                                                            mem[mem[64] + 64] = s
                                                                            _366 = mem[64]
                                                                            mem[mem[64]] = 64
                                                                            mem[64] = mem[64] + 96
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                s = sha3(mem[_366 + 32 len mem[_366]])
                                                                                continue 
                                                                        else:
                                                                            mem[mem[64] + 32] = s
                                                                            mem[mem[64] + 64] = _364
                                                                            _370 = mem[64]
                                                                            mem[mem[64]] = 64
                                                                            mem[64] = mem[64] + 96
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                s = sha3(mem[_370 + 32 len mem[_370]])
                                                                                continue 
                                                                if merkleRoot != s:
                                                                    revert with 0, 'Not a valid leaf in the Merkle tree'
                                                                else:
                                                                    stor16[msg.sender] = 1
                                                                    sub_e63ec947[msg.sender] = whitelistAllocation
                                                                    if cd[4] > sub_e63ec947[msg.sender]:
                                                                        revert with 0, 'Can't mint more than remaining allocation'
                                                                    else:
                                                                        mem[0] = msg.sender
                                                                        mem[32] = 15
                                                                        if sub_e63ec947[msg.sender] < cd[4]:
                                                                            revert with 0, 17
                                                                        else:
                                                                            sub_e63ec947[msg.sender] -= cd[4]
                                                                            idx = 0
                                                                            while idx < cd[4]:
                                                                                if stor23.length >= 6886:
                                                                                    revert with 0, 'GemGame: max supply reached'
                                                                                else:
                                                                                    mem[mem[64] + 32] = block.difficulty
                                                                                    mem[mem[64] + 64] = block.timestamp
                                                                                    mem[mem[64] + 96] = pendingCount
                                                                                    _514 = mem[64]
                                                                                    mem[mem[64]] = 96
                                                                                    mem[64] = mem[64] + 128
                                                                                    _516 = sha3(mem[_514 + 32 len mem[_514]])
                                                                                    if not pendingCount:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if sha3(mem[_514 + 32 len mem[_514]]) % pendingCount >= 6600:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            if not stor24[sha3(mem[_514 + 32 len mem[_514]]) % stor22]:
                                                                                                if 1 > !(sha3(mem[_514 + 32 len mem[_514]]) % pendingCount):
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if (sha3(mem[_514 + 32 len mem[_514]]) % pendingCount) + 1 < 1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if not msg.sender:
                                                                                                            revert with 0, 'ERC721: mint to the zero address'
                                                                                                        else:
                                                                                                            mem[0] = sha3(mem[_514 + 32 len mem[_514]]) % pendingCount
                                                                                                            if ownerOf[mem[0]]:
                                                                                                                revert with 0, 'ERC721: token already minted'
                                                                                                            else:
                                                                                                                stor9[_516 % stor22] = tokenByIndex.length
                                                                                                                tokenByIndex.length++
                                                                                                                tokenByIndex[tokenByIndex.length] = _516 % pendingCount
                                                                                                                if msg.sender:
                                                                                                                    if not msg.sender:
                                                                                                                        if balanceOf[address(msg.sender)] > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            balanceOf[address(msg.sender)]++
                                                                                                                            mem[32] = 2
                                                                                                                            ownerOf[_516 % stor22] = msg.sender
                                                                                                                            emit Transfer(0, msg.sender, _516 % pendingCount);
                                                                                                                            if (_516 % pendingCount) + 1 < 1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                stor19E0.length++
                                                                                                                                mem[0] = 6624
                                                                                                                                stor19E0[stor19E0.length] = _516 % pendingCount
                                                                                                                                if pendingCount < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if pendingCount - 1 >= 6600:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if not stor23[stor22]:
                                                                                                                                            if 1 > !(pendingCount - 1):
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if _516 % pendingCount >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    stor24[_516 % stor22] = pendingCount
                                                                                                                                                    if not pendingCount:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        pendingCount--
                                                                                                                                                        if stor23.length == -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            stor23.length++
                                                                                                                                                            if (_516 % pendingCount) + 1 < 1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if idx == -1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                    continue 
                                                                                                                                        else:
                                                                                                                                            if pendingCount - 1 >= 6600:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                if _516 % pendingCount >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    stor24[_516 % stor22] = stor23[stor22]
                                                                                                                                                    if not pendingCount:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        pendingCount--
                                                                                                                                                        if stor23.length == -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            stor23.length++
                                                                                                                                                            if (_516 % pendingCount) + 1 < 1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if idx == -1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                    continue 
                                                                                                                    else:
                                                                                                                        if not msg.sender:
                                                                                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                                                                                        else:
                                                                                                                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = _516 % pendingCount
                                                                                                                            stor7[_516 % stor22] = balanceOf[address(msg.sender)]
                                                                                                                            if balanceOf[address(msg.sender)] > -2:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                balanceOf[address(msg.sender)]++
                                                                                                                                mem[32] = 2
                                                                                                                                ownerOf[_516 % stor22] = msg.sender
                                                                                                                                emit Transfer(0, msg.sender, _516 % pendingCount);
                                                                                                                                if (_516 % pendingCount) + 1 < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    stor19E0.length++
                                                                                                                                    mem[0] = 6624
                                                                                                                                    stor19E0[stor19E0.length] = _516 % pendingCount
                                                                                                                                    if pendingCount < 1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if pendingCount - 1 >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if not stor23[stor22]:
                                                                                                                                                if 1 > !(pendingCount - 1):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if _516 % pendingCount >= 6600:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor24[_516 % stor22] = pendingCount
                                                                                                                                                        if not pendingCount:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            pendingCount--
                                                                                                                                                            if stor23.length == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                stor23.length++
                                                                                                                                                                if (_516 % pendingCount) + 1 < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                                                                                            else:
                                                                                                                                                if pendingCount - 1 >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if _516 % pendingCount >= 6600:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor24[_516 % stor22] = stor23[stor22]
                                                                                                                                                        if not pendingCount:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            pendingCount--
                                                                                                                                                            if stor23.length == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                stor23.length++
                                                                                                                                                                if (_516 % pendingCount) + 1 < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if tokenByIndex.length < 1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if stor9[_516 % stor22] >= tokenByIndex.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                tokenByIndex[stor9[_516 % stor22]] = tokenByIndex[tokenByIndex.length]
                                                                                                                                stor9[stor8[stor8.length]] = stor9[_516 % stor22]
                                                                                                                                stor9[_516 % stor22] = 0
                                                                                                                                if not tokenByIndex.length:
                                                                                                                                    revert with 0, 49
                                                                                                                                else:
                                                                                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                                                                                    tokenByIndex.length--
                                                                                                                                    if balanceOf[address(msg.sender)] > -2:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(msg.sender)]++
                                                                                                                                        mem[32] = 2
                                                                                                                                        ownerOf[_516 % stor22] = msg.sender
                                                                                                                                        emit Transfer(0, msg.sender, _516 % pendingCount);
                                                                                                                                        if (_516 % pendingCount) + 1 < 1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            stor19E0.length++
                                                                                                                                            mem[0] = 6624
                                                                                                                                            stor19E0[stor19E0.length] = _516 % pendingCount
                                                                                                                                            if pendingCount < 1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if pendingCount - 1 >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if not stor23[stor22]:
                                                                                                                                                        if 1 > !(pendingCount - 1):
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if _516 % pendingCount >= 6600:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                stor24[_516 % stor22] = pendingCount
                                                                                                                                                                if not pendingCount:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    pendingCount--
                                                                                                                                                                    if stor23.length == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        stor23.length++
                                                                                                                                                                        if (_516 % pendingCount) + 1 < 1:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                continue 
                                                                                                                                                    else:
                                                                                                                                                        if pendingCount - 1 >= 6600:
                                                                                                                                                            revert with 0, 50
                                                                                                                                                        else:
                                                                                                                                                            if _516 % pendingCount >= 6600:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                stor24[_516 % stor22] = stor23[stor22]
                                                                                                                                                                if not pendingCount:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    pendingCount--
                                                                                                                                                                    if stor23.length == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        stor23.length++
                                                                                                                                                                        if (_516 % pendingCount) + 1 < 1:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                continue 
                                                                                            else:
                                                                                                if sha3(mem[_514 + 32 len mem[_514]]) % pendingCount >= 6600:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    if stor24[sha3(mem[_514 + 32 len mem[_514]]) % stor22] < 1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if not msg.sender:
                                                                                                            revert with 0, 'ERC721: mint to the zero address'
                                                                                                        else:
                                                                                                            mem[0] = stor24[sha3(mem[_514 + 32 len mem[_514]]) % stor22] - 1
                                                                                                            if ownerOf[mem[0]]:
                                                                                                                revert with 0, 'ERC721: token already minted'
                                                                                                            else:
                                                                                                                stor9[stor24[_516 % stor22] - 1] = tokenByIndex.length
                                                                                                                tokenByIndex.length++
                                                                                                                tokenByIndex[tokenByIndex.length] = stor24[_516 % stor22] - 1
                                                                                                                if msg.sender:
                                                                                                                    if not msg.sender:
                                                                                                                        if balanceOf[address(msg.sender)] > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            balanceOf[address(msg.sender)]++
                                                                                                                            mem[32] = 2
                                                                                                                            ownerOf[stor24[_516 % stor22] - 1] = msg.sender
                                                                                                                            emit Transfer(0, msg.sender, stor24[_516 % stor22] - 1);
                                                                                                                            if stor24[_516 % stor22] < 1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                stor19E0.length++
                                                                                                                                mem[0] = 6624
                                                                                                                                stor19E0[stor19E0.length] = stor24[_516 % stor22] - 1
                                                                                                                                if pendingCount < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if pendingCount - 1 >= 6600:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if not stor23[stor22]:
                                                                                                                                            if 1 > !(pendingCount - 1):
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if _516 % pendingCount >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    stor24[_516 % stor22] = pendingCount
                                                                                                                                                    if not pendingCount:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        pendingCount--
                                                                                                                                                        if stor23.length == -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            stor23.length++
                                                                                                                                                            if stor24[_516 % stor22] < 1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if idx == -1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                    continue 
                                                                                                                                        else:
                                                                                                                                            if pendingCount - 1 >= 6600:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                if _516 % pendingCount >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    stor24[_516 % stor22] = stor23[stor22]
                                                                                                                                                    if not pendingCount:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        pendingCount--
                                                                                                                                                        if stor23.length == -1:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            stor23.length++
                                                                                                                                                            if stor24[_516 % stor22] < 1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                if idx == -1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                    continue 
                                                                                                                    else:
                                                                                                                        if not msg.sender:
                                                                                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                                                                                        else:
                                                                                                                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor24[_516 % stor22] - 1
                                                                                                                            stor7[stor24[_516 % stor22] - 1] = balanceOf[address(msg.sender)]
                                                                                                                            if balanceOf[address(msg.sender)] > -2:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                balanceOf[address(msg.sender)]++
                                                                                                                                mem[32] = 2
                                                                                                                                ownerOf[stor24[_516 % stor22] - 1] = msg.sender
                                                                                                                                emit Transfer(0, msg.sender, stor24[_516 % stor22] - 1);
                                                                                                                                if stor24[_516 % stor22] < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    stor19E0.length++
                                                                                                                                    mem[0] = 6624
                                                                                                                                    stor19E0[stor19E0.length] = stor24[_516 % stor22] - 1
                                                                                                                                    if pendingCount < 1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if pendingCount - 1 >= 6600:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if not stor23[stor22]:
                                                                                                                                                if 1 > !(pendingCount - 1):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    if _516 % pendingCount >= 6600:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor24[_516 % stor22] = pendingCount
                                                                                                                                                        if not pendingCount:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            pendingCount--
                                                                                                                                                            if stor23.length == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                stor23.length++
                                                                                                                                                                if stor24[_516 % stor22] < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                                                                                            else:
                                                                                                                                                if pendingCount - 1 >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if _516 % pendingCount >= 6600:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor24[_516 % stor22] = stor23[stor22]
                                                                                                                                                        if not pendingCount:
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            pendingCount--
                                                                                                                                                            if stor23.length == -1:
                                                                                                                                                                revert with 0, 17
                                                                                                                                                            else:
                                                                                                                                                                stor23.length++
                                                                                                                                                                if stor24[_516 % stor22] < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if tokenByIndex.length < 1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if stor9[stor24[_516 % stor22] - 1] >= tokenByIndex.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                tokenByIndex[stor9[stor24[_516 % stor22] - 1]] = tokenByIndex[tokenByIndex.length]
                                                                                                                                stor9[stor8[stor8.length]] = stor9[stor24[_516 % stor22] - 1]
                                                                                                                                stor9[stor24[_516 % stor22] - 1] = 0
                                                                                                                                if not tokenByIndex.length:
                                                                                                                                    revert with 0, 49
                                                                                                                                else:
                                                                                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                                                                                    tokenByIndex.length--
                                                                                                                                    if balanceOf[address(msg.sender)] > -2:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(msg.sender)]++
                                                                                                                                        mem[32] = 2
                                                                                                                                        ownerOf[stor24[_516 % stor22] - 1] = msg.sender
                                                                                                                                        emit Transfer(0, msg.sender, stor24[_516 % stor22] - 1);
                                                                                                                                        if stor24[_516 % stor22] < 1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            stor19E0.length++
                                                                                                                                            mem[0] = 6624
                                                                                                                                            stor19E0[stor19E0.length] = stor24[_516 % stor22] - 1
                                                                                                                                            if pendingCount < 1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                if pendingCount - 1 >= 6600:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if not stor23[stor22]:
                                                                                                                                                        if 1 > !(pendingCount - 1):
                                                                                                                                                            revert with 0, 17
                                                                                                                                                        else:
                                                                                                                                                            if _516 % pendingCount >= 6600:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                stor24[_516 % stor22] = pendingCount
                                                                                                                                                                if not pendingCount:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    pendingCount--
                                                                                                                                                                    if stor23.length == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        stor23.length++
                                                                                                                                                                        if stor24[_516 % stor22] < 1:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                continue 
                                                                                                                                                    else:
                                                                                                                                                        if pendingCount - 1 >= 6600:
                                                                                                                                                            revert with 0, 50
                                                                                                                                                        else:
                                                                                                                                                            if _516 % pendingCount >= 6600:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                stor24[_516 % stor22] = stor23[stor22]
                                                                                                                                                                if not pendingCount:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    pendingCount--
                                                                                                                                                                    if stor23.length == -1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        stor23.length++
                                                                                                                                                                        if stor24[_516 % stor22] < 1:
                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                        else:
                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                            else:
                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                continue 
                                                                            stor12 = 1
}



}
