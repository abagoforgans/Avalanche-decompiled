contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
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
address stor10;
uint256 stor11;
address owner;
uint256 tokenCount;
uint256 sub_e0c4cc6c;
mapping of uint256 stor15;
uint256 stor16;
uint256 tokensMinted;
uint256 currentSupply;
array of struct stor19;
array of struct stor20;
array of struct stor21;
uint256 sub_29680398;
uint256 sub_a31173db;
uint256 maxTeamSupply;
uint256 sub_3b0842e8;
uint256 sub_1649a784;
uint8 stor27;
address sub_3e860ff2Address; offset 8
uint256 stor27;
address sub_f0beb13aAddress;
address sub_03b9f742Address;
uint256 royaltyValue;

function sub_03b9f742(?) {
    return sub_03b9f742Address
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_1649a784(?) {
    return sub_1649a784
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_29680398(?) {
    return sub_29680398
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3b0842e8(?) {
    return sub_3b0842e8
}

function sub_3e860ff2(?) {
    return sub_3e860ff2Address
}

function maxTeamSupply() {
    return maxTeamSupply
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function royaltyValue() {
    return royaltyValue
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function tokensMinted() {
    return tokensMinted
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function currentSupply() {
    return currentSupply
}

function owner() {
    return owner
}

function tokenCount() {
    return tokenCount
}

function sub_a31173db(?) {
    return sub_a31173db
}

function sub_e0c4cc6c(?) {
    return sub_e0c4cc6c
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function saleIsActive() {
    return bool(uint8(stor27.field_0))
}

function sub_f0beb13a(?) {
    return sub_f0beb13aAddress
}

function _fallback() payable {
    revert
}

function availableTokenCount() {
    if sub_e0c4cc6c < tokenCount:
        revert with 'NH{q', 17
    return (sub_e0c4cc6c - tokenCount)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8c81c751(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTeamSupply = arg1
}

function flipSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor27.field_0) = not bool(uint8(stor27.field_0)) or Mask(248, 8, uint256(stor27.field_0))
}

function sub_ea92a4ed(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3e860ff2Address = address(arg1)
}

function sub_ee83d2d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f0beb13aAddress = address(arg1)
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and stor11 > -1 / arg2:
        revert with 'NH{q', 17
    return stor10, arg2 * stor11 / 10000
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    sub_29680398 = 10^18 * arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setRoyalties(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03b9f742Address = arg1
    royaltyValue = arg2
    if arg2 > 10000:
        revert with 0, 'ERC2981Royalties: Too high'
    stor10 = arg1
    stor11 = arg2
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) == *U Z:
            return True
        if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
            return True
        if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
            return True
        if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
            return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseExtension(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor21.length):
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setProvenanceHash(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    if stor7[arg1] != balanceOf[stor2[arg1]] - 1:
        tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
        stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
    stor7[arg1] = 0
    tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseURI() {
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                mem[128] = 256 * stor20.length.field_8
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                mem[128] = 256 * stor20.length.field_8
        mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
        if ceil32(stor20.length.field_1) > stor20.length.field_1:
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
    if ceil32(stor20.length.field_1) > stor20.length.field_1:
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
    return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
}

function sub_7a148bdc(?) {
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor19.length):
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)])
                mem[128] = 256 * stor19.length.field_8
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)])
                mem[128] = 256 * stor19.length.field_8
        mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) > stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) > stor19.length.field_1:
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
}

function baseExtension() {
    if bool(stor21.length):
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor21.length):
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor21.length.field_1:
                if 31 < stor21.length.field_1:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while stor21.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length.field_1), data=mem[128 len ceil32(stor21.length.field_1)])
                mem[128] = 256 * stor21.length.field_8
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor21.length.field_1:
                if 31 < stor21.length.field_1:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while stor21.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length.field_1), data=mem[128 len ceil32(stor21.length.field_1)])
                mem[128] = 256 * stor21.length.field_8
        mem[ceil32(stor21.length.field_1) + 192 len ceil32(stor21.length.field_1)] = mem[128 len ceil32(stor21.length.field_1)]
        if ceil32(stor21.length.field_1) > stor21.length.field_1:
            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor21.length.field_1), data=mem[128 len ceil32(stor21.length.field_1)], mem[(2 * ceil32(stor21.length.field_1)) + 192 len 2 * ceil32(stor21.length.field_1)]), 
    if bool(stor21.length) == stor21.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor21.length):
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor21.length.field_1:
            if 31 < stor21.length.field_1:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while stor21.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor21.length.field_1:
            if 31 < stor21.length.field_1:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while stor21.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    mem[ceil32(stor21.length.field_1) + 192 len ceil32(stor21.length.field_1)] = mem[128 len ceil32(stor21.length.field_1)]
    if ceil32(stor21.length.field_1) > stor21.length.field_1:
        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 192] = 0
    return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)], mem[(2 * ceil32(stor21.length.field_1)) + 192 len 2 * ceil32(stor21.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function teamMint(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_3b0842e8 >= maxTeamSupply:
        revert with 0, 'Max team NFTs have been issued'
    if tokensMinted > -arg1 - 1:
        revert with 'NH{q', 17
    if tokensMinted + arg1 > sub_a31173db:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are not enough NFT's to fulfil your order'
    if sub_3b0842e8 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_3b0842e8 + arg1 > maxTeamSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are not enough NFT's to fulfil your order'
    idx = 1
    while idx <= arg1:
        tokensMinted++
        if sub_e0c4cc6c < tokenCount:
            revert with 'NH{q', 17
        if sub_e0c4cc6c - tokenCount <= 0:
            revert with 0, 'No more tokens available'
        if sub_e0c4cc6c < tokenCount:
            revert with 'NH{q', 17
        _379 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        mem[mem[64] + 52] = address(block.coinbase)
        mem[mem[64] + 72] = block.difficulty
        mem[mem[64] + 104] = block.gas_limit
        mem[mem[64] + 136] = block.timestamp
        _380 = mem[64]
        mem[mem[64]] = 136
        mem[64] = mem[64] + 168
        _382 = sha3(mem[_380 + 32 len mem[_380]])
        if not sub_e0c4cc6c - tokenCount:
            revert with 'NH{q', 18
        mem[0] = sha3(mem[_380 + 32 len mem[_380]]) % sub_e0c4cc6c - tokenCount
        if sub_e0c4cc6c - tokenCount < 1:
            revert with 'NH{q', 17
        if sub_e0c4cc6c - tokenCount < 1:
            revert with 'NH{q', 17
        if stor15[stor14 + -stor13 - 1]:
            stor15[_382 % stor14 - stor13] = stor15[stor14 + -stor13 - 1]
        else:
            stor15[_382 % stor14 - stor13] = sub_e0c4cc6c + -tokenCount - 1
        tokenCount++
        if stor15[mem[0]]:
            if stor15[_382 % stor14 - stor13] > -stor16 - 1:
                revert with 'NH{q', 17
            mem[64] = _379 + 200
            mem[_379 + 168] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor15[_382 % stor14 - stor13] + stor16]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor15[_382 % stor14 - stor13] + stor16] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor15[_382 % stor14 - stor13] + stor16
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor15[_382 % stor14 - stor13] + stor16
                stor7[stor15[_382 % stor14 - stor13] + stor16] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[stor15[_382 % stor14 - stor13] + stor16] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[stor15[_382 % stor14 - stor13] + stor16]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor15[_382 % stor14 - stor13] + stor16]
                stor9[stor15[_382 % stor14 - stor13] + stor16] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor15[_382 % stor14 - stor13] + stor16
            mem[32] = 2
            ownerOf[stor15[_382 % stor14 - stor13] + stor16] = msg.sender
            emit Transfer(0, msg.sender, stor15[_382 % stor14 - stor13] + stor16);
            if ext_code.size(msg.sender) > 0:
                mem[_379 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_379 + 204] = msg.sender
                mem[_379 + 236] = 0
                mem[_379 + 268] = stor15[_382 % stor14 - stor13] + stor16
                mem[_379 + 300] = 128
                mem[_379 + 332] = 0
                s = 0
                while s < 0:
                    mem[_379 + s + 364] = mem[_379 + s + 200]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor15[_382 % stor14 - stor13] + stor16, 128, 0
                mem[_379 + 200] = ext_call.return_data[0]
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
                mem[64] = _379 + ceil32(return_data.size) + 200
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if _382 % sub_e0c4cc6c - tokenCount > -stor16 - 1:
                revert with 'NH{q', 17
            mem[64] = _379 + 200
            mem[_379 + 168] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[(_382 % stor14 - stor13) + stor16]:
                revert with 0, 'ERC721: token already minted'
            stor9[(_382 % stor14 - stor13) + stor16] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = (_382 % sub_e0c4cc6c - tokenCount) + stor16
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_382 % sub_e0c4cc6c - tokenCount) + stor16
                stor7[(_382 % stor14 - stor13) + stor16] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[(_382 % stor14 - stor13) + stor16] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[(_382 % stor14 - stor13) + stor16]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[(_382 % stor14 - stor13) + stor16]
                stor9[(_382 % stor14 - stor13) + stor16] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = (_382 % sub_e0c4cc6c - tokenCount) + stor16
            mem[32] = 2
            ownerOf[(_382 % stor14 - stor13) + stor16] = msg.sender
            emit Transfer(0, msg.sender, (_382 % sub_e0c4cc6c - tokenCount) + stor16);
            if ext_code.size(msg.sender) > 0:
                mem[_379 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_379 + 204] = msg.sender
                mem[_379 + 236] = 0
                mem[_379 + 268] = (_382 % sub_e0c4cc6c - tokenCount) + stor16
                mem[_379 + 300] = 128
                mem[_379 + 332] = 0
                s = 0
                while s < 0:
                    mem[_379 + s + 364] = mem[_379 + s + 200]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, (_382 % sub_e0c4cc6c - tokenCount) + stor16, 128, 0
                mem[_379 + 200] = ext_call.return_data[0]
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
                mem[64] = _379 + ceil32(return_data.size) + 200
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if sub_3b0842e8 > -2:
            revert with 'NH{q', 17
        sub_3b0842e8++
        if currentSupply == -1:
            revert with 'NH{q', 17
        currentSupply++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor27.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unable to mint right now - Minting has been Paused'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only mint 10 tokens at a time'
    if arg1 > sub_1649a784:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only mint 10 tokens at a time'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint amount has to be more than 0'
    if tokensMinted > -arg1 - 1:
        revert with 'NH{q', 17
    if tokensMinted + arg1 > sub_a31173db:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are not enough NFT's to fulfil your order'
    if sub_29680398 and arg1 > -1 / sub_29680398:
        revert with 'NH{q', 17
    if msg.value < sub_29680398 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please ensure the correct price is sent'
    if msg.value and 85 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value and 15 > -1 / msg.value:
        revert with 'NH{q', 17
    call sub_3e860ff2Address with:
       value 85 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_f0beb13aAddress with:
       value 15 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    idx = 1
    while idx <= arg1:
        tokensMinted++
        if sub_e0c4cc6c < tokenCount:
            revert with 'NH{q', 17
        if sub_e0c4cc6c - tokenCount <= 0:
            revert with 0, 'No more tokens available'
        if sub_e0c4cc6c < tokenCount:
            revert with 'NH{q', 17
        _387 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        mem[mem[64] + 52] = address(block.coinbase)
        mem[mem[64] + 72] = block.difficulty
        mem[mem[64] + 104] = block.gas_limit
        mem[mem[64] + 136] = block.timestamp
        _388 = mem[64]
        mem[mem[64]] = 136
        mem[64] = mem[64] + 168
        _390 = sha3(mem[_388 + 32 len mem[_388]])
        if not sub_e0c4cc6c - tokenCount:
            revert with 'NH{q', 18
        mem[0] = sha3(mem[_388 + 32 len mem[_388]]) % sub_e0c4cc6c - tokenCount
        if sub_e0c4cc6c - tokenCount < 1:
            revert with 'NH{q', 17
        if sub_e0c4cc6c - tokenCount < 1:
            revert with 'NH{q', 17
        if stor15[stor14 + -stor13 - 1]:
            stor15[_390 % stor14 - stor13] = stor15[stor14 + -stor13 - 1]
        else:
            stor15[_390 % stor14 - stor13] = sub_e0c4cc6c + -tokenCount - 1
        tokenCount++
        if stor15[mem[0]]:
            if stor15[_390 % stor14 - stor13] > -stor16 - 1:
                revert with 'NH{q', 17
            mem[64] = _387 + 200
            mem[_387 + 168] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor15[_390 % stor14 - stor13] + stor16]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor15[_390 % stor14 - stor13] + stor16] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor15[_390 % stor14 - stor13] + stor16
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor15[_390 % stor14 - stor13] + stor16
                stor7[stor15[_390 % stor14 - stor13] + stor16] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[stor15[_390 % stor14 - stor13] + stor16] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[stor15[_390 % stor14 - stor13] + stor16]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor15[_390 % stor14 - stor13] + stor16]
                stor9[stor15[_390 % stor14 - stor13] + stor16] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor15[_390 % stor14 - stor13] + stor16
            mem[32] = 2
            ownerOf[stor15[_390 % stor14 - stor13] + stor16] = msg.sender
            emit Transfer(0, msg.sender, stor15[_390 % stor14 - stor13] + stor16);
            if ext_code.size(msg.sender) > 0:
                mem[_387 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_387 + 204] = msg.sender
                mem[_387 + 236] = 0
                mem[_387 + 268] = stor15[_390 % stor14 - stor13] + stor16
                mem[_387 + 300] = 128
                mem[_387 + 332] = 0
                s = 0
                while s < 0:
                    mem[_387 + s + 364] = mem[_387 + s + 200]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor15[_390 % stor14 - stor13] + stor16, 128, 0
                mem[_387 + 200] = ext_call.return_data[0]
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
                mem[64] = _387 + ceil32(return_data.size) + 200
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if _390 % sub_e0c4cc6c - tokenCount > -stor16 - 1:
                revert with 'NH{q', 17
            mem[64] = _387 + 200
            mem[_387 + 168] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[(_390 % stor14 - stor13) + stor16]:
                revert with 0, 'ERC721: token already minted'
            stor9[(_390 % stor14 - stor13) + stor16] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = (_390 % sub_e0c4cc6c - tokenCount) + stor16
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_390 % sub_e0c4cc6c - tokenCount) + stor16
                stor7[(_390 % stor14 - stor13) + stor16] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[(_390 % stor14 - stor13) + stor16] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[(_390 % stor14 - stor13) + stor16]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[(_390 % stor14 - stor13) + stor16]
                stor9[(_390 % stor14 - stor13) + stor16] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = (_390 % sub_e0c4cc6c - tokenCount) + stor16
            mem[32] = 2
            ownerOf[(_390 % stor14 - stor13) + stor16] = msg.sender
            emit Transfer(0, msg.sender, (_390 % sub_e0c4cc6c - tokenCount) + stor16);
            if ext_code.size(msg.sender) > 0:
                mem[_387 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_387 + 204] = msg.sender
                mem[_387 + 236] = 0
                mem[_387 + 268] = (_390 % sub_e0c4cc6c - tokenCount) + stor16
                mem[_387 + 300] = 128
                mem[_387 + 332] = 0
                s = 0
                while s < 0:
                    mem[_387 + s + 364] = mem[_387 + s + 200]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, (_390 % sub_e0c4cc6c - tokenCount) + stor16, 128, 0
                mem[_387 + 200] = ext_call.return_data[0]
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
                mem[64] = _387 + ceil32(return_data.size) + 200
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if currentSupply == -1:
            revert with 'NH{q', 17
        currentSupply++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
