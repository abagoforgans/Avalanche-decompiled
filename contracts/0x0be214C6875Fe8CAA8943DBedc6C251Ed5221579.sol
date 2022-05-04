contract main {




// =====================  Runtime code  =====================


#
#  - sub_6ffd8a44(?)
#
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
uint256 _tokenIdTracker;
address stor14;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of struct stor17;
mapping of struct stor18;
mapping of struct stor19;
mapping of struct stor20;
mapping of uint256 prices;
mapping of uint256 max;
mapping of uint256 currentCounter;
mapping of address minter;
mapping of uint256 sub_789829b3;
mapping of uint256 sub_b6ddcd65;
mapping of uint256 sub_a6accf3a;
mapping of uint256 sub_d0ef0867;
mapping of uint256 sub_959ae8d8;
mapping of uint256 sub_5a6da61b;
mapping of uint256 sub_3f7a21db;
mapping of uint8 stor32;
mapping of uint8 stor33;

function currentCounter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return currentCounter[arg1]
}

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

function price(uint256 arg1) {
    require calldata.size - 4 >= 32
    return prices[arg1]
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

function sub_3f7a21db(?) {
    require calldata.size - 4 >= 32
    return sub_3f7a21db[arg1]
}

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_5a6da61b(?) {
    require calldata.size - 4 >= 32
    return sub_5a6da61b[arg1]
}

function sub_62132874(?) {
    require calldata.size - 4 >= 32
    return bool(stor33[arg1])
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_65ac9f9b(?) {
    require calldata.size - 4 >= 32
    return bool(stor32[arg1])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_789829b3(?) {
    require calldata.size - 4 >= 32
    return sub_789829b3[arg1]
}

function tokenMinter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(minter[arg1])
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_959ae8d8(?) {
    require calldata.size - 4 >= 32
    return sub_959ae8d8[arg1]
}

function _tokenIdTracker() {
    return _tokenIdTracker
}

function sub_a6accf3a(?) {
    require calldata.size - 4 >= 32
    return sub_a6accf3a[arg1]
}

function minter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(minter[arg1])
}

function sub_b6ddcd65(?) {
    require calldata.size - 4 >= 32
    return sub_b6ddcd65[arg1]
}

function prices(uint256 arg1) {
    require calldata.size - 4 >= 32
    return prices[arg1]
}

function max(uint256 arg1) {
    require calldata.size - 4 >= 32
    return max[arg1]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_d0ef0867(?) {
    require calldata.size - 4 >= 32
    return sub_d0ef0867[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xef4d65746143617264733a206d75737420686176652061646d696e20726f6c65,
                    'to change price' << 136
    prices[arg2] = arg1
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
        if not stor7[stor4[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setNewAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xef4d65746143617264733a206d75737420686176652061646d696e20726f6c65,
                    0x746f2073657420757020206e65772061646d696e000000000000000000000000
    if not uint8(roleAdmin[address(arg1)].field_0):
        uint8(roleAdmin[address(arg1)].field_0) = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not roleMember[0][1][address(arg1)].field_0:
        roleMember[0].field_0++
        address(roleMember[0][roleMember[0].field_0].field_0) = arg1
        Mask(96, 0, roleMember[0][roleMember[0].field_0].field_160) = 0
        roleMember[0][1][address(arg1)].field_0 = roleMember[0].field_0
}

function sub_90d454c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xef4d65746143617264733a206d75737420686176652061646d696e20726f6c65,
                    0x746f2073657420757020206e657720706174726f6e0000000000000000000000
    if not uint8(roleAdmin[address(arg1)].field_0):
        uint8(roleAdmin[address(arg1)].field_0) = 1
        emit RoleGranted(0, address(arg1), msg.sender);
    if not roleMember[0][1][address(arg1)].field_0:
        roleMember[0].field_0++
        address(roleMember[0][roleMember[0].field_0].field_0) = address(arg1)
        Mask(96, 0, roleMember[0][roleMember[0].field_0].field_160) = 0
        roleMember[0][1][address(arg1)].field_0 = roleMember[0].field_0
    stor14 = address(arg1)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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

function setBaseURI(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 32, 50, 0xef4d65746143617264733a206d75737420686176652061646d696e20726f6c65, 'to change base URI' << 112
    if bool(stor17[arg2].field_0):
        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor17[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17[arg2].field_0 = 0
            idx = 0
            while (uint255(stor17[arg2].field_0) * 0.5) + 31 / 32 > idx:
                stor17[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor17[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17[arg2].field_0 = 0
            idx = 0
            while stor17[arg2].field_1 % 128 + 31 / 32 > idx:
                stor17[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 32, 51, 0xef4d65746143617264733a206d75737420686176652061646d696e20726f6c65, 'to change token URI' << 104
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
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
        revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
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
        revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    emit 0x72ddf252: arg1, arg2, arg3
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
    emit 0x72ddf252: arg1, arg2, arg3
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
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[stor2.length.field_1 % 128 + ceil32(stor2.length.field_1 % 128) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[stor3.length.field_1 % 128 + ceil32(stor3.length.field_1 % 128) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
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
    emit 0x72ddf252: arg1, arg2, arg3
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

function sub_55a2deaf(?) {
    require calldata.size - 4 >= 32
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor19[arg1].field_0):
            if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor19[arg1].field_0):
                if 31 < uint255(stor19[arg1].field_0) * 0.5:
                    mem[128] = stor19[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor19[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19[arg1].field_0), data=mem[128 len ceil32(uint255(stor19[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
        else:
            if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor19[arg1].field_1 % 128:
                if 31 < stor19[arg1].field_1 % 128:
                    mem[128] = stor19[arg1].field_0
                    idx = 128
                    s = 0
                    while stor19[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor19[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19[arg1].field_0), data=mem[128 len ceil32(uint255(stor19[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
        mem[ceil32(uint255(stor19[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor19[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor19[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor19[arg1].field_0) * 0.5) > uint255(stor19[arg1].field_0) * 0.5:
            mem[(uint255(stor19[arg1].field_0) * 0.5) + ceil32(uint255(stor19[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19[arg1].field_0), data=mem[128 len ceil32(uint255(stor19[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor19[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor19[arg1].field_0) * 0.5)]), 
    if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor19[arg1].field_0):
        if bool(stor19[arg1].field_0) == uint255(stor19[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor19[arg1].field_0):
            if 31 < uint255(stor19[arg1].field_0) * 0.5:
                mem[128] = stor19[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor19[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor19[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19[arg1].field_0 % 128, data=mem[128 len ceil32(stor19[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
    else:
        if bool(stor19[arg1].field_0) == stor19[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor19[arg1].field_1 % 128:
            if 31 < stor19[arg1].field_1 % 128:
                mem[128] = stor19[arg1].field_0
                idx = 128
                s = 0
                while stor19[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor19[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19[arg1].field_0 % 128, data=mem[128 len ceil32(stor19[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19[arg1].field_8)
    mem[ceil32(stor19[arg1].field_1 % 128) + 192 len ceil32(stor19[arg1].field_1 % 128)] = mem[128 len ceil32(stor19[arg1].field_1 % 128)]
    if ceil32(stor19[arg1].field_1 % 128) > stor19[arg1].field_1 % 128:
        mem[stor19[arg1].field_1 % 128 + ceil32(stor19[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor19[arg1].field_0 % 128, data=mem[128 len ceil32(stor19[arg1].field_1 % 128)], mem[(2 * ceil32(stor19[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor19[arg1].field_1 % 128)]), 
}

function sub_65c75562(?) {
    require calldata.size - 4 >= 32
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor20[arg1].field_0):
            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor20[arg1].field_0):
                if 31 < uint255(stor20[arg1].field_0) * 0.5:
                    mem[128] = stor20[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor20[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor20[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        else:
            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor20[arg1].field_1 % 128:
                if 31 < stor20[arg1].field_1 % 128:
                    mem[128] = stor20[arg1].field_0
                    idx = 128
                    s = 0
                    while stor20[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor20[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        mem[ceil32(uint255(stor20[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor20[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor20[arg1].field_0) * 0.5) > uint255(stor20[arg1].field_0) * 0.5:
            mem[(uint255(stor20[arg1].field_0) * 0.5) + ceil32(uint255(stor20[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor20[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor20[arg1].field_0) * 0.5)]), 
    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor20[arg1].field_0):
            if 31 < uint255(stor20[arg1].field_0) * 0.5:
                mem[128] = stor20[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor20[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor20[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    else:
        if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor20[arg1].field_1 % 128:
            if 31 < stor20[arg1].field_1 % 128:
                mem[128] = stor20[arg1].field_0
                idx = 128
                s = 0
                while stor20[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor20[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    mem[ceil32(stor20[arg1].field_1 % 128) + 192 len ceil32(stor20[arg1].field_1 % 128)] = mem[128 len ceil32(stor20[arg1].field_1 % 128)]
    if ceil32(stor20[arg1].field_1 % 128) > stor20[arg1].field_1 % 128:
        mem[stor20[arg1].field_1 % 128 + ceil32(stor20[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)], mem[(2 * ceil32(stor20[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor20[arg1].field_1 % 128)]), 
}

function sub_ae849289(?) {
    require calldata.size - 4 >= 32
    if bool(stor18[arg1].field_0):
        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18[arg1].field_0):
            if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18[arg1].field_0):
                if 31 < uint255(stor18[arg1].field_0) * 0.5:
                    mem[128] = stor18[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor18[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18[arg1].field_0), data=mem[128 len ceil32(uint255(stor18[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor18[arg1].field_8)
        else:
            if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor18[arg1].field_1 % 128:
                if 31 < stor18[arg1].field_1 % 128:
                    mem[128] = stor18[arg1].field_0
                    idx = 128
                    s = 0
                    while stor18[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor18[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18[arg1].field_0), data=mem[128 len ceil32(uint255(stor18[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor18[arg1].field_8)
        mem[ceil32(uint255(stor18[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor18[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor18[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor18[arg1].field_0) * 0.5) > uint255(stor18[arg1].field_0) * 0.5:
            mem[(uint255(stor18[arg1].field_0) * 0.5) + ceil32(uint255(stor18[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18[arg1].field_0), data=mem[128 len ceil32(uint255(stor18[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor18[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor18[arg1].field_0) * 0.5)]), 
    if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor18[arg1].field_0):
        if bool(stor18[arg1].field_0) == uint255(stor18[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18[arg1].field_0):
            if 31 < uint255(stor18[arg1].field_0) * 0.5:
                mem[128] = stor18[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor18[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18[arg1].field_0 % 128, data=mem[128 len ceil32(stor18[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor18[arg1].field_8)
    else:
        if bool(stor18[arg1].field_0) == stor18[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor18[arg1].field_1 % 128:
            if 31 < stor18[arg1].field_1 % 128:
                mem[128] = stor18[arg1].field_0
                idx = 128
                s = 0
                while stor18[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor18[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18[arg1].field_0 % 128, data=mem[128 len ceil32(stor18[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor18[arg1].field_8)
    mem[ceil32(stor18[arg1].field_1 % 128) + 192 len ceil32(stor18[arg1].field_1 % 128)] = mem[128 len ceil32(stor18[arg1].field_1 % 128)]
    if ceil32(stor18[arg1].field_1 % 128) > stor18[arg1].field_1 % 128:
        mem[stor18[arg1].field_1 % 128 + ceil32(stor18[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor18[arg1].field_0 % 128, data=mem[128 len ceil32(stor18[arg1].field_1 % 128)], mem[(2 * ceil32(stor18[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor18[arg1].field_1 % 128)]), 
}

function baseTokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor17[arg1].field_0):
        if bool(stor17[arg1].field_0) == uint255(stor17[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17[arg1].field_0):
            if bool(stor17[arg1].field_0) == uint255(stor17[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17[arg1].field_0):
                if 31 < uint255(stor17[arg1].field_0) * 0.5:
                    mem[128] = stor17[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor17[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17[arg1].field_0), data=mem[128 len ceil32(uint255(stor17[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor17[arg1].field_8)
        else:
            if bool(stor17[arg1].field_0) == stor17[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor17[arg1].field_1 % 128:
                if 31 < stor17[arg1].field_1 % 128:
                    mem[128] = stor17[arg1].field_0
                    idx = 128
                    s = 0
                    while stor17[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor17[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17[arg1].field_0), data=mem[128 len ceil32(uint255(stor17[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor17[arg1].field_8)
        mem[ceil32(uint255(stor17[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor17[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor17[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor17[arg1].field_0) * 0.5) > uint255(stor17[arg1].field_0) * 0.5:
            mem[(uint255(stor17[arg1].field_0) * 0.5) + ceil32(uint255(stor17[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17[arg1].field_0), data=mem[128 len ceil32(uint255(stor17[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor17[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor17[arg1].field_0) * 0.5)]), 
    if bool(stor17[arg1].field_0) == stor17[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor17[arg1].field_0):
        if bool(stor17[arg1].field_0) == uint255(stor17[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17[arg1].field_0):
            if 31 < uint255(stor17[arg1].field_0) * 0.5:
                mem[128] = stor17[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor17[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[arg1].field_0 % 128, data=mem[128 len ceil32(stor17[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17[arg1].field_8)
    else:
        if bool(stor17[arg1].field_0) == stor17[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor17[arg1].field_1 % 128:
            if 31 < stor17[arg1].field_1 % 128:
                mem[128] = stor17[arg1].field_0
                idx = 128
                s = 0
                while stor17[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor17[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17[arg1].field_0 % 128, data=mem[128 len ceil32(stor17[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17[arg1].field_8)
    mem[ceil32(stor17[arg1].field_1 % 128) + 192 len ceil32(stor17[arg1].field_1 % 128)] = mem[128 len ceil32(stor17[arg1].field_1 % 128)]
    if ceil32(stor17[arg1].field_1 % 128) > stor17[arg1].field_1 % 128:
        mem[stor17[arg1].field_1 % 128 + ceil32(stor17[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor17[arg1].field_0 % 128, data=mem[128 len ceil32(stor17[arg1].field_1 % 128)], mem[(2 * ceil32(stor17[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor17[arg1].field_1 % 128)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor12[arg1].field_0):
            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12[arg1].field_0):
                if 31 < uint255(stor12[arg1].field_0) * 0.5:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor12[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        else:
            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor12[arg1].field_1 % 128:
                if 31 < stor12[arg1].field_1 % 128:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        mem[ceil32(uint255(stor12[arg1].field_0) * 0.5) + 224 len ceil32(uint255(stor12[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor12[arg1].field_0) * 0.5) > uint255(stor12[arg1].field_0) * 0.5:
            mem[(uint255(stor12[arg1].field_0) * 0.5) + ceil32(uint255(stor12[arg1].field_0) * 0.5) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor12[arg1].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor12[arg1].field_0) * 0.5)]), 
    if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12[arg1].field_0):
            if 31 < uint255(stor12[arg1].field_0) * 0.5:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor12[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    else:
        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor12[arg1].field_1 % 128:
            if 31 < stor12[arg1].field_1 % 128:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    mem[ceil32(stor12[arg1].field_1 % 128) + 224 len ceil32(stor12[arg1].field_1 % 128)] = mem[128 len ceil32(stor12[arg1].field_1 % 128)]
    if ceil32(stor12[arg1].field_1 % 128) > stor12[arg1].field_1 % 128:
        mem[stor12[arg1].field_1 % 128 + ceil32(stor12[arg1].field_1 % 128) + 224] = 0
    return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)], mem[(2 * ceil32(stor12[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor12[arg1].field_1 % 128)]), 
}

function sub_f0dbfa61(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _744 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_744] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_744 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_744 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _744
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _745 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 36).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 36).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 36).length) + 1
    mem[_745] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = _745 + 32
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _1486 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_1486] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_1486 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_1486 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _1486
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    _1487 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 68).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 68).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 68).length) + 1
    mem[_1487] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = _1487 + 32
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _2228 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_2228] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_2228 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_2228 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _2228
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0)
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0, 32, 58, 0xef4d65746143617264733a206d75737420686176652061646d696e20726f6c65, 'to set up  new custom URIs' << 48
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = idx
        mem[32] = 18
        _2968 = mem[mem[(32 * idx) + 128]]
        if bool(stor18[idx].field_0):
            if bool(stor18[idx].field_0) == uint255(stor18[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[0] = sha3(idx, 18)
            if not _2968:
                stor18[idx].field_0 = 0
                s = sha3(sha3(idx, 18))
                while sha3(sha3(idx, 18)) + ((uint255(stor18[idx].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if idx >= mem[_745]:
                    revert with 0, 50
                _3709 = mem[(32 * idx) + _745 + 32]
                mem[0] = idx
                mem[32] = 19
                _3711 = mem[_3709]
                if bool(stor19[idx].field_0):
                    if bool(stor19[idx].field_0) == uint255(stor19[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, 19)
                    if not _3711:
                        stor19[idx].field_0 = 0
                        s = sha3(sha3(idx, 19))
                        while sha3(sha3(idx, 19)) + ((uint255(stor19[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _4512 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _4514 = mem[_4512]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _4514:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _4514) + 1
                                t = sha3(sha3(idx, 20))
                                s = _4512 + 32
                                while _4512 + _4514 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _4514 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 20)
                        if not _4514:
                            stor20[idx].field_0 = 0
                            s = sha3(sha3(idx, 20))
                            while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        stor20[idx].field_0 = (2 * _4514) + 1
                        t = sha3(sha3(idx, 20))
                        s = _4512 + 32
                        while _4512 + _4514 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(s, 20)) + (Mask(251, 0, _4514 + 31) >> 5)
                        while sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) == -1:
                            revert with 0, 17
                        s = sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) + 1
                        continue 
                    stor19[idx].field_0 = (2 * _3711) + 1
                    t = sha3(sha3(idx, 19))
                    s = _3709 + 32
                    while _3709 + _3711 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(idx, 19)) + (Mask(251, 0, _3711 + 31) >> 5)
                    while sha3(sha3(idx, 19)) + ((uint255(stor19[idx].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    if idx >= mem[_1487]:
                        revert with 0, 50
                    _5219 = mem[(32 * idx) + _1487 + 32]
                    mem[0] = idx
                    mem[32] = 20
                    _5221 = mem[_5219]
                    if bool(stor20[idx].field_0):
                        if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 20)
                        if not _5221:
                            stor20[idx].field_0 = 0
                            s = sha3(sha3(idx, 20))
                            while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor20[idx].field_0 = (2 * _5221) + 1
                            t = sha3(sha3(idx, 20))
                            s = _5219 + 32
                            while _5219 + _5221 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5221 + 31) >> 5)
                            while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 20)
                        if not _5221:
                            stor20[idx].field_0 = 0
                            s = sha3(sha3(s, 20))
                            while sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            if sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) == -1:
                                revert with 0, 17
                            s = sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) + 1
                            continue 
                        stor20[idx].field_0 = (2 * _5221) + 1
                        t = sha3(sha3(idx, 20))
                        s = _5219 + 32
                        while _5219 + _5221 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5221 + 31) >> 5)
                        while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor19[idx].field_0) == stor19[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, 19)
                    if not _3711:
                        stor19[idx].field_0 = 0
                        s = sha3(sha3(idx, 19))
                        while sha3(sha3(idx, 19)) + (stor19[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _4521 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _4523 = mem[_4521]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _4523:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor20[idx].field_0 = (2 * _4523) + 1
                            t = sha3(sha3(idx, 20))
                            s = _4521 + 32
                            while _4521 + _4523 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(s, 20)) + (Mask(251, 0, _4523 + 31) >> 5)
                            while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            if sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) == -1:
                                revert with 0, 17
                            s = sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) + 1
                            continue 
                        if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 20)
                        if not _4523:
                            stor20[idx].field_0 = 0
                            s = sha3(sha3(idx, 20))
                            while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor20[idx].field_0 = (2 * _4523) + 1
                            t = sha3(sha3(idx, 20))
                            s = _4521 + 32
                            while _4521 + _4523 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(idx, 20)) + (Mask(251, 0, _4523 + 31) >> 5)
                            while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        stor19[idx].field_0 = (2 * _3711) + 1
                        t = sha3(sha3(idx, 19))
                        s = _3709 + 32
                        while _3709 + _3711 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(idx, 19)) + (Mask(251, 0, _3711 + 31) >> 5)
                        while sha3(sha3(idx, 19)) + (stor19[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5222 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5224 = mem[_5222]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5224:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(s, 20))
                                while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) + 1
                                continue 
                            stor20[idx].field_0 = (2 * _5224) + 1
                            t = sha3(sha3(idx, 20))
                            s = _5222 + 32
                            while _5222 + _5224 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5224 + 31) >> 5)
                            while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5224:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5224) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5222 + 32
                                while _5222 + _5224 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5224 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
            else:
                stor18[idx].field_0 = (2 * _2968) + 1
                s = sha3(sha3(idx, 18))
                t = mem[(32 * idx) + 128] + 32
                while mem[(32 * idx) + 128] + _2968 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(idx, 18)) + (Mask(251, 0, _2968 + 31) >> 5)
                while sha3(sha3(idx, 18)) + ((uint255(stor18[idx].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if idx >= mem[_745]:
                    revert with 0, 50
                _4485 = mem[(32 * idx) + _745 + 32]
                mem[0] = idx
                mem[32] = 19
                _4487 = mem[_4485]
                if bool(stor19[idx].field_0):
                    if bool(stor19[idx].field_0) == uint255(stor19[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, 19)
                    if not _4487:
                        stor19[idx].field_0 = 0
                        s = sha3(sha3(idx, 19))
                        while sha3(sha3(idx, 19)) + ((uint255(stor19[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5201 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5203 = mem[_5201]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5203:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5203) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5201 + 32
                                while _5201 + _5203 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5203 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5203:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(s, 20))
                                while sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) + 1
                                continue 
                            stor20[idx].field_0 = (2 * _5203) + 1
                            t = sha3(sha3(idx, 20))
                            s = _5201 + 32
                            while _5201 + _5203 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5203 + 31) >> 5)
                            while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        stor19[idx].field_0 = (2 * _4487) + 1
                        t = sha3(sha3(idx, 19))
                        s = _4485 + 32
                        while _4485 + _4487 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(idx, 19)) + (Mask(251, 0, _4487 + 31) >> 5)
                        while sha3(sha3(idx, 19)) + ((uint255(stor19[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5497 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5499 = mem[_5497]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5499:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5499) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5497 + 32
                                while _5497 + _5499 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5499 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5499:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5499) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5497 + 32
                                while _5497 + _5499 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5499 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor19[idx].field_0) == stor19[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, 19)
                    if not _4487:
                        stor19[idx].field_0 = 0
                        s = sha3(sha3(idx, 19))
                        while sha3(sha3(idx, 19)) + (stor19[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5210 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5212 = mem[_5210]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5212:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(s, 20))
                                while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) + 1
                                continue 
                            stor20[idx].field_0 = (2 * _5212) + 1
                            t = sha3(sha3(idx, 20))
                            s = _5210 + 32
                            while _5210 + _5212 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5212 + 31) >> 5)
                            while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5212:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5212) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5210 + 32
                                while _5210 + _5212 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5212 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        stor19[idx].field_0 = (2 * _4487) + 1
                        t = sha3(sha3(idx, 19))
                        s = _4485 + 32
                        while _4485 + _4487 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(idx, 19)) + (Mask(251, 0, _4487 + 31) >> 5)
                        while sha3(sha3(idx, 19)) + (stor19[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5500 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5502 = mem[_5500]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5502:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5502) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5500 + 32
                                while _5500 + _5502 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5502 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5502:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5502) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5500 + 32
                                while _5500 + _5502 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5502 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
        else:
            if bool(stor18[idx].field_0) == stor18[idx].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(idx, 18)
            if not _2968:
                stor18[idx].field_0 = 0
                s = sha3(sha3(idx, 18))
                while sha3(sha3(idx, 18)) + (stor18[idx].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if idx >= mem[_745]:
                    revert with 0, 50
                _3718 = mem[(32 * idx) + _745 + 32]
                mem[0] = idx
                mem[32] = 19
                _3720 = mem[_3718]
                if bool(stor19[idx].field_0):
                    if bool(stor19[idx].field_0) == uint255(stor19[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, 19)
                    if not _3720:
                        stor19[idx].field_0 = 0
                        s = sha3(sha3(idx, 19))
                        while sha3(sha3(idx, 19)) + ((uint255(stor19[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _4569 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _4571 = mem[_4569]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _4571:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor20[idx].field_0 = (2 * _4571) + 1
                            t = sha3(sha3(idx, 20))
                            s = _4569 + 32
                            while _4569 + _4571 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(s, 20)) + (Mask(251, 0, _4571 + 31) >> 5)
                            while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            if sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) == -1:
                                revert with 0, 17
                            s = sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) + 1
                            continue 
                        if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(idx, 20)
                        if not _4571:
                            stor20[idx].field_0 = 0
                            s = sha3(sha3(idx, 20))
                            while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor20[idx].field_0 = (2 * _4571) + 1
                            t = sha3(sha3(idx, 20))
                            s = _4569 + 32
                            while _4569 + _4571 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(idx, 20)) + (Mask(251, 0, _4571 + 31) >> 5)
                            while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        stor19[idx].field_0 = (2 * _3720) + 1
                        t = sha3(sha3(idx, 19))
                        s = _3718 + 32
                        while _3718 + _3720 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(idx, 19)) + (Mask(251, 0, _3720 + 31) >> 5)
                        while sha3(sha3(idx, 19)) + ((uint255(stor19[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5255 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5257 = mem[_5255]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5257:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(s, 20))
                                while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) + 1
                                continue 
                            stor20[idx].field_0 = (2 * _5257) + 1
                            t = sha3(sha3(idx, 20))
                            s = _5255 + 32
                            while _5255 + _5257 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5257 + 31) >> 5)
                            while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5257:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5257) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5255 + 32
                                while _5255 + _5257 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5257 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor19[idx].field_0) == stor19[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, 19)
                    if not _3720:
                        stor19[idx].field_0 = 0
                        s = sha3(sha3(idx, 19))
                        while sha3(sha3(idx, 19)) + (stor19[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _4578 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _4580 = mem[_4578]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _4580:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _4580) + 1
                                t = sha3(sha3(idx, 20))
                                s = _4578 + 32
                                while _4578 + _4580 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _4580 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _4580:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _4580) + 1
                                t = sha3(sha3(idx, 20))
                                s = _4578 + 32
                                while _4578 + _4580 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _4580 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        stor19[idx].field_0 = (2 * _3720) + 1
                        t = sha3(sha3(idx, 19))
                        s = _3718 + 32
                        while _3718 + _3720 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(idx, 19)) + (Mask(251, 0, _3720 + 31) >> 5)
                        while sha3(sha3(idx, 19)) + (stor19[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5258 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5260 = mem[_5258]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5260:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5260) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5258 + 32
                                while _5258 + _5260 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5260 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5260:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5260) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5258 + 32
                                while _5258 + _5260 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5260 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
            else:
                stor18[idx].field_0 = (2 * _2968) + 1
                s = sha3(sha3(idx, 18))
                t = mem[(32 * idx) + 128] + 32
                while mem[(32 * idx) + 128] + _2968 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(idx, 18)) + (Mask(251, 0, _2968 + 31) >> 5)
                while sha3(sha3(idx, 18)) + (stor18[idx].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                if idx >= mem[_745]:
                    revert with 0, 50
                _4542 = mem[(32 * idx) + _745 + 32]
                mem[0] = idx
                mem[32] = 19
                _4544 = mem[_4542]
                if bool(stor19[idx].field_0):
                    if bool(stor19[idx].field_0) == uint255(stor19[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, 19)
                    if not _4544:
                        stor19[idx].field_0 = 0
                        s = sha3(sha3(idx, 19))
                        while sha3(sha3(idx, 19)) + ((uint255(stor19[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5237 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5239 = mem[_5237]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5239:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(s, 20))
                                while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) + 1
                                continue 
                            stor20[idx].field_0 = (2 * _5239) + 1
                            t = sha3(sha3(idx, 20))
                            s = _5237 + 32
                            while _5237 + _5239 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5239 + 31) >> 5)
                            while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5239:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5239) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5237 + 32
                                while _5237 + _5239 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5239 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        stor19[idx].field_0 = (2 * _4544) + 1
                        t = sha3(sha3(idx, 19))
                        s = _4542 + 32
                        while _4542 + _4544 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(idx, 19)) + (Mask(251, 0, _4544 + 31) >> 5)
                        while sha3(sha3(idx, 19)) + ((uint255(stor19[idx].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5503 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5505 = mem[_5503]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5505:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5505) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5503 + 32
                                while _5503 + _5505 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5505 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5505:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5505) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5503 + 32
                                while _5503 + _5505 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5505 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor19[idx].field_0) == stor19[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(idx, 19)
                    if not _4544:
                        stor19[idx].field_0 = 0
                        s = sha3(sha3(idx, 19))
                        while sha3(sha3(idx, 19)) + (stor19[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5246 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5248 = mem[_5246]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5248:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5248) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5246 + 32
                                while _5246 + _5248 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5248 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5248:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5248) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5246 + 32
                                while _5246 + _5248 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5248 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        stor19[idx].field_0 = (2 * _4544) + 1
                        t = sha3(sha3(idx, 19))
                        s = _4542 + 32
                        while _4542 + _4544 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(idx, 19)) + (Mask(251, 0, _4544 + 31) >> 5)
                        while sha3(sha3(idx, 19)) + (stor19[idx].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx >= mem[_1487]:
                            revert with 0, 50
                        _5506 = mem[(32 * idx) + _1487 + 32]
                        mem[0] = idx
                        mem[32] = 20
                        _5508 = mem[_5506]
                        if bool(stor20[idx].field_0):
                            if bool(stor20[idx].field_0) == uint255(stor20[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5508:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5508) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5506 + 32
                                while _5506 + _5508 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5508 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + ((uint255(stor20[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor20[idx].field_0) == stor20[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(idx, 20)
                            if not _5508:
                                stor20[idx].field_0 = 0
                                s = sha3(sha3(idx, 20))
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor20[idx].field_0 = (2 * _5508) + 1
                                t = sha3(sha3(idx, 20))
                                s = _5506 + 32
                                while _5506 + _5508 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(idx, 20)) + (Mask(251, 0, _5508 + 31) >> 5)
                                while sha3(sha3(idx, 20)) + (stor20[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c19d6dc7(?) payable {
    require calldata.size - 4 >= 32
    if 1 == bool(stor33[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0xfe4d65746143617264733a2054686973204e46542068617320616c7265616479,
                    0x6265656e20757067726164656420746f20626162792e00000000000000000000
    if sub_789829b3[stor31[arg1]] != msg.value:
        if stor14 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaCards: must send correct price'
    if sub_a6accf3a[stor31[arg1]] >= sub_b6ddcd65[stor31[arg1]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' MetaCards: can't upgrade any moe NFTs to baby'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if stor14 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaCards: only the NFT owner can upgrade it'
    call stor14 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor33[arg1] = 1
    if not stor32[arg1]:
        if not bool(stor19[stor31[arg1]].field_0):
            if bool(stor19[stor31[arg1]].field_0) == stor19[stor31[arg1]].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor19[stor31[arg1]].field_0):
                if bool(stor19[stor31[arg1]].field_0) == uint255(stor19[stor31[arg1]].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor19[stor31[arg1]].field_0):
                    if 31 >= uint255(stor19[stor31[arg1]].field_0) * 0.5:
                        mem[128] = 256 * Mask(248, 0, stor19[stor31[arg1]].field_8)
                    else:
                        mem[128] = stor19[stor31[arg1]].field_0
                        idx = 128
                        s = 0
                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor19[stor31[arg1]][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor19[stor31[arg1]].field_0) == stor19[stor31[arg1]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor19[stor31[arg1]].field_1 % 128:
                    if 31 >= stor19[stor31[arg1]].field_1 % 128:
                        mem[128] = 256 * Mask(248, 0, stor19[stor31[arg1]].field_8)
                    else:
                        mem[128] = stor19[stor31[arg1]].field_0
                        idx = 128
                        s = 0
                        while stor19[stor31[arg1]].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = stor19[stor31[arg1]][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if not ownerOf[arg1]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            if bool(stor12[arg1].field_0):
                if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor19[stor31[arg1]].field_1 % 128:
                    stor12[arg1][].field_0 = Array(len=stor19[stor31[arg1]].field_1 % 128, data=mem[128 len stor19[stor31[arg1]].field_1 % 128])
                else:
                    stor12[arg1].field_0 = 0
                    idx = 0
                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor12[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor19[stor31[arg1]].field_1 % 128:
                    stor12[arg1][].field_0 = Array(len=stor19[stor31[arg1]].field_1 % 128, data=mem[128 len stor19[stor31[arg1]].field_1 % 128])
                else:
                    stor12[arg1].field_0 = 0
                    idx = 0
                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor12[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor19[stor31[arg1]].field_0) == uint255(stor19[stor31[arg1]].field_0) * 0.5 < 32:
                revert with 0, 34
            if bool(stor19[stor31[arg1]].field_0):
                if bool(stor19[stor31[arg1]].field_0) == uint255(stor19[stor31[arg1]].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if bool(stor12[arg1].field_0):
                        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                            stor12[arg1].field_0 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                        stor12[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor12[arg1].field_0) = 0
                                uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                            stor12[arg1].field_0 = 0
                            idx = 0
                            while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor12[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                        stor12[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor12[arg1].field_0) = 0
                                uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= uint255(stor19[stor31[arg1]].field_0) * 0.5:
                        mem[128] = 256 * Mask(248, 0, stor19[stor31[arg1]].field_8)
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor12[arg1].field_0):
                            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = Mask(248, 0, stor19[stor31[arg1]].field_8)
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                        idx = 0
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = Mask(248, 0, stor19[stor31[arg1]].field_8)
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[128] = stor19[stor31[arg1]].field_0
                        idx = 128
                        s = 0
                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor19[stor31[arg1]][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor12[arg1].field_0):
                            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                        idx = 0
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
            else:
                if bool(stor19[stor31[arg1]].field_0) == stor19[stor31[arg1]].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor19[stor31[arg1]].field_1 % 128:
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if bool(stor12[arg1].field_0):
                        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                            stor12[arg1].field_0 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                        stor12[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor12[arg1].field_0) = 0
                                uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                            stor12[arg1].field_0 = 0
                            idx = 0
                            while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor12[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                        stor12[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor12[arg1].field_0) = 0
                                uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= stor19[stor31[arg1]].field_1 % 128:
                        mem[128] = 256 * Mask(248, 0, stor19[stor31[arg1]].field_8)
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor12[arg1].field_0):
                            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = Mask(248, 0, stor19[stor31[arg1]].field_8)
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                        idx = 0
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = Mask(248, 0, stor19[stor31[arg1]].field_8)
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[128] = stor19[stor31[arg1]].field_0
                        idx = 128
                        s = 0
                        while stor19[stor31[arg1]].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = stor19[stor31[arg1]][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor12[arg1].field_0):
                            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor19[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor19[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor19[stor31[arg1]].field_0):
                                        idx = 0
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor19[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor19[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
    else:
        if not bool(stor20[stor31[arg1]].field_0):
            if bool(stor20[stor31[arg1]].field_0) == stor20[stor31[arg1]].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor20[stor31[arg1]].field_0):
                if bool(stor20[stor31[arg1]].field_0) == uint255(stor20[stor31[arg1]].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor20[stor31[arg1]].field_0):
                    if 31 >= uint255(stor20[stor31[arg1]].field_0) * 0.5:
                        mem[128] = 256 * Mask(248, 0, stor20[stor31[arg1]].field_8)
                    else:
                        mem[128] = stor20[stor31[arg1]].field_0
                        idx = 128
                        s = 0
                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor20[stor31[arg1]][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor20[stor31[arg1]].field_0) == stor20[stor31[arg1]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor20[stor31[arg1]].field_1 % 128:
                    if 31 >= stor20[stor31[arg1]].field_1 % 128:
                        mem[128] = 256 * Mask(248, 0, stor20[stor31[arg1]].field_8)
                    else:
                        mem[128] = stor20[stor31[arg1]].field_0
                        idx = 128
                        s = 0
                        while stor20[stor31[arg1]].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = stor20[stor31[arg1]][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if not ownerOf[arg1]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            if bool(stor12[arg1].field_0):
                if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor20[stor31[arg1]].field_1 % 128:
                    stor12[arg1][].field_0 = Array(len=stor20[stor31[arg1]].field_1 % 128, data=mem[128 len stor20[stor31[arg1]].field_1 % 128])
                else:
                    stor12[arg1].field_0 = 0
                    idx = 0
                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor12[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor20[stor31[arg1]].field_1 % 128:
                    stor12[arg1][].field_0 = Array(len=stor20[stor31[arg1]].field_1 % 128, data=mem[128 len stor20[stor31[arg1]].field_1 % 128])
                else:
                    stor12[arg1].field_0 = 0
                    idx = 0
                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor12[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor20[stor31[arg1]].field_0) == uint255(stor20[stor31[arg1]].field_0) * 0.5 < 32:
                revert with 0, 34
            if bool(stor20[stor31[arg1]].field_0):
                if bool(stor20[stor31[arg1]].field_0) == uint255(stor20[stor31[arg1]].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if bool(stor12[arg1].field_0):
                        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                            stor12[arg1].field_0 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                        stor12[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor12[arg1].field_0) = 0
                                uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                            stor12[arg1].field_0 = 0
                            idx = 0
                            while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor12[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                        stor12[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor12[arg1].field_0) = 0
                                uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= uint255(stor20[stor31[arg1]].field_0) * 0.5:
                        mem[128] = 256 * Mask(248, 0, stor20[stor31[arg1]].field_8)
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor12[arg1].field_0):
                            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = Mask(248, 0, stor20[stor31[arg1]].field_8)
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                        idx = 0
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = Mask(248, 0, stor20[stor31[arg1]].field_8)
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[128] = stor20[stor31[arg1]].field_0
                        idx = 128
                        s = 0
                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor20[stor31[arg1]][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor12[arg1].field_0):
                            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                        idx = 0
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
            else:
                if bool(stor20[stor31[arg1]].field_0) == stor20[stor31[arg1]].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor20[stor31[arg1]].field_1 % 128:
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    if bool(stor12[arg1].field_0):
                        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                            stor12[arg1].field_0 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                        stor12[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor12[arg1].field_0) = 0
                                uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                            stor12[arg1].field_0 = 0
                            idx = 0
                            while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                stor12[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                        stor12[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                bool(stor12[arg1].field_0) = 0
                                uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if 31 >= stor20[stor31[arg1]].field_1 % 128:
                        mem[128] = 256 * Mask(248, 0, stor20[stor31[arg1]].field_8)
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor12[arg1].field_0):
                            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = Mask(248, 0, stor20[stor31[arg1]].field_8)
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                        idx = 0
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = Mask(248, 0, stor20[stor31[arg1]].field_8)
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[128] = stor20[stor31[arg1]].field_0
                        idx = 128
                        s = 0
                        while stor20[stor31[arg1]].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = stor20[stor31[arg1]][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        if bool(stor12[arg1].field_0):
                            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                    idx = 0
                                    while (uint255(stor12[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                stor12[arg1].field_0 = 0
                                idx = 0
                                while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor12[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor20[stor31[arg1]].field_0) * 0.5:
                                    stor12[arg1].field_0 = Mask(254, 1, stor20[stor31[arg1]].field_0) + 1
                                    if not Mask(256, -1, stor20[stor31[arg1]].field_0):
                                        idx = 0
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 128 > idx:
                                            stor12[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor20[stor31[arg1]].field_0) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                            stor12[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    bool(stor12[arg1].field_0) = 0
                                    uint255(stor12[arg1].field_1) = Mask(254, 0, stor20[stor31[arg1]].field_1)
                                    Mask(248, 0, stor12[arg1].field_8) = mem[128 len 31]
                                    idx = 0
                                    while stor12[arg1].field_1 % 128 + 31 / 32 > idx:
                                        stor12[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
    if 1 > !sub_a6accf3a[stor31[arg1]]:
        revert with 0, 17
    sub_a6accf3a[stor31[arg1]]++
}

function mint(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if prices[arg2] and arg1 > -1 / prices[arg2]:
        revert with 0, 17
    if msg.value == prices[arg2] * arg1:
        mem[0] = arg2
        mem[32] = 23
        if currentCounter[arg2] > !arg1:
            revert with 0, 17
        if currentCounter[arg2] + arg1 > max[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaCards: not enough cards left to mint amount'
        call stor14 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor13]:
                revert with 0, 'ERC721: token already minted'
            stor11[stor13] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = _tokenIdTracker
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor13] = msg.sender
                    emit 0x72ddf252: 0, msg.sender, _tokenIdTracker
                    mem[0] = arg2
                    mem[32] = 17
                    if not bool(stor17[arg2].field_0):
                        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                            revert with 0, 34
                        _3280 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17[arg2].field_1 % 128) + 32
                        mem[_3280] = stor17[arg2].field_1 % 128
                        if bool(stor17[arg2].field_0):
                            if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor17[arg2].field_0):
                                if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                    mem[_3280 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                else:
                                    mem[_3280 + 32] = stor17[arg2].field_0
                                    s = _3280 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3280 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor17[arg2].field_1 % 128:
                                if 31 >= stor17[arg2].field_1 % 128:
                                    mem[_3280 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                else:
                                    mem[_3280 + 32] = stor17[arg2].field_0
                                    s = _3280 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3280 + stor17[arg2].field_1 % 128 > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 12
                        if bool(stor12[stor13].field_0):
                            if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_tokenIdTracker, 12)
                            if not stor17[arg2].field_1 % 128:
                                stor12[stor13].field_0 = 0
                                s = sha3(sha3(_tokenIdTracker, 12))
                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                                t = sha3(sha3(_tokenIdTracker, 12))
                                s = _3280 + 32
                                while _3280 + stor17[arg2].field_1 % 128 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_tokenIdTracker, 12)
                            if not stor17[arg2].field_1 % 128:
                                stor12[stor13].field_0 = 0
                                s = sha3(sha3(_tokenIdTracker, 12))
                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                                t = sha3(sha3(_tokenIdTracker, 12))
                                s = _3280 + 32
                                while _3280 + stor17[arg2].field_1 % 128 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _3278 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor17[arg2].field_0) * 0.5) + 32
                        mem[_3278] = uint255(stor17[arg2].field_0) * 0.5
                        if bool(stor17[arg2].field_0):
                            if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor17[arg2].field_0):
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3278 + 32
                                                while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3278 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3278 + 32
                                                while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3278 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                    mem[_3278 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3278 + 32
                                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3278 + 32
                                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_3278 + 32] = stor17[arg2].field_0
                                    s = _3278 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3278 + 32
                                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3278 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3278 + 32
                                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3278 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                        else:
                            if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor17[arg2].field_1 % 128:
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3278 + 32
                                                while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3278 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3278 + 32
                                                while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3278 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= stor17[arg2].field_1 % 128:
                                    mem[_3278 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3278 + 32
                                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3278 + 32
                                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_3278 + 32] = stor17[arg2].field_0
                                    s = _3278 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3278 + stor17[arg2].field_1 % 128 > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3278 + 32
                                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3278 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3278 + 32
                                                    while _3278 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3278 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = _tokenIdTracker
                    stor9[stor13] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor13] = msg.sender
                    emit 0x72ddf252: 0, msg.sender, _tokenIdTracker
                    mem[0] = arg2
                    mem[32] = 17
                    if not bool(stor17[arg2].field_0):
                        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                            revert with 0, 34
                        _3297 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17[arg2].field_1 % 128) + 32
                        mem[_3297] = stor17[arg2].field_1 % 128
                        if bool(stor17[arg2].field_0):
                            if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor17[arg2].field_0):
                                if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                    mem[_3297 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                else:
                                    mem[_3297 + 32] = stor17[arg2].field_0
                                    s = _3297 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3297 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor17[arg2].field_1 % 128:
                                if 31 >= stor17[arg2].field_1 % 128:
                                    mem[_3297 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                else:
                                    mem[_3297 + 32] = stor17[arg2].field_0
                                    s = _3297 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3297 + stor17[arg2].field_1 % 128 > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 12
                        if bool(stor12[stor13].field_0):
                            if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_tokenIdTracker, 12)
                            if not stor17[arg2].field_1 % 128:
                                stor12[stor13].field_0 = 0
                                s = sha3(sha3(_tokenIdTracker, 12))
                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                                t = sha3(sha3(_tokenIdTracker, 12))
                                s = _3297 + 32
                                while _3297 + stor17[arg2].field_1 % 128 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_tokenIdTracker, 12)
                            if not stor17[arg2].field_1 % 128:
                                stor12[stor13].field_0 = 0
                                s = sha3(sha3(_tokenIdTracker, 12))
                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                                t = sha3(sha3(_tokenIdTracker, 12))
                                s = _3297 + 32
                                while _3297 + stor17[arg2].field_1 % 128 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _3294 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor17[arg2].field_0) * 0.5) + 32
                        mem[_3294] = uint255(stor17[arg2].field_0) * 0.5
                        if bool(stor17[arg2].field_0):
                            if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor17[arg2].field_0):
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3294 + 32
                                                while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3294 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3294 + 32
                                                while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3294 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                    mem[_3294 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3294 + 32
                                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3294 + 32
                                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_3294 + 32] = stor17[arg2].field_0
                                    s = _3294 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3294 + 32
                                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3294 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3294 + 32
                                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3294 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                        else:
                            if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor17[arg2].field_1 % 128:
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3294 + 32
                                                while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3294 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3294 + 32
                                                while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3294 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= stor17[arg2].field_1 % 128:
                                    mem[_3294 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3294 + 32
                                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3294 + 32
                                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_3294 + 32] = stor17[arg2].field_0
                                    s = _3294 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3294 + stor17[arg2].field_1 % 128 > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3294 + 32
                                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3294 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3294 + 32
                                                    while _3294 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3294 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor11[stor13] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor11[stor13]] = tokenByIndex[tokenByIndex.length]
                stor11[stor10[stor10.length]] = stor11[stor13]
                stor11[stor13] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor13] = msg.sender
                emit 0x72ddf252: 0, msg.sender, _tokenIdTracker
                mem[0] = arg2
                mem[32] = 17
                if not bool(stor17[arg2].field_0):
                    if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                        revert with 0, 34
                    _3319 = mem[64]
                    mem[64] = mem[64] + ceil32(stor17[arg2].field_1 % 128) + 32
                    mem[_3319] = stor17[arg2].field_1 % 128
                    if bool(stor17[arg2].field_0):
                        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor17[arg2].field_0):
                            if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                mem[_3319 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                            else:
                                mem[_3319 + 32] = stor17[arg2].field_0
                                s = _3319 + 32
                                t = sha3(sha3(arg2, 17))
                                while _3319 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                    mem[s + 32] = roleMember[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor17[arg2].field_1 % 128:
                            if 31 >= stor17[arg2].field_1 % 128:
                                mem[_3319 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                            else:
                                mem[_3319 + 32] = stor17[arg2].field_0
                                s = _3319 + 32
                                t = sha3(sha3(arg2, 17))
                                while _3319 + stor17[arg2].field_1 % 128 > s:
                                    mem[s + 32] = roleMember[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 12
                    if bool(stor12[stor13].field_0):
                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_tokenIdTracker, 12)
                        if not stor17[arg2].field_1 % 128:
                            stor12[stor13].field_0 = 0
                            s = sha3(sha3(_tokenIdTracker, 12))
                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                            t = sha3(sha3(_tokenIdTracker, 12))
                            s = _3319 + 32
                            while _3319 + stor17[arg2].field_1 % 128 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_tokenIdTracker, 12)
                        if not stor17[arg2].field_1 % 128:
                            stor12[stor13].field_0 = 0
                            s = sha3(sha3(_tokenIdTracker, 12))
                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                            t = sha3(sha3(_tokenIdTracker, 12))
                            s = _3319 + 32
                            while _3319 + stor17[arg2].field_1 % 128 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _3309 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor17[arg2].field_0) * 0.5) + 32
                    mem[_3309] = uint255(stor17[arg2].field_0) * 0.5
                    if bool(stor17[arg2].field_0):
                        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor17[arg2].field_0):
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 12
                            if bool(stor12[stor13].field_0):
                                if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_tokenIdTracker, 12)
                                if not uint255(stor17[arg2].field_0) * 0.5:
                                    stor12[stor13].field_0 = 0
                                    s = sha3(sha3(_tokenIdTracker, 12))
                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                        if not Mask(256, -1, stor17[arg2].field_0):
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(_tokenIdTracker, 12))
                                            s = _3309 + 32
                                            while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor12[stor13].field_0) = 0
                                        uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                        Mask(248, 0, stor12[stor13].field_8) = mem[_3309 + 32 len 31]
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_tokenIdTracker, 12)
                                if not uint255(stor17[arg2].field_0) * 0.5:
                                    stor12[stor13].field_0 = 0
                                    s = sha3(sha3(_tokenIdTracker, 12))
                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                        if not Mask(256, -1, stor17[arg2].field_0):
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(_tokenIdTracker, 12))
                                            s = _3309 + 32
                                            while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor12[stor13].field_0) = 0
                                        uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                        Mask(248, 0, stor12[stor13].field_8) = mem[_3309 + 32 len 31]
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                mem[_3309 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3309 + 32
                                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3309 + 32
                                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_3309 + 32] = stor17[arg2].field_0
                                s = _3309 + 32
                                t = sha3(sha3(arg2, 17))
                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                    mem[s + 32] = roleMember[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3309 + 32
                                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3309 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3309 + 32
                                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3309 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                    else:
                        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor17[arg2].field_1 % 128:
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 12
                            if bool(stor12[stor13].field_0):
                                if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_tokenIdTracker, 12)
                                if not uint255(stor17[arg2].field_0) * 0.5:
                                    stor12[stor13].field_0 = 0
                                    s = sha3(sha3(_tokenIdTracker, 12))
                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                        if not Mask(256, -1, stor17[arg2].field_0):
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(_tokenIdTracker, 12))
                                            s = _3309 + 32
                                            while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor12[stor13].field_0) = 0
                                        uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                        Mask(248, 0, stor12[stor13].field_8) = mem[_3309 + 32 len 31]
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_tokenIdTracker, 12)
                                if not uint255(stor17[arg2].field_0) * 0.5:
                                    stor12[stor13].field_0 = 0
                                    s = sha3(sha3(_tokenIdTracker, 12))
                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                        if not Mask(256, -1, stor17[arg2].field_0):
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(_tokenIdTracker, 12))
                                            s = _3309 + 32
                                            while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor12[stor13].field_0) = 0
                                        uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                        Mask(248, 0, stor12[stor13].field_8) = mem[_3309 + 32 len 31]
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= stor17[arg2].field_1 % 128:
                                mem[_3309 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3309 + 32
                                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3309 + 32
                                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_3309 + 32] = stor17[arg2].field_0
                                s = _3309 + 32
                                t = sha3(sha3(arg2, 17))
                                while _3309 + stor17[arg2].field_1 % 128 > s:
                                    mem[s + 32] = roleMember[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3309 + 32
                                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3309 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3309 + 32
                                                while _3309 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3309 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
            if 1 > !currentCounter[arg2]:
                revert with 0, 17
            currentCounter[arg2]++
            uint256(minter[stor13]) = msg.sender or Mask(96, 160, uint256(minter[stor13]))
            mem[0] = _tokenIdTracker
            mem[32] = 31
            sub_3f7a21db[stor13] = arg2
            _tokenIdTracker++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor14 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaCards: must send correct price'
        mem[0] = arg2
        mem[32] = 23
        if currentCounter[arg2] > !arg1:
            revert with 0, 17
        if currentCounter[arg2] + arg1 > max[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaCards: not enough cards left to mint amount'
        call stor14 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor13]:
                revert with 0, 'ERC721: token already minted'
            stor11[stor13] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = _tokenIdTracker
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor13] = msg.sender
                    emit 0x72ddf252: 0, msg.sender, _tokenIdTracker
                    mem[0] = arg2
                    mem[32] = 17
                    if not bool(stor17[arg2].field_0):
                        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                            revert with 0, 34
                        _3282 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17[arg2].field_1 % 128) + 32
                        mem[_3282] = stor17[arg2].field_1 % 128
                        if bool(stor17[arg2].field_0):
                            if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor17[arg2].field_0):
                                if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                    mem[_3282 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                else:
                                    mem[_3282 + 32] = stor17[arg2].field_0
                                    s = _3282 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3282 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor17[arg2].field_1 % 128:
                                if 31 >= stor17[arg2].field_1 % 128:
                                    mem[_3282 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                else:
                                    mem[_3282 + 32] = stor17[arg2].field_0
                                    s = _3282 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3282 + stor17[arg2].field_1 % 128 > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 12
                        if bool(stor12[stor13].field_0):
                            if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_tokenIdTracker, 12)
                            if not stor17[arg2].field_1 % 128:
                                stor12[stor13].field_0 = 0
                                s = sha3(sha3(_tokenIdTracker, 12))
                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                                t = sha3(sha3(_tokenIdTracker, 12))
                                s = _3282 + 32
                                while _3282 + stor17[arg2].field_1 % 128 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_tokenIdTracker, 12)
                            if not stor17[arg2].field_1 % 128:
                                stor12[stor13].field_0 = 0
                                s = sha3(sha3(_tokenIdTracker, 12))
                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                                t = sha3(sha3(_tokenIdTracker, 12))
                                s = _3282 + 32
                                while _3282 + stor17[arg2].field_1 % 128 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _3279 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor17[arg2].field_0) * 0.5) + 32
                        mem[_3279] = uint255(stor17[arg2].field_0) * 0.5
                        if bool(stor17[arg2].field_0):
                            if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor17[arg2].field_0):
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3279 + 32
                                                while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3279 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3279 + 32
                                                while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3279 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                    mem[_3279 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3279 + 32
                                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3279 + 32
                                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_3279 + 32] = stor17[arg2].field_0
                                    s = _3279 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3279 + 32
                                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3279 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3279 + 32
                                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3279 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                        else:
                            if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor17[arg2].field_1 % 128:
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3279 + 32
                                                while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3279 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3279 + 32
                                                while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3279 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= stor17[arg2].field_1 % 128:
                                    mem[_3279 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3279 + 32
                                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3279 + 32
                                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_3279 + 32] = stor17[arg2].field_0
                                    s = _3279 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3279 + stor17[arg2].field_1 % 128 > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3279 + 32
                                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3279 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3279 + 32
                                                    while _3279 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3279 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = _tokenIdTracker
                    stor9[stor13] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor13] = msg.sender
                    emit 0x72ddf252: 0, msg.sender, _tokenIdTracker
                    mem[0] = arg2
                    mem[32] = 17
                    if not bool(stor17[arg2].field_0):
                        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                            revert with 0, 34
                        _3299 = mem[64]
                        mem[64] = mem[64] + ceil32(stor17[arg2].field_1 % 128) + 32
                        mem[_3299] = stor17[arg2].field_1 % 128
                        if bool(stor17[arg2].field_0):
                            if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor17[arg2].field_0):
                                if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                    mem[_3299 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                else:
                                    mem[_3299 + 32] = stor17[arg2].field_0
                                    s = _3299 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3299 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor17[arg2].field_1 % 128:
                                if 31 >= stor17[arg2].field_1 % 128:
                                    mem[_3299 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                else:
                                    mem[_3299 + 32] = stor17[arg2].field_0
                                    s = _3299 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3299 + stor17[arg2].field_1 % 128 > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 12
                        if bool(stor12[stor13].field_0):
                            if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_tokenIdTracker, 12)
                            if not stor17[arg2].field_1 % 128:
                                stor12[stor13].field_0 = 0
                                s = sha3(sha3(_tokenIdTracker, 12))
                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                                t = sha3(sha3(_tokenIdTracker, 12))
                                s = _3299 + 32
                                while _3299 + stor17[arg2].field_1 % 128 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_tokenIdTracker, 12)
                            if not stor17[arg2].field_1 % 128:
                                stor12[stor13].field_0 = 0
                                s = sha3(sha3(_tokenIdTracker, 12))
                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                                t = sha3(sha3(_tokenIdTracker, 12))
                                s = _3299 + 32
                                while _3299 + stor17[arg2].field_1 % 128 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _3295 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor17[arg2].field_0) * 0.5) + 32
                        mem[_3295] = uint255(stor17[arg2].field_0) * 0.5
                        if bool(stor17[arg2].field_0):
                            if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor17[arg2].field_0):
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3295 + 32
                                                while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3295 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3295 + 32
                                                while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3295 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                    mem[_3295 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3295 + 32
                                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3295 + 32
                                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_3295 + 32] = stor17[arg2].field_0
                                    s = _3295 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3295 + 32
                                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3295 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3295 + 32
                                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3295 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                        else:
                            if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor17[arg2].field_1 % 128:
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3295 + 32
                                                while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3295 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3295 + 32
                                                while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3295 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= stor17[arg2].field_1 % 128:
                                    mem[_3295 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3295 + 32
                                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3295 + 32
                                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_3295 + 32] = stor17[arg2].field_0
                                    s = _3295 + 32
                                    t = sha3(sha3(arg2, 17))
                                    while _3295 + stor17[arg2].field_1 % 128 > s:
                                        mem[s + 32] = roleMember[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[stor13]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 12
                                    if bool(stor12[stor13].field_0):
                                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3295 + 32
                                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3295 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(_tokenIdTracker, 12)
                                        if not uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = 0
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                                stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                                if not Mask(256, -1, stor17[arg2].field_0):
                                                    s = sha3(sha3(_tokenIdTracker, 12))
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(_tokenIdTracker, 12))
                                                    s = _3295 + 32
                                                    while _3295 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                        stor[t] = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor12[stor13].field_0) = 0
                                                uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                                Mask(248, 0, stor12[stor13].field_8) = mem[_3295 + 32 len 31]
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor11[stor13] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor11[stor13]] = tokenByIndex[tokenByIndex.length]
                stor11[stor10[stor10.length]] = stor11[stor13]
                stor11[stor13] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor13] = msg.sender
                emit 0x72ddf252: 0, msg.sender, _tokenIdTracker
                mem[0] = arg2
                mem[32] = 17
                if not bool(stor17[arg2].field_0):
                    if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                        revert with 0, 34
                    _3325 = mem[64]
                    mem[64] = mem[64] + ceil32(stor17[arg2].field_1 % 128) + 32
                    mem[_3325] = stor17[arg2].field_1 % 128
                    if bool(stor17[arg2].field_0):
                        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor17[arg2].field_0):
                            if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                mem[_3325 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                            else:
                                mem[_3325 + 32] = stor17[arg2].field_0
                                s = _3325 + 32
                                t = sha3(sha3(arg2, 17))
                                while _3325 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                    mem[s + 32] = roleMember[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor17[arg2].field_1 % 128:
                            if 31 >= stor17[arg2].field_1 % 128:
                                mem[_3325 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                            else:
                                mem[_3325 + 32] = stor17[arg2].field_0
                                s = _3325 + 32
                                t = sha3(sha3(arg2, 17))
                                while _3325 + stor17[arg2].field_1 % 128 > s:
                                    mem[s + 32] = roleMember[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 12
                    if bool(stor12[stor13].field_0):
                        if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_tokenIdTracker, 12)
                        if not stor17[arg2].field_1 % 128:
                            stor12[stor13].field_0 = 0
                            s = sha3(sha3(_tokenIdTracker, 12))
                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                            t = sha3(sha3(_tokenIdTracker, 12))
                            s = _3325 + 32
                            while _3325 + stor17[arg2].field_1 % 128 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_tokenIdTracker, 12)
                        if not stor17[arg2].field_1 % 128:
                            stor12[stor13].field_0 = 0
                            s = sha3(sha3(_tokenIdTracker, 12))
                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor12[stor13].field_0 = (2 * stor17[arg2].field_1 % 128) + 1
                            t = sha3(sha3(_tokenIdTracker, 12))
                            s = _3325 + 32
                            while _3325 + stor17[arg2].field_1 % 128 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, stor17[arg2].field_1 % 128 + 31) >> 5)
                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _3313 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor17[arg2].field_0) * 0.5) + 32
                    mem[_3313] = uint255(stor17[arg2].field_0) * 0.5
                    if bool(stor17[arg2].field_0):
                        if bool(stor17[arg2].field_0) == uint255(stor17[arg2].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor17[arg2].field_0):
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 12
                            if bool(stor12[stor13].field_0):
                                if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_tokenIdTracker, 12)
                                if not uint255(stor17[arg2].field_0) * 0.5:
                                    stor12[stor13].field_0 = 0
                                    s = sha3(sha3(_tokenIdTracker, 12))
                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                        if not Mask(256, -1, stor17[arg2].field_0):
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(_tokenIdTracker, 12))
                                            s = _3313 + 32
                                            while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor12[stor13].field_0) = 0
                                        uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                        Mask(248, 0, stor12[stor13].field_8) = mem[_3313 + 32 len 31]
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_tokenIdTracker, 12)
                                if not uint255(stor17[arg2].field_0) * 0.5:
                                    stor12[stor13].field_0 = 0
                                    s = sha3(sha3(_tokenIdTracker, 12))
                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                        if not Mask(256, -1, stor17[arg2].field_0):
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(_tokenIdTracker, 12))
                                            s = _3313 + 32
                                            while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor12[stor13].field_0) = 0
                                        uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                        Mask(248, 0, stor12[stor13].field_8) = mem[_3313 + 32 len 31]
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= uint255(stor17[arg2].field_0) * 0.5:
                                mem[_3313 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3313 + 32
                                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3313 + 32
                                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_3313 + 32] = stor17[arg2].field_0
                                s = _3313 + 32
                                t = sha3(sha3(arg2, 17))
                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) > s:
                                    mem[s + 32] = roleMember[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3313 + 32
                                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3313 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3313 + 32
                                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3313 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                    else:
                        if bool(stor17[arg2].field_0) == stor17[arg2].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor17[arg2].field_1 % 128:
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 12
                            if bool(stor12[stor13].field_0):
                                if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_tokenIdTracker, 12)
                                if not uint255(stor17[arg2].field_0) * 0.5:
                                    stor12[stor13].field_0 = 0
                                    s = sha3(sha3(_tokenIdTracker, 12))
                                    while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                        if not Mask(256, -1, stor17[arg2].field_0):
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(_tokenIdTracker, 12))
                                            s = _3313 + 32
                                            while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor12[stor13].field_0) = 0
                                        uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                        Mask(248, 0, stor12[stor13].field_8) = mem[_3313 + 32 len 31]
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_tokenIdTracker, 12)
                                if not uint255(stor17[arg2].field_0) * 0.5:
                                    stor12[stor13].field_0 = 0
                                    s = sha3(sha3(_tokenIdTracker, 12))
                                    while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                        if not Mask(256, -1, stor17[arg2].field_0):
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(_tokenIdTracker, 12))
                                            s = _3313 + 32
                                            while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor12[stor13].field_0) = 0
                                        uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                        Mask(248, 0, stor12[stor13].field_8) = mem[_3313 + 32 len 31]
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= stor17[arg2].field_1 % 128:
                                mem[_3313 + 32] = 256 * Mask(248, 0, stor17[arg2].field_8)
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3313 + 32
                                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3313 + 32
                                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = Mask(248, 0, stor17[arg2].field_8)
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_3313 + 32] = stor17[arg2].field_0
                                s = _3313 + 32
                                t = sha3(sha3(arg2, 17))
                                while _3313 + stor17[arg2].field_1 % 128 > s:
                                    mem[s + 32] = roleMember[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 12
                                if bool(stor12[stor13].field_0):
                                    if bool(stor12[stor13].field_0) == uint255(stor12[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3313 + 32
                                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3313 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + ((uint255(stor12[stor13].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor12[stor13].field_0) == stor12[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(_tokenIdTracker, 12)
                                    if not uint255(stor17[arg2].field_0) * 0.5:
                                        stor12[stor13].field_0 = 0
                                        s = sha3(sha3(_tokenIdTracker, 12))
                                        while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor17[arg2].field_0) * 0.5:
                                            stor12[stor13].field_0 = Mask(254, 1, stor17[arg2].field_0) + 1
                                            if not Mask(256, -1, stor17[arg2].field_0):
                                                s = sha3(sha3(_tokenIdTracker, 12))
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(_tokenIdTracker, 12))
                                                s = _3313 + 32
                                                while _3313 + (uint255(stor17[arg2].field_0) * 0.5) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(_tokenIdTracker, 12)) + (Mask(251, 0, (uint255(stor17[arg2].field_0) * 0.5) + 31) >> 5)
                                                while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor12[stor13].field_0) = 0
                                            uint255(stor12[stor13].field_1) = Mask(254, 0, stor17[arg2].field_1)
                                            Mask(248, 0, stor12[stor13].field_8) = mem[_3313 + 32 len 31]
                                            s = sha3(sha3(_tokenIdTracker, 12))
                                            while sha3(sha3(_tokenIdTracker, 12)) + (stor12[stor13].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
            if 1 > !currentCounter[arg2]:
                revert with 0, 17
            currentCounter[arg2]++
            uint256(minter[stor13]) = msg.sender or Mask(96, 160, uint256(minter[stor13]))
            mem[0] = _tokenIdTracker
            mem[32] = 31
            sub_3f7a21db[stor13] = arg2
            _tokenIdTracker++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
