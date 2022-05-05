contract main {




// =====================  Runtime code  =====================


#
#  - contractURI()
#
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
array of struct stor11;
array of uint256 stor12;
address treasuryAddress;
uint256 mintFee;
uint256 reflectionAmount;
uint256 currentReflection;
uint256 totalReflection;
array of uint256 lastReflections;
array of uint256 stor19;
uint256 stor5EF;
uint256 stor5F0;
uint8 paused;
uint8 partnerPaused; offset 8
address partnerTokenAddress; offset 16
uint256 stor5F1; offset 8
uint256 stor5F1;
uint256 stor5F2;
uint256 partnerMintCount;
uint256 stor5F4;
mapping of uint8 stor1525;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function mintFee() {
    return mintFee
}

function totalSupply() {
    return tokenByIndex.length
}

function totalReflection() {
    return totalReflection
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

function currentReflection() {
    return currentReflection
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function reflectionAmount() {
    return reflectionAmount
}

function treasury() {
    return treasuryAddress
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function partnerMintCount() {
    return partnerMintCount
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function partnerMinted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5F5[arg1])
}

function partnerPaused() {
    return bool(partnerPaused)
}

function lastReflections(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lastReflections[arg1]
}

function partnerTokenAddress() {
    return partnerTokenAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function flipPartnerPause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor5F1.field_8) = Mask(248, 0, not partnerPaused)
}

function flipPause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor5F1.field_0) = not paused or Mask(248, 8, uint256(stor5F1.field_0))
}

function setMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Not Paused'
    mintFee = arg1
    paused = 0
}

function setReflectionAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Not Paused'
    reflectionAmount = arg1
    paused = 0
}

function setPartnerTokenMinimum(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not partnerPaused:
        revert with 0, 'Not Paused'
    stor5F2 = arg1
    partnerPaused = 0
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

function raiseReflection() payable {
    if totalReflection > !msg.value:
        revert with 0, 17
    totalReflection += msg.value
    if not tokenByIndex.length:
        revert with 0, 18
    if currentReflection > !(msg.value / tokenByIndex.length):
        revert with 0, 17
    currentReflection += msg.value / tokenByIndex.length
    emit Reflection(msg.value);
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

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while (uint255(stor12.length) * 0.5) + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x905d9812: Array(len=arg1.length, data=arg1[all])
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    emit BaseURIUpdated(Array(len=arg1.length, data=arg1[all]));
}

function getRewards(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 18
        if currentReflection < lastReflections[mem[(32 * idx) + 128]]:
            revert with 0, 17
        if s > !(currentReflection - lastReflections[mem[(32 * idx) + 128]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + currentReflection - lastReflections[mem[(32 * idx) + 128]]
        continue 
    return (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length)
}

function claimRewards(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 18
        if currentReflection < lastReflections[mem[(32 * idx) + 128]]:
            revert with 0, 17
        if s > !(currentReflection - lastReflections[mem[(32 * idx) + 128]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + currentReflection - lastReflections[mem[(32 * idx) + 128]]
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if not ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
            revert with 0, 'Owner Invalid'
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 18
        lastReflections[mem[(32 * idx) + 128]] = currentReflection
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function baseURI() {
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11.length):
                if 31 < uint255(stor11.length) * 0.5:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor11.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(uint255(stor11.length) * 0.5) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
        if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
            mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)], mem[(2 * ceil32(uint255(stor11.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor11.length) * 0.5)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11.length):
            if 31 < uint255(stor11.length) * 0.5:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while (uint255(stor11.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[stor11.length.field_1 + ceil32(stor11.length.field_1) + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
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

function freeRollMint(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5F0 > 333:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already given max number of free rolls'
    if stor5F0 > !arg1:
        revert with 0, 17
    stor5F0 += arg1
    idx = 0
    while idx < arg1:
        if block.number < 1:
            revert with 0, 17
        _792 = mem[64]
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = block.gasprice
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64] + 160] = block.hash(block.number - 1)
        mem[mem[64] + 192] = arg1
        mem[mem[64] + 224] = idx
        _793 = mem[64]
        mem[mem[64]] = 224
        mem[64] = mem[64] + 256
        _795 = sha3(mem[_793 + 32 len mem[_793]])
        if not stor5EF:
            revert with 0, 18
        if sha3(mem[_793 + 32 len mem[_793]]) % stor5EF >= 1500:
            revert with 0, 50
        if stor5EF < 1:
            revert with 0, 17
        if sha3(mem[_793 + 32 len mem[_793]]) % stor5EF != stor5EF - 1:
            if stor5EF - 1 >= 1500:
                revert with 0, 50
            if sha3(mem[_793 + 32 len mem[_793]]) % stor5EF >= 1500:
                revert with 0, 50
            if lastReflections[stor5EF]:
                stor19[sha3(mem[_793 + 32 len mem[_793]]) % stor5EF] = lastReflections[stor5EF]
            else:
                stor19[sha3(mem[_793 + 32 len mem[_793]]) % stor5EF] = stor5EF - 1
        if not stor5EF:
            revert with 0, 17
        stor5EF--
        mem[64] = _792 + 288
        mem[_792 + 256] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor19[sha3(mem[_793 + 32 len mem[_793]]) % stor5EF]:
            if ownerOf[stor19[_795 % stor5EF]]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor19[_795 % stor5EF]] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor19[_795 % stor5EF]
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor19[_795 % stor5EF]
                    stor7[stor19[_795 % stor5EF]] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor19[_795 % stor5EF]] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor19[_795 % stor5EF]]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor19[_795 % stor5EF]]
                stor9[stor19[_795 % stor5EF]] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[stor19[_795 % stor5EF]] = msg.sender
            emit Transfer(0, msg.sender, stor19[_795 % stor5EF]);
            if ext_code.size(msg.sender):
                mem[_792 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_792 + 292] = msg.sender
                mem[_792 + 324] = 0
                mem[_792 + 356] = stor19[_795 % stor5EF]
                mem[_792 + 388] = 128
                mem[_792 + 420] = 0
                s = 0
                while s < 0:
                    mem[s + _792 + 452] = mem[s + _792 + 288]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor19[_795 % stor5EF], 128, 0
                mem[_792 + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _792 + ceil32(return_data.size) + 288
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = stor19[_795 % stor5EF]
            mem[32] = 18
            lastReflections[stor19[_795 % stor5EF]] = currentReflection
        else:
            if ownerOf[_795 % stor5EF]:
                revert with 0, 'ERC721: token already minted'
            stor9[_795 % stor5EF] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = _795 % stor5EF
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = _795 % stor5EF
                    stor7[_795 % stor5EF] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[_795 % stor5EF] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[_795 % stor5EF]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[_795 % stor5EF]
                stor9[_795 % stor5EF] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[_795 % stor5EF] = msg.sender
            emit Transfer(0, msg.sender, _795 % stor5EF);
            if ext_code.size(msg.sender):
                mem[_792 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_792 + 292] = msg.sender
                mem[_792 + 324] = 0
                mem[_792 + 356] = _795 % stor5EF
                mem[_792 + 388] = 128
                mem[_792 + 420] = 0
                s = 0
                while s < 0:
                    mem[s + _792 + 452] = mem[s + _792 + 288]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, _795 % stor5EF, 128, 0
                mem[_792 + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _792 + ceil32(return_data.size) + 288
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = _795 % stor5EF
            mem[32] = 18
            lastReflections[_795 % stor5EF] = currentReflection
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if msg.value and reflectionAmount > -1 / msg.value:
        revert with 0, 17
    if totalReflection > !(msg.value * reflectionAmount / 100):
        revert with 0, 17
    totalReflection += msg.value * reflectionAmount / 100
    if not tokenByIndex.length:
        revert with 0, 18
    if currentReflection > !(msg.value * reflectionAmount / 100 / tokenByIndex.length):
        revert with 0, 17
    currentReflection += msg.value * reflectionAmount / 100 / tokenByIndex.length
    emit Reflection((msg.value * reflectionAmount / 100));
    if msg.value < msg.value * reflectionAmount / 100:
        revert with 0, 17
    call treasuryAddress with:
       value msg.value - (msg.value * reflectionAmount / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Minting Paused'
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > 1500:
        revert with 0, 'Max Supply Reached'
    if arg1 > 20:
        revert with 0, 'Amount Invalid'
    if mintFee and arg1 > -1 / mintFee:
        revert with 0, 17
    if msg.value < mintFee * arg1:
        revert with 0, 'Fee Insufficient'
    idx = 0
    while idx < arg1:
        if block.number < 1:
            revert with 0, 17
        _796 = mem[64]
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = block.gasprice
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64] + 160] = block.hash(block.number - 1)
        mem[mem[64] + 192] = arg1
        mem[mem[64] + 224] = idx
        _797 = mem[64]
        mem[mem[64]] = 224
        mem[64] = mem[64] + 256
        _799 = sha3(mem[_797 + 32 len mem[_797]])
        if not stor5EF:
            revert with 0, 18
        if sha3(mem[_797 + 32 len mem[_797]]) % stor5EF >= 1500:
            revert with 0, 50
        if stor5EF < 1:
            revert with 0, 17
        if sha3(mem[_797 + 32 len mem[_797]]) % stor5EF != stor5EF - 1:
            if stor5EF - 1 >= 1500:
                revert with 0, 50
            if sha3(mem[_797 + 32 len mem[_797]]) % stor5EF >= 1500:
                revert with 0, 50
            if lastReflections[stor5EF]:
                stor19[sha3(mem[_797 + 32 len mem[_797]]) % stor5EF] = lastReflections[stor5EF]
            else:
                stor19[sha3(mem[_797 + 32 len mem[_797]]) % stor5EF] = stor5EF - 1
        if not stor5EF:
            revert with 0, 17
        stor5EF--
        mem[64] = _796 + 288
        mem[_796 + 256] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor19[sha3(mem[_797 + 32 len mem[_797]]) % stor5EF]:
            if ownerOf[stor19[_799 % stor5EF]]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor19[_799 % stor5EF]] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor19[_799 % stor5EF]
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor19[_799 % stor5EF]
                    stor7[stor19[_799 % stor5EF]] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor19[_799 % stor5EF]] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor19[_799 % stor5EF]]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor19[_799 % stor5EF]]
                stor9[stor19[_799 % stor5EF]] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[stor19[_799 % stor5EF]] = msg.sender
            emit Transfer(0, msg.sender, stor19[_799 % stor5EF]);
            if ext_code.size(msg.sender):
                mem[_796 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_796 + 292] = msg.sender
                mem[_796 + 324] = 0
                mem[_796 + 356] = stor19[_799 % stor5EF]
                mem[_796 + 388] = 128
                mem[_796 + 420] = 0
                s = 0
                while s < 0:
                    mem[s + _796 + 452] = mem[s + _796 + 288]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor19[_799 % stor5EF], 128, 0
                mem[_796 + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _796 + ceil32(return_data.size) + 288
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = stor19[_799 % stor5EF]
            mem[32] = 18
            lastReflections[stor19[_799 % stor5EF]] = currentReflection
        else:
            if ownerOf[_799 % stor5EF]:
                revert with 0, 'ERC721: token already minted'
            stor9[_799 % stor5EF] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = _799 % stor5EF
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = _799 % stor5EF
                    stor7[_799 % stor5EF] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[_799 % stor5EF] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[_799 % stor5EF]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[_799 % stor5EF]
                stor9[_799 % stor5EF] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[_799 % stor5EF] = msg.sender
            emit Transfer(0, msg.sender, _799 % stor5EF);
            if ext_code.size(msg.sender):
                mem[_796 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_796 + 292] = msg.sender
                mem[_796 + 324] = 0
                mem[_796 + 356] = _799 % stor5EF
                mem[_796 + 388] = 128
                mem[_796 + 420] = 0
                s = 0
                while s < 0:
                    mem[s + _796 + 452] = mem[s + _796 + 288]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, _799 % stor5EF, 128, 0
                mem[_796 + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _796 + ceil32(return_data.size) + 288
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = _799 % stor5EF
            mem[32] = 18
            lastReflections[_799 % stor5EF] = currentReflection
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if msg.value and reflectionAmount > -1 / msg.value:
        revert with 0, 17
    if totalReflection > !(msg.value * reflectionAmount / 100):
        revert with 0, 17
    totalReflection += msg.value * reflectionAmount / 100
    if not tokenByIndex.length:
        revert with 0, 18
    if currentReflection > !(msg.value * reflectionAmount / 100 / tokenByIndex.length):
        revert with 0, 17
    currentReflection += msg.value * reflectionAmount / 100 / tokenByIndex.length
    emit Reflection((msg.value * reflectionAmount / 100));
    if msg.value < msg.value * reflectionAmount / 100:
        revert with 0, 17
    call treasuryAddress with:
       value msg.value - (msg.value * reflectionAmount / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function partnerMint() {
    if partnerPaused:
        revert with 0, 'Partner minting paused'
    if stor5F5[msg.sender]:
        revert with 0, 'You've already minted a free cat'
    mem[100] = msg.sender
    require ext_code.size(partnerTokenAddress)
    staticcall partnerTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < stor5F2:
        revert with 0, 'You don't have enough of the required token'
    if partnerMintCount >= stor5F4:
        revert with 0, 'Partner mint alloction reached'
    if 1 > !partnerMintCount:
        revert with 0, 17
    partnerMintCount++
    mem[0] = msg.sender
    mem[32] = 1525
    stor5F5[msg.sender] = 1
    idx = 0
    while idx < 1:
        if block.number < 1:
            revert with 0, 17
        _799 = mem[64]
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = block.gasprice
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64] + 160] = block.hash(block.number - 1)
        mem[mem[64] + 192] = 1
        mem[mem[64] + 224] = idx
        _800 = mem[64]
        mem[mem[64]] = 224
        mem[64] = mem[64] + 256
        _802 = sha3(mem[_800 + 32 len mem[_800]])
        if not stor5EF:
            revert with 0, 18
        if sha3(mem[_800 + 32 len mem[_800]]) % stor5EF >= 1500:
            revert with 0, 50
        if stor5EF < 1:
            revert with 0, 17
        if sha3(mem[_800 + 32 len mem[_800]]) % stor5EF != stor5EF - 1:
            if stor5EF - 1 >= 1500:
                revert with 0, 50
            if sha3(mem[_800 + 32 len mem[_800]]) % stor5EF >= 1500:
                revert with 0, 50
            if lastReflections[stor5EF]:
                stor19[sha3(mem[_800 + 32 len mem[_800]]) % stor5EF] = lastReflections[stor5EF]
            else:
                stor19[sha3(mem[_800 + 32 len mem[_800]]) % stor5EF] = stor5EF - 1
        if not stor5EF:
            revert with 0, 17
        stor5EF--
        mem[64] = _799 + 288
        mem[_799 + 256] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor19[sha3(mem[_800 + 32 len mem[_800]]) % stor5EF]:
            if ownerOf[stor19[_802 % stor5EF]]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor19[_802 % stor5EF]] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor19[_802 % stor5EF]
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor19[_802 % stor5EF]
                    stor7[stor19[_802 % stor5EF]] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor19[_802 % stor5EF]] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor19[_802 % stor5EF]]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor19[_802 % stor5EF]]
                stor9[stor19[_802 % stor5EF]] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[stor19[_802 % stor5EF]] = msg.sender
            emit Transfer(0, msg.sender, stor19[_802 % stor5EF]);
            if ext_code.size(msg.sender):
                mem[_799 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_799 + 292] = msg.sender
                mem[_799 + 324] = 0
                mem[_799 + 356] = stor19[_802 % stor5EF]
                mem[_799 + 388] = 128
                mem[_799 + 420] = 0
                s = 0
                while s < 0:
                    mem[s + _799 + 452] = mem[s + _799 + 288]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor19[_802 % stor5EF], 128, 0
                mem[_799 + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _799 + ceil32(return_data.size) + 288
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = stor19[_802 % stor5EF]
            mem[32] = 18
            lastReflections[stor19[_802 % stor5EF]] = currentReflection
        else:
            if ownerOf[_802 % stor5EF]:
                revert with 0, 'ERC721: token already minted'
            stor9[_802 % stor5EF] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = _802 % stor5EF
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = _802 % stor5EF
                    stor7[_802 % stor5EF] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[_802 % stor5EF] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[_802 % stor5EF]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[_802 % stor5EF]
                stor9[_802 % stor5EF] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[_802 % stor5EF] = msg.sender
            emit Transfer(0, msg.sender, _802 % stor5EF);
            if ext_code.size(msg.sender):
                mem[_799 + 288] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_799 + 292] = msg.sender
                mem[_799 + 324] = 0
                mem[_799 + 356] = _802 % stor5EF
                mem[_799 + 388] = 128
                mem[_799 + 420] = 0
                s = 0
                while s < 0:
                    mem[s + _799 + 452] = mem[s + _799 + 288]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, _802 % stor5EF, 128, 0
                mem[_799 + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _799 + ceil32(return_data.size) + 288
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = _802 % stor5EF
            mem[32] = 18
            lastReflections[_802 % stor5EF] = currentReflection
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if msg.value and reflectionAmount > -1 / msg.value:
        revert with 0, 17
    if totalReflection > !(msg.value * reflectionAmount / 100):
        revert with 0, 17
    totalReflection += msg.value * reflectionAmount / 100
    if not tokenByIndex.length:
        revert with 0, 18
    if currentReflection > !(msg.value * reflectionAmount / 100 / tokenByIndex.length):
        revert with 0, 17
    currentReflection += msg.value * reflectionAmount / 100 / tokenByIndex.length
    emit Reflection((msg.value * reflectionAmount / 100));
    if msg.value < msg.value * reflectionAmount / 100:
        revert with 0, 17
    call treasuryAddress with:
       value msg.value - (msg.value * reflectionAmount / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
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
                    _119 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_119) > _119:
                        mem[_119 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_119) + -mem[64] + 70
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
                _123 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_123) > _123:
                    mem[_123 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_123) + -mem[64] + 70
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
        _356 = mem[64]
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _384 = mem[96]
                mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_384) <= _384:
                    _596 = mem[64]
                    mem[64] = _384 + _356 + (uint255(stor11.length) * 0.5) + 37
                    mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 37] = 32
                    _632 = mem[_596]
                    mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 69] = mem[_596]
                    mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_632)] = mem[_596 + 32 len ceil32(_632)]
                    if ceil32(_632) > _632:
                        mem[_632 + _384 + _356 + (uint255(stor11.length) * 0.5) + 101] = 0
                    return 32, mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_632) + 32]
                _597 = mem[64]
                mem[64] = _384 + _356 + (uint255(stor11.length) * 0.5) + 37
                mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 37] = 32
                _633 = mem[_597]
                mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 69] = mem[_597]
                mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_633)] = mem[_597 + 32 len ceil32(_633)]
                if ceil32(_633) > _633:
                    mem[_633 + _384 + _356 + (uint255(stor11.length) * 0.5) + 101] = 0
                return 32, mem[_384 + _356 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_633) + 32]
            if bool(stor11.length) != 1:
                _388 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_388] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_388) <= _388:
                    _599 = mem[64]
                    mem[64] = _388 + 5
                    mem[_388 + 5] = 32
                    _634 = mem[_599]
                    mem[_388 + 37] = mem[_599]
                    mem[_388 + 69 len ceil32(_634)] = mem[_599 + 32 len ceil32(_634)]
                    if ceil32(_634) > _634:
                        mem[_634 + _388 + 69] = 0
                    return 32, mem[_388 + 37 len ceil32(_634) + 32]
                _600 = mem[64]
                mem[64] = _388 + 5
                mem[_388 + 5] = 32
                _635 = mem[_600]
                mem[_388 + 37] = mem[_600]
                mem[_388 + 69 len ceil32(_635)] = mem[_600 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_635 + _388 + 69] = 0
                return 32, mem[_388 + 37 len ceil32(_635) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < uint255(stor11.length) * 0.5:
                mem[idx + _356 + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _584 = mem[96]
            mem[_356 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_584) <= _584:
                _796 = mem[64]
                mem[64] = _584 + _356 + (uint255(stor11.length) * 0.5) + 37
                mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 37] = 32
                _812 = mem[_796]
                mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 69] = mem[_796]
                mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_812)] = mem[_796 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_812 + _584 + _356 + (uint255(stor11.length) * 0.5) + 101] = 0
                return 32, mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_812) + 32]
            _797 = mem[64]
            mem[64] = _584 + _356 + (uint255(stor11.length) * 0.5) + 37
            mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 37] = 32
            _813 = mem[_797]
            mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 69] = mem[_797]
            mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_813)] = mem[_797 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_813 + _584 + _356 + (uint255(stor11.length) * 0.5) + 101] = 0
            return 32, mem[_584 + _356 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_813) + 32]
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _389 = mem[96]
            mem[mem[64] + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor11.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _601 = mem[64]
                mem[64] = _389 + _356 + stor11.length.field_1 + 37
                mem[_389 + _356 + stor11.length.field_1 + 37] = 32
                _636 = mem[_601]
                mem[_389 + _356 + stor11.length.field_1 + 69] = mem[_601]
                mem[_389 + _356 + stor11.length.field_1 + 101 len ceil32(_636)] = mem[_601 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _389 + _356 + stor11.length.field_1 + 101] = 0
                return 32, mem[_389 + _356 + stor11.length.field_1 + 69 len ceil32(_636) + 32]
            _602 = mem[64]
            mem[64] = _389 + _356 + stor11.length.field_1 + 37
            mem[_389 + _356 + stor11.length.field_1 + 37] = 32
            _637 = mem[_602]
            mem[_389 + _356 + stor11.length.field_1 + 69] = mem[_602]
            mem[_389 + _356 + stor11.length.field_1 + 101 len ceil32(_637)] = mem[_602 + 32 len ceil32(_637)]
            if ceil32(_637) > _637:
                mem[_637 + _389 + _356 + stor11.length.field_1 + 101] = 0
            return 32, mem[_389 + _356 + stor11.length.field_1 + 69 len ceil32(_637) + 32]
        if bool(stor11.length) != 1:
            _396 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_396] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_396) <= _396:
                _604 = mem[64]
                mem[64] = _396 + 5
                mem[_396 + 5] = 32
                _638 = mem[_604]
                mem[_396 + 37] = mem[_604]
                mem[_396 + 69 len ceil32(_638)] = mem[_604 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _396 + 69] = 0
                return 32, mem[_396 + 37 len ceil32(_638) + 32]
            _605 = mem[64]
            mem[64] = _396 + 5
            mem[_396 + 5] = 32
            _639 = mem[_605]
            mem[_396 + 37] = mem[_605]
            mem[_396 + 69 len ceil32(_639)] = mem[_605 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_639 + _396 + 69] = 0
            return 32, mem[_396 + 37 len ceil32(_639) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1:
            mem[idx + _356 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _585 = mem[96]
        mem[_356 + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_585 + _356 + stor11.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_585) <= _585:
            _798 = mem[64]
            mem[64] = _585 + _356 + stor11.length.field_1 + 37
            mem[_585 + _356 + stor11.length.field_1 + 37] = 32
            _814 = mem[_798]
            mem[_585 + _356 + stor11.length.field_1 + 69] = mem[_798]
            mem[_585 + _356 + stor11.length.field_1 + 101 len ceil32(_814)] = mem[_798 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_814 + _585 + _356 + stor11.length.field_1 + 101] = 0
            return 32, mem[_585 + _356 + stor11.length.field_1 + 69 len ceil32(_814) + 32]
        _799 = mem[64]
        mem[64] = _585 + _356 + stor11.length.field_1 + 37
        mem[_585 + _356 + stor11.length.field_1 + 37] = 32
        _815 = mem[_799]
        mem[_585 + _356 + stor11.length.field_1 + 69] = mem[_799]
        mem[_585 + _356 + stor11.length.field_1 + 101 len ceil32(_815)] = mem[_799 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_815 + _585 + _356 + stor11.length.field_1 + 101] = 0
        return 32, mem[_585 + _356 + stor11.length.field_1 + 69 len ceil32(_815) + 32]
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
    _357 = mem[64]
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _386 = mem[96]
            mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_386) <= _386:
                _606 = mem[64]
                mem[64] = _386 + _357 + (uint255(stor11.length) * 0.5) + 37
                mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 37] = 32
                _640 = mem[_606]
                mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 69] = mem[_606]
                mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_640)] = mem[_606 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_640 + _386 + _357 + (uint255(stor11.length) * 0.5) + 101] = 0
                return 32, mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_640) + 32]
            _607 = mem[64]
            mem[64] = _386 + _357 + (uint255(stor11.length) * 0.5) + 37
            mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 37] = 32
            _641 = mem[_607]
            mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 69] = mem[_607]
            mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_641)] = mem[_607 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_641 + _386 + _357 + (uint255(stor11.length) * 0.5) + 101] = 0
            return 32, mem[_386 + _357 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_641) + 32]
        if bool(stor11.length) != 1:
            _390 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_390] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_390) <= _390:
                _609 = mem[64]
                mem[64] = _390 + 5
                mem[_390 + 5] = 32
                _642 = mem[_609]
                mem[_390 + 37] = mem[_609]
                mem[_390 + 69 len ceil32(_642)] = mem[_609 + 32 len ceil32(_642)]
                if ceil32(_642) > _642:
                    mem[_642 + _390 + 69] = 0
                return 32, mem[_390 + 37 len ceil32(_642) + 32]
            _610 = mem[64]
            mem[64] = _390 + 5
            mem[_390 + 5] = 32
            _643 = mem[_610]
            mem[_390 + 37] = mem[_610]
            mem[_390 + 69 len ceil32(_643)] = mem[_610 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_643 + _390 + 69] = 0
            return 32, mem[_390 + 37 len ceil32(_643) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < uint255(stor11.length) * 0.5:
            mem[idx + _357 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _586 = mem[96]
        mem[_357 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_586) <= _586:
            _800 = mem[64]
            mem[64] = _586 + _357 + (uint255(stor11.length) * 0.5) + 37
            mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 37] = 32
            _816 = mem[_800]
            mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 69] = mem[_800]
            mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_816)] = mem[_800 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _586 + _357 + (uint255(stor11.length) * 0.5) + 101] = 0
            return 32, mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_816) + 32]
        _801 = mem[64]
        mem[64] = _586 + _357 + (uint255(stor11.length) * 0.5) + 37
        mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 37] = 32
        _817 = mem[_801]
        mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 69] = mem[_801]
        mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_817)] = mem[_801 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_817 + _586 + _357 + (uint255(stor11.length) * 0.5) + 101] = 0
        return 32, mem[_586 + _357 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_817) + 32]
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor11.length):
        mem[mem[64] + 32] = Mask(248, 8, stor11.length)
        _391 = mem[96]
        mem[mem[64] + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor11.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _611 = mem[64]
            mem[64] = _391 + _357 + stor11.length.field_1 + 37
            mem[_391 + _357 + stor11.length.field_1 + 37] = 32
            _644 = mem[_611]
            mem[_391 + _357 + stor11.length.field_1 + 69] = mem[_611]
            mem[_391 + _357 + stor11.length.field_1 + 101 len ceil32(_644)] = mem[_611 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _391 + _357 + stor11.length.field_1 + 101] = 0
            return 32, mem[_391 + _357 + stor11.length.field_1 + 69 len ceil32(_644) + 32]
        _612 = mem[64]
        mem[64] = _391 + _357 + stor11.length.field_1 + 37
        mem[_391 + _357 + stor11.length.field_1 + 37] = 32
        _645 = mem[_612]
        mem[_391 + _357 + stor11.length.field_1 + 69] = mem[_612]
        mem[_391 + _357 + stor11.length.field_1 + 101 len ceil32(_645)] = mem[_612 + 32 len ceil32(_645)]
        if ceil32(_645) > _645:
            mem[_645 + _391 + _357 + stor11.length.field_1 + 101] = 0
        return 32, mem[_391 + _357 + stor11.length.field_1 + 69 len ceil32(_645) + 32]
    if bool(stor11.length) != 1:
        _398 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_398] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_398) <= _398:
            _614 = mem[64]
            mem[64] = _398 + 5
            mem[_398 + 5] = 32
            _646 = mem[_614]
            mem[_398 + 37] = mem[_614]
            mem[_398 + 69 len ceil32(_646)] = mem[_614 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _398 + 69] = 0
            return 32, mem[_398 + 37 len ceil32(_646) + 32]
        _615 = mem[64]
        mem[64] = _398 + 5
        mem[_398 + 5] = 32
        _647 = mem[_615]
        mem[_398 + 37] = mem[_615]
        mem[_398 + 69 len ceil32(_647)] = mem[_615 + 32 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_647 + _398 + 69] = 0
        return 32, mem[_398 + 37 len ceil32(_647) + 32]
    mem[0] = 11
    idx = 0
    s = 0
    while idx < stor11.length.field_1:
        mem[idx + _357 + 32] = stor11[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _587 = mem[96]
    mem[_357 + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_587 + _357 + stor11.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_587) <= _587:
        _802 = mem[64]
        mem[64] = _587 + _357 + stor11.length.field_1 + 37
        mem[_587 + _357 + stor11.length.field_1 + 37] = 32
        _818 = mem[_802]
        mem[_587 + _357 + stor11.length.field_1 + 69] = mem[_802]
        mem[_587 + _357 + stor11.length.field_1 + 101 len ceil32(_818)] = mem[_802 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _587 + _357 + stor11.length.field_1 + 101] = 0
        return 32, mem[_587 + _357 + stor11.length.field_1 + 69 len ceil32(_818) + 32]
    _803 = mem[64]
    mem[64] = _587 + _357 + stor11.length.field_1 + 37
    mem[_587 + _357 + stor11.length.field_1 + 37] = 32
    _819 = mem[_803]
    mem[_587 + _357 + stor11.length.field_1 + 69] = mem[_803]
    mem[_587 + _357 + stor11.length.field_1 + 101 len ceil32(_819)] = mem[_803 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_819 + _587 + _357 + stor11.length.field_1 + 101] = 0
    return 32, mem[_587 + _357 + stor11.length.field_1 + 69 len ceil32(_819) + 32]
}



}
