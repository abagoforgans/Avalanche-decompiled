contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const ADMIN_ROLE = 0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
mapping of struct stor12;
address owner;
uint256 totalItem;
address stor15;
array of uint256 stor16;
uint256 sub_9075a3bf;
uint256 sub_638024c3;
uint256 sub_4ec6de0b;
uint256 sub_d008b056;
mapping of uint256 mintCount;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function sub_4ec6de0b(?) {
    return sub_4ec6de0b
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_638024c3(?) {
    return sub_638024c3
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

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function sub_9075a3bf(?) {
    return sub_9075a3bf
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function totalItem() {
    return totalItem
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_d008b056(?) {
    return sub_d008b056
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function mintCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mintCount[arg1]
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_28b68622(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dogeon: must have admin role to change price'
    sub_4ec6de0b = arg1
}

function sub_eda37870(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dogeon: must have admin role to change price'
    sub_638024c3 = arg1
}

function setPriceOne(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dogeon: must have admin role to change price'
    sub_9075a3bf = arg1
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
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor7[stor4[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0:
        roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0 = 1
        emit RoleGranted(0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec, arg1, msg.sender);
    if not roleMember[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][1][address(arg1)].field_0:
        roleMember[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_0++
        roleMember[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][roleMember[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_0].field_0 = arg1
        roleMember[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][roleMember[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_0].field_160 = 0
        roleMember[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][1][address(arg1)].field_0 = roleMember[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_0
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0, 'Dogeon: must have admin role to change base URI'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0, 'Dogeon: must have admin role to change token URI'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while stor12[arg1].field_1 + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while stor12[arg1].field_1 + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function mintOne() payable {
    if sub_9075a3bf != msg.value:
        revert with 0, 'Dogeon: must send correct price'
    if totalItem >= sub_d008b056:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dogeon: all Dogeon have been minted'
    if mintCount[msg.sender] > -2:
        revert with 0, 17
    mintCount[msg.sender]++
    totalItem++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor14]:
        revert with 0, 'ERC721: token already minted'
    stor11[stor14] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = totalItem
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = totalItem
            stor9[stor14] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[stor14] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[stor14]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor14]
        stor11[stor14] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor14] = msg.sender
    emit Transfer(0, msg.sender, totalItem);
    emit 0xfa874085: msg.sender, mintCount[msg.sender]
    call stor15 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintFive() payable {
    if sub_4ec6de0b > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if 5 * sub_4ec6de0b != msg.value:
        revert with 0, 'Dogeon: must send correct price'
    if 5 > !totalItem:
        revert with 0, 17
    if totalItem + 5 >= sub_d008b056:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dogeon: not enough Dogeon left to mint five'
    if mintCount[msg.sender] > -2:
        revert with 0, 17
    mintCount[msg.sender]++
    idx = 0
    while idx < 5:
        totalItem++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor14] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = totalItem
        if msg.sender:
            if msg.sender:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = totalItem
                stor9[stor14] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[stor14] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[stor14]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor14]
            stor11[stor14] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = totalItem
        mem[32] = 4
        ownerOf[stor14] = msg.sender
        emit Transfer(0, msg.sender, totalItem);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0xfa874085: msg.sender, mintCount[msg.sender]
    call stor15 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintTen() payable {
    if sub_638024c3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if 10 * sub_638024c3 != msg.value:
        revert with 0, 'Dogeon: must send correct price'
    if 10 > !totalItem:
        revert with 0, 17
    if totalItem + 10 >= sub_d008b056:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dogeon: not enough Dogeon left to mint ten'
    if mintCount[msg.sender] > -2:
        revert with 0, 17
    mintCount[msg.sender]++
    idx = 0
    while idx < 10:
        totalItem++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor14] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = totalItem
        if msg.sender:
            if msg.sender:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = totalItem
                stor9[stor14] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[stor14] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[stor14]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor14]
            stor11[stor14] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = totalItem
        mem[32] = 4
        ownerOf[stor14] = msg.sender
        emit Transfer(0, msg.sender, totalItem);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0xfa874085: msg.sender, mintCount[msg.sender]
    call stor15 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    else:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        else:
            if msg.sender == ownerOf[arg3]:
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                else:
                    if ownerOf[arg3] != arg1:
                        revert with 0, 'ERC721: transfer of token that is not own'
                    else:
                        if not arg2:
                            revert with 0, 'ERC721: transfer to the zero address'
                        else:
                            if arg1:
                                if arg1 == arg2:
                                    if arg2:
                                        if arg2 == arg1:
                                            approved[arg3] = 0
                                            if not ownerOf[arg3]:
                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                            else:
                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                if balanceOf[address(arg1)] < 1:
                                                    revert with 0, 17
                                                else:
                                                    balanceOf[address(arg1)]--
                                                    if balanceOf[address(arg2)] > -2:
                                                        revert with 0, 17
                                                    else:
                                                        balanceOf[address(arg2)]++
                                                        ownerOf[arg3] = arg2
                                                        emit Transfer(arg1, arg2, arg3);
                                                        if not ext_code.size(arg2):
                                                        else:
                                                            require ext_code.size(arg2)
                                                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                            if not ext_call.success:
                                                                if not return_data.size:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    if not return_data.size:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            else:
                                                tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                stor9[arg3] = balanceOf[address(arg2)]
                                                approved[arg3] = 0
                                                if not ownerOf[arg3]:
                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                else:
                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                    if balanceOf[address(arg1)] < 1:
                                                        revert with 0, 17
                                                    else:
                                                        balanceOf[address(arg1)]--
                                                        if balanceOf[address(arg2)] > -2:
                                                            revert with 0, 17
                                                        else:
                                                            balanceOf[address(arg2)]++
                                                            ownerOf[arg3] = arg2
                                                            emit Transfer(arg1, arg2, arg3);
                                                            if not ext_code.size(arg2):
                                                            else:
                                                                require ext_code.size(arg2)
                                                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                if not ext_call.success:
                                                                    if not return_data.size:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        if not return_data.size:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        else:
                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                if stor11[arg3] >= tokenByIndex.length:
                                                    revert with 0, 50
                                                else:
                                                    tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                    stor11[stor10[stor10.length]] = stor11[arg3]
                                                    stor11[arg3] = 0
                                                    if not tokenByIndex.length:
                                                        revert with 0, 49
                                                    else:
                                                        tokenByIndex[tokenByIndex.length] = 0
                                                        tokenByIndex.length--
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if not ext_code.size(arg2):
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                else:
                                    if not arg1:
                                        revert with 0, 'ERC721: balance query for the zero address'
                                    else:
                                        if balanceOf[address(arg1)] < 1:
                                            revert with 0, 17
                                        else:
                                            if balanceOf[address(arg1)] - 1 == stor9[arg3]:
                                                stor9[arg3] = 0
                                                tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
                                                if arg2:
                                                    if arg2 == arg1:
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if not ext_code.size(arg2):
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                    else:
                                                        if not arg2:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                            stor9[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if not ext_code.size(arg2):
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                else:
                                                    if tokenByIndex.length < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            if stor11[arg3] >= tokenByIndex.length:
                                                                revert with 0, 50
                                                            else:
                                                                tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                stor11[stor10[stor10.length]] = stor11[arg3]
                                                                stor11[arg3] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 0, 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if not ext_code.size(arg2):
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                            else:
                                                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                                                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
                                                stor9[arg3] = 0
                                                tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
                                                if arg2:
                                                    if arg2 == arg1:
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if not ext_code.size(arg2):
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                    else:
                                                        if not arg2:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                            stor9[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if not ext_code.size(arg2):
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                else:
                                                    if tokenByIndex.length < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            if stor11[arg3] >= tokenByIndex.length:
                                                                revert with 0, 50
                                                            else:
                                                                tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                stor11[stor10[stor10.length]] = stor11[arg3]
                                                                stor11[arg3] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 0, 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if not ext_code.size(arg2):
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                            else:
                                stor11[arg3] = tokenByIndex.length
                                tokenByIndex.length++
                                tokenByIndex[tokenByIndex.length] = arg3
                                if arg2:
                                    if arg2 == arg1:
                                        approved[arg3] = 0
                                        if not ownerOf[arg3]:
                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                        else:
                                            emit Approval(ownerOf[arg3], 0, arg3);
                                            if balanceOf[address(arg1)] < 1:
                                                revert with 0, 17
                                            else:
                                                balanceOf[address(arg1)]--
                                                if balanceOf[address(arg2)] > -2:
                                                    revert with 0, 17
                                                else:
                                                    balanceOf[address(arg2)]++
                                                    ownerOf[arg3] = arg2
                                                    emit Transfer(arg1, arg2, arg3);
                                                    if not ext_code.size(arg2):
                                                    else:
                                                        require ext_code.size(arg2)
                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                             gas gas_remaining wei
                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                        if not ext_call.success:
                                                            if not return_data.size:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                                                if not return_data.size:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                            else:
                                    else:
                                        if not arg2:
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        else:
                                            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                            stor9[arg3] = balanceOf[address(arg2)]
                                            approved[arg3] = 0
                                            if not ownerOf[arg3]:
                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                            else:
                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                if balanceOf[address(arg1)] < 1:
                                                    revert with 0, 17
                                                else:
                                                    balanceOf[address(arg1)]--
                                                    if balanceOf[address(arg2)] > -2:
                                                        revert with 0, 17
                                                    else:
                                                        balanceOf[address(arg2)]++
                                                        ownerOf[arg3] = arg2
                                                        emit Transfer(arg1, arg2, arg3);
                                                        if not ext_code.size(arg2):
                                                        else:
                                                            require ext_code.size(arg2)
                                                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                            if not ext_call.success:
                                                                if not return_data.size:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                                                    if not return_data.size:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                else:
                                else:
                                    if tokenByIndex.length < 1:
                                        revert with 0, 17
                                    else:
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        else:
                                            if stor11[arg3] >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                stor11[stor10[stor10.length]] = stor11[arg3]
                                                stor11[arg3] = 0
                                                if not tokenByIndex.length:
                                                    revert with 0, 49
                                                else:
                                                    tokenByIndex[tokenByIndex.length] = 0
                                                    tokenByIndex.length--
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 0, 17
                                                        else:
                                                            balanceOf[address(arg1)]--
                                                            if balanceOf[address(arg2)] > -2:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg2)]++
                                                                ownerOf[arg3] = arg2
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if not ext_code.size(arg2):
                                                                else:
                                                                    require ext_code.size(arg2)
                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                    if not ext_call.success:
                                                                        if not return_data.size:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
            else:
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: approved query for nonexistent token'
                else:
                    if approved[arg3] == msg.sender:
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        else:
                            if ownerOf[arg3] != arg1:
                                revert with 0, 'ERC721: transfer of token that is not own'
                            else:
                                if not arg2:
                                    revert with 0, 'ERC721: transfer to the zero address'
                                else:
                                    if arg1:
                                        if arg1 == arg2:
                                            if arg2:
                                                if arg2 == arg1:
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 0, 17
                                                        else:
                                                            balanceOf[address(arg1)]--
                                                            if balanceOf[address(arg2)] > -2:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg2)]++
                                                                ownerOf[arg3] = arg2
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if not ext_code.size(arg2):
                                                                else:
                                                                    require ext_code.size(arg2)
                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                    if not ext_call.success:
                                                                        if not return_data.size:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                        stor9[arg3] = balanceOf[address(arg2)]
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if not ext_code.size(arg2):
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                            else:
                                                if tokenByIndex.length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 0, 50
                                                    else:
                                                        if stor11[arg3] >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                            stor11[stor10[stor10.length]] = stor11[arg3]
                                                            stor11[arg3] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 0, 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if not ext_code.size(arg2):
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                        else:
                                            if not arg1:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            else:
                                                if balanceOf[address(arg1)] < 1:
                                                    revert with 0, 17
                                                else:
                                                    if balanceOf[address(arg1)] - 1 == stor9[arg3]:
                                                        stor9[arg3] = 0
                                                        tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if not ext_code.size(arg2):
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                                    stor9[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if not ext_code.size(arg2):
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 0, 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 0, 50
                                                                else:
                                                                    if stor11[arg3] >= tokenByIndex.length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor11[stor10[stor10.length]] = stor11[arg3]
                                                                        stor11[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 0, 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if not ext_code.size(arg2):
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                                                        stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
                                                        stor9[arg3] = 0
                                                        tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if not ext_code.size(arg2):
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                                    stor9[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if not ext_code.size(arg2):
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 0, 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 0, 50
                                                                else:
                                                                    if stor11[arg3] >= tokenByIndex.length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor11[stor10[stor10.length]] = stor11[arg3]
                                                                        stor11[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 0, 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if not ext_code.size(arg2):
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                    else:
                                        stor11[arg3] = tokenByIndex.length
                                        tokenByIndex.length++
                                        tokenByIndex[tokenByIndex.length] = arg3
                                        if arg2:
                                            if arg2 == arg1:
                                                approved[arg3] = 0
                                                if not ownerOf[arg3]:
                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                else:
                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                    if balanceOf[address(arg1)] < 1:
                                                        revert with 0, 17
                                                    else:
                                                        balanceOf[address(arg1)]--
                                                        if balanceOf[address(arg2)] > -2:
                                                            revert with 0, 17
                                                        else:
                                                            balanceOf[address(arg2)]++
                                                            ownerOf[arg3] = arg2
                                                            emit Transfer(arg1, arg2, arg3);
                                                            if not ext_code.size(arg2):
                                                            else:
                                                                require ext_code.size(arg2)
                                                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                if not ext_call.success:
                                                                    if not return_data.size:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                                                        if not return_data.size:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                    else:
                                            else:
                                                if not arg2:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                else:
                                                    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                    stor9[arg3] = balanceOf[address(arg2)]
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 0, 17
                                                        else:
                                                            balanceOf[address(arg1)]--
                                                            if balanceOf[address(arg2)] > -2:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg2)]++
                                                                ownerOf[arg3] = arg2
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if not ext_code.size(arg2):
                                                                else:
                                                                    require ext_code.size(arg2)
                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                    if not ext_call.success:
                                                                        if not return_data.size:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                        else:
                                            if tokenByIndex.length < 1:
                                                revert with 0, 17
                                            else:
                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                    revert with 0, 50
                                                else:
                                                    if stor11[arg3] >= tokenByIndex.length:
                                                        revert with 0, 50
                                                    else:
                                                        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                        stor11[stor10[stor10.length]] = stor11[arg3]
                                                        stor11[arg3] = 0
                                                        if not tokenByIndex.length:
                                                            revert with 0, 49
                                                        else:
                                                            tokenByIndex[tokenByIndex.length] = 0
                                                            tokenByIndex.length--
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if not ext_code.size(arg2):
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                    else:
                        if not stor7[stor4[arg3]][address(msg.sender)]:
                            revert with 0, 'ERC721: transfer caller is not owner nor approved'
                        else:
                            if not ownerOf[arg3]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            else:
                                if ownerOf[arg3] != arg1:
                                    revert with 0, 'ERC721: transfer of token that is not own'
                                else:
                                    if not arg2:
                                        revert with 0, 'ERC721: transfer to the zero address'
                                    else:
                                        if arg1:
                                            if arg1 == arg2:
                                                if arg2:
                                                    if arg2 == arg1:
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if not ext_code.size(arg2):
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                    else:
                                                        if not arg2:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                            stor9[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if not ext_code.size(arg2):
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                else:
                                                    if tokenByIndex.length < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            if stor11[arg3] >= tokenByIndex.length:
                                                                revert with 0, 50
                                                            else:
                                                                tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                stor11[stor10[stor10.length]] = stor11[arg3]
                                                                stor11[arg3] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 0, 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if not ext_code.size(arg2):
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                            else:
                                                if not arg1:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                else:
                                                    if balanceOf[address(arg1)] < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if balanceOf[address(arg1)] - 1 == stor9[arg3]:
                                                            stor9[arg3] = 0
                                                            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if not ext_code.size(arg2):
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                                        stor9[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if not ext_code.size(arg2):
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                            else:
                                                                if tokenByIndex.length < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        if stor11[arg3] >= tokenByIndex.length:
                                                                            revert with 0, 50
                                                                        else:
                                                                            tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                            stor11[stor10[stor10.length]] = stor11[arg3]
                                                                            stor11[arg3] = 0
                                                                            if not tokenByIndex.length:
                                                                                revert with 0, 49
                                                                            else:
                                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                                tokenByIndex.length--
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if not ext_code.size(arg2):
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                                                            stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
                                                            stor9[arg3] = 0
                                                            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if not ext_code.size(arg2):
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                                        stor9[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if not ext_code.size(arg2):
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                            else:
                                                                if tokenByIndex.length < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        if stor11[arg3] >= tokenByIndex.length:
                                                                            revert with 0, 50
                                                                        else:
                                                                            tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                            stor11[stor10[stor10.length]] = stor11[arg3]
                                                                            stor11[arg3] = 0
                                                                            if not tokenByIndex.length:
                                                                                revert with 0, 49
                                                                            else:
                                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                                tokenByIndex.length--
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if not ext_code.size(arg2):
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                        else:
                                            stor11[arg3] = tokenByIndex.length
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length] = arg3
                                            if arg2:
                                                if arg2 == arg1:
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 0, 17
                                                        else:
                                                            balanceOf[address(arg1)]--
                                                            if balanceOf[address(arg2)] > -2:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg2)]++
                                                                ownerOf[arg3] = arg2
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if not ext_code.size(arg2):
                                                                else:
                                                                    require ext_code.size(arg2)
                                                                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                    if not ext_call.success:
                                                                        if not return_data.size:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                        else:
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
                                                        stor9[arg3] = balanceOf[address(arg2)]
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if not ext_code.size(arg2):
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                            else:
                                                if tokenByIndex.length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 0, 50
                                                    else:
                                                        if stor11[arg3] >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
                                                            stor11[stor10[stor10.length]] = stor11[arg3]
                                                            stor11[arg3] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 0, 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if not ext_code.size(arg2):
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
}



}
