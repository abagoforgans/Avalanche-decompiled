contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
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
array of uint256 stor14;
uint256 stor15;
address _adminAddress;
address sub_ca29e8c8Address;
address sub_24fe16cbAddress;
address sub_7a88a525Address;
uint8 stor20; offset 160
uint8 stor20; offset 168
uint8 stor20; offset 176
uint128 stor20; offset 184
uint128 stor20; offset 176
address sub_9be42a6aAddress;
uint256 mintPrice;
uint256 sub_a14ed814;
uint256 sub_0e70bd7d;
mapping of address minter;
mapping of uint256 sub_5c2b11c0;

function _admin() {
    return _adminAddress
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0e70bd7d(?) {
    return sub_0e70bd7d
}

function totalSupply() {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_24fe16cb(?) {
    return sub_24fe16cbAddress
}

function sub_25926c1e(?) {
    return bool(uint8(stor20.field_176))
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

function sub_5c2b11c0(?) {
    require calldata.size - 4 >= 32
    return sub_5c2b11c0[arg1]
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

function sub_7a88a525(?) {
    return sub_7a88a525Address
}

function tokenMinter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return minter[arg1]
}

function sub_7dd04ccc(?) {
    return bool(uint8(stor20.field_168))
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _tokenIdTracker() {
    return _tokenIdTracker
}

function sub_9be42a6a(?) {
    return sub_9be42a6aAddress
}

function sub_a14ed814(?) {
    return sub_a14ed814
}

function minter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return minter[arg1]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_ca29e8c8(?) {
    return sub_ca29e8c8Address
}

function sub_cd9a2228(?) {
    return bool(uint8(stor20.field_160))
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
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setMintFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe4d696e657253616d3a206d75737420686176652061646d696e20726f6c6520,
                    'o change mint fee address'
    sub_24fe16cbAddress = arg1
}

function setPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe4d696e657253616d3a206d75737420686176652061646d696e20726f6c6520,
                    'o change price' << 144
    mintPrice = arg1
    sub_a14ed814 = arg2
    sub_0e70bd7d = arg3
}

function sub_0520b708(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0xfe4d696e657253616d3a206d75737420686176652061646d696e20726f6c6520,
                    0x6f206368616e676520676f6c6420636f6e747261637400000000000000000000
    sub_7a88a525Address = address(arg1)
}

function sub_813f467a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xfe4d696e657253616d3a206d75737420686176652061646d696e20726f6c6520,
                    0x6f206368616e67652074626420636f6e74726163740000000000000000000000
    sub_9be42a6aAddress = address(arg1)
}

function sub_bc3b4555(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe4d696e657253616d3a206d75737420686176652061646d696e20726f6c6520,
                    'o change mint status' << 96
    uint8(stor20.field_160) = uint8(bool(arg1))
    uint8(stor20.field_168) = uint8(bool(arg2))
    Mask(80, 0, stor20.field_176) = Mask(80, 0, bool(arg3))
    Mask(72, 0, stor20.field_184) = 0
    Mask(72, 0, stor20.field_184) = Mask(72, 24, bool(arg1)) >> 24
    Mask(72, 0, stor20.field_184) = Mask(72, 16, bool(arg2)) >> 16
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

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 32, 49, 0xfe4d696e657253616d3a206d75737420686176652061646d696e20726f6c6520, 'o change base URI' << 120
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while (uint255(stor14.length) * 0.5) + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
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
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 32, 50, 0xfe4d696e657253616d3a206d75737420686176652061646d696e20726f6c6520, 'o change token URI' << 112
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == uint255(stor12[arg1].field_0) * 0.5 < 32:
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
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
        revert with 0, 'ERC721: transfer from incorrect owner'
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
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
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
        revert with 0, 'ERC721: transfer from incorrect owner'
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: mint quantity must be less than 20'
    if bool(uint8(stor20.field_160)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: public sale not open yet'
    if _tokenIdTracker > !arg1:
        revert with 0, 17
    if _tokenIdTracker + arg1 > stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: not enough NFT's left to mint amount'
    if mintPrice and arg1 > -1 / mintPrice:
        revert with 0, 17
    if mintPrice * arg1 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: not enough AVAX to mint'
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
                emit Transfer(0, msg.sender, _tokenIdTracker);
                mem[0] = _tokenIdTracker
                mem[32] = 24
                minter[stor13] = msg.sender
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = block.hash(block.number)
                mem[mem[64] + 128] = address(msg.sender)
                _122 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _124 = sha3(mem[_122 + 32 len mem[_122]])
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = _124 % 100000
                if _124 % 100000 < 13000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 1
                else:
                    if _124 % 100000 < 25000:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 2
                    else:
                        if _124 % 100000 < 10 * 3600:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 3
                        else:
                            if _124 % 100000 < 46000:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 4
                            else:
                                if _124 % 100000 < 55500:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 5
                                else:
                                    if _124 % 100000 < 64000:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 6
                                    else:
                                        if _124 % 100000 < 20 * 3600:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 7
                                        else:
                                            if _124 % 100000 < 79000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 8
                                            else:
                                                if _124 % 100000 < 85000:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 9
                                                else:
                                                    if _124 % 100000 < 25 * 3600:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 10
                                                    else:
                                                        if _124 % 100000 < 94000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 11
                                                        else:
                                                            if _124 % 100000 < 97000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 12
                                                            else:
                                                                if _124 % 100000 < 99000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 13
                                                                else:
                                                                    if _124 % 100000 < 100000:
                                                                        mem[0] = _tokenIdTracker
                                                                        mem[32] = 25
                                                                        sub_5c2b11c0[stor13] = 14
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = _tokenIdTracker
                stor9[stor13] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, _tokenIdTracker);
                mem[0] = _tokenIdTracker
                mem[32] = 24
                minter[stor13] = msg.sender
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = block.hash(block.number)
                mem[mem[64] + 128] = address(msg.sender)
                _133 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _135 = sha3(mem[_133 + 32 len mem[_133]])
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = _135 % 100000
                if _135 % 100000 < 13000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 1
                else:
                    if _135 % 100000 < 25000:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 2
                    else:
                        if _135 % 100000 < 10 * 3600:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 3
                        else:
                            if _135 % 100000 < 46000:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 4
                            else:
                                if _135 % 100000 < 55500:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 5
                                else:
                                    if _135 % 100000 < 64000:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 6
                                    else:
                                        if _135 % 100000 < 20 * 3600:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 7
                                        else:
                                            if _135 % 100000 < 79000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 8
                                            else:
                                                if _135 % 100000 < 85000:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 9
                                                else:
                                                    if _135 % 100000 < 25 * 3600:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 10
                                                    else:
                                                        if _135 % 100000 < 94000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 11
                                                        else:
                                                            if _135 % 100000 < 97000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 12
                                                            else:
                                                                if _135 % 100000 < 99000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 13
                                                                else:
                                                                    if _135 % 100000 < 100000:
                                                                        mem[0] = _tokenIdTracker
                                                                        mem[32] = 25
                                                                        sub_5c2b11c0[stor13] = 14
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
            emit Transfer(0, msg.sender, _tokenIdTracker);
            mem[0] = _tokenIdTracker
            mem[32] = 24
            minter[stor13] = msg.sender
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = block.hash(block.number)
            mem[mem[64] + 128] = address(msg.sender)
            _140 = mem[64]
            mem[mem[64]] = 116
            mem[64] = mem[64] + 148
            _142 = sha3(mem[_140 + 32 len mem[_140]])
            mem[0] = _tokenIdTracker
            mem[32] = 25
            sub_5c2b11c0[stor13] = _142 % 100000
            if _142 % 100000 < 13000:
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = 1
            else:
                if _142 % 100000 < 25000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 2
                else:
                    if _142 % 100000 < 10 * 3600:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 3
                    else:
                        if _142 % 100000 < 46000:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 4
                        else:
                            if _142 % 100000 < 55500:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 5
                            else:
                                if _142 % 100000 < 64000:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 6
                                else:
                                    if _142 % 100000 < 20 * 3600:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 7
                                    else:
                                        if _142 % 100000 < 79000:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 8
                                        else:
                                            if _142 % 100000 < 85000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 9
                                            else:
                                                if _142 % 100000 < 25 * 3600:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 10
                                                else:
                                                    if _142 % 100000 < 94000:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 11
                                                    else:
                                                        if _142 % 100000 < 97000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 12
                                                        else:
                                                            if _142 % 100000 < 99000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 13
                                                            else:
                                                                if _142 % 100000 < 100000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 14
        _tokenIdTracker++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    call sub_24fe16cbAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_62ac38b3(?) {
    require calldata.size - 4 >= 32
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: mint quantity must be less than 20'
    if bool(uint8(stor20.field_176)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: gold public sale not open yet'
    if _tokenIdTracker > !arg1:
        revert with 0, 17
    if _tokenIdTracker + arg1 > stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: not enough NFT's left to mint amount'
    if arg1 and sub_0e70bd7d > -1 / arg1:
        revert with 0, 17
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1 * sub_0e70bd7d
    require ext_code.size(sub_9be42a6aAddress)
    call sub_9be42a6aAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * sub_0e70bd7d
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
                emit Transfer(0, msg.sender, _tokenIdTracker);
                mem[0] = _tokenIdTracker
                mem[32] = 24
                minter[stor13] = msg.sender
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = block.hash(block.number)
                mem[mem[64] + 128] = address(msg.sender)
                _122 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _124 = sha3(mem[_122 + 32 len mem[_122]])
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = _124 % 100000
                if _124 % 100000 < 13000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 1
                else:
                    if _124 % 100000 < 25000:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 2
                    else:
                        if _124 % 100000 < 10 * 3600:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 3
                        else:
                            if _124 % 100000 < 46000:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 4
                            else:
                                if _124 % 100000 < 55500:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 5
                                else:
                                    if _124 % 100000 < 64000:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 6
                                    else:
                                        if _124 % 100000 < 20 * 3600:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 7
                                        else:
                                            if _124 % 100000 < 79000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 8
                                            else:
                                                if _124 % 100000 < 85000:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 9
                                                else:
                                                    if _124 % 100000 < 25 * 3600:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 10
                                                    else:
                                                        if _124 % 100000 < 94000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 11
                                                        else:
                                                            if _124 % 100000 < 97000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 12
                                                            else:
                                                                if _124 % 100000 < 99000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 13
                                                                else:
                                                                    if _124 % 100000 < 100000:
                                                                        mem[0] = _tokenIdTracker
                                                                        mem[32] = 25
                                                                        sub_5c2b11c0[stor13] = 14
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = _tokenIdTracker
                stor9[stor13] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, _tokenIdTracker);
                mem[0] = _tokenIdTracker
                mem[32] = 24
                minter[stor13] = msg.sender
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = block.hash(block.number)
                mem[mem[64] + 128] = address(msg.sender)
                _133 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _135 = sha3(mem[_133 + 32 len mem[_133]])
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = _135 % 100000
                if _135 % 100000 < 13000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 1
                else:
                    if _135 % 100000 < 25000:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 2
                    else:
                        if _135 % 100000 < 10 * 3600:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 3
                        else:
                            if _135 % 100000 < 46000:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 4
                            else:
                                if _135 % 100000 < 55500:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 5
                                else:
                                    if _135 % 100000 < 64000:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 6
                                    else:
                                        if _135 % 100000 < 20 * 3600:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 7
                                        else:
                                            if _135 % 100000 < 79000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 8
                                            else:
                                                if _135 % 100000 < 85000:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 9
                                                else:
                                                    if _135 % 100000 < 25 * 3600:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 10
                                                    else:
                                                        if _135 % 100000 < 94000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 11
                                                        else:
                                                            if _135 % 100000 < 97000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 12
                                                            else:
                                                                if _135 % 100000 < 99000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 13
                                                                else:
                                                                    if _135 % 100000 < 100000:
                                                                        mem[0] = _tokenIdTracker
                                                                        mem[32] = 25
                                                                        sub_5c2b11c0[stor13] = 14
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
            emit Transfer(0, msg.sender, _tokenIdTracker);
            mem[0] = _tokenIdTracker
            mem[32] = 24
            minter[stor13] = msg.sender
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = block.hash(block.number)
            mem[mem[64] + 128] = address(msg.sender)
            _140 = mem[64]
            mem[mem[64]] = 116
            mem[64] = mem[64] + 148
            _142 = sha3(mem[_140 + 32 len mem[_140]])
            mem[0] = _tokenIdTracker
            mem[32] = 25
            sub_5c2b11c0[stor13] = _142 % 100000
            if _142 % 100000 < 13000:
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = 1
            else:
                if _142 % 100000 < 25000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 2
                else:
                    if _142 % 100000 < 10 * 3600:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 3
                    else:
                        if _142 % 100000 < 46000:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 4
                        else:
                            if _142 % 100000 < 55500:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 5
                            else:
                                if _142 % 100000 < 64000:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 6
                                else:
                                    if _142 % 100000 < 20 * 3600:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 7
                                    else:
                                        if _142 % 100000 < 79000:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 8
                                        else:
                                            if _142 % 100000 < 85000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 9
                                            else:
                                                if _142 % 100000 < 25 * 3600:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 10
                                                else:
                                                    if _142 % 100000 < 94000:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 11
                                                    else:
                                                        if _142 % 100000 < 97000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 12
                                                        else:
                                                            if _142 % 100000 < 99000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 13
                                                            else:
                                                                if _142 % 100000 < 100000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 14
        _tokenIdTracker++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a08be7b0(?) {
    require calldata.size - 4 >= 32
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: mint quantity must be less than 20'
    if bool(uint8(stor20.field_168)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: gold public sale not open yet'
    if _tokenIdTracker > !arg1:
        revert with 0, 17
    if _tokenIdTracker + arg1 > stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: not enough NFT's left to mint amount'
    if arg1 and sub_a14ed814 > -1 / arg1:
        revert with 0, 17
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1 * sub_a14ed814
    require ext_code.size(sub_7a88a525Address)
    call sub_7a88a525Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * sub_a14ed814
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
                emit Transfer(0, msg.sender, _tokenIdTracker);
                mem[0] = _tokenIdTracker
                mem[32] = 24
                minter[stor13] = msg.sender
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = block.hash(block.number)
                mem[mem[64] + 128] = address(msg.sender)
                _122 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _124 = sha3(mem[_122 + 32 len mem[_122]])
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = _124 % 100000
                if _124 % 100000 < 13000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 1
                else:
                    if _124 % 100000 < 25000:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 2
                    else:
                        if _124 % 100000 < 10 * 3600:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 3
                        else:
                            if _124 % 100000 < 46000:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 4
                            else:
                                if _124 % 100000 < 55500:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 5
                                else:
                                    if _124 % 100000 < 64000:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 6
                                    else:
                                        if _124 % 100000 < 20 * 3600:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 7
                                        else:
                                            if _124 % 100000 < 79000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 8
                                            else:
                                                if _124 % 100000 < 85000:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 9
                                                else:
                                                    if _124 % 100000 < 25 * 3600:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 10
                                                    else:
                                                        if _124 % 100000 < 94000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 11
                                                        else:
                                                            if _124 % 100000 < 97000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 12
                                                            else:
                                                                if _124 % 100000 < 99000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 13
                                                                else:
                                                                    if _124 % 100000 < 100000:
                                                                        mem[0] = _tokenIdTracker
                                                                        mem[32] = 25
                                                                        sub_5c2b11c0[stor13] = 14
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = _tokenIdTracker
                stor9[stor13] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, _tokenIdTracker);
                mem[0] = _tokenIdTracker
                mem[32] = 24
                minter[stor13] = msg.sender
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = block.hash(block.number)
                mem[mem[64] + 128] = address(msg.sender)
                _133 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _135 = sha3(mem[_133 + 32 len mem[_133]])
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = _135 % 100000
                if _135 % 100000 < 13000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 1
                else:
                    if _135 % 100000 < 25000:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 2
                    else:
                        if _135 % 100000 < 10 * 3600:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 3
                        else:
                            if _135 % 100000 < 46000:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 4
                            else:
                                if _135 % 100000 < 55500:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 5
                                else:
                                    if _135 % 100000 < 64000:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 6
                                    else:
                                        if _135 % 100000 < 20 * 3600:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 7
                                        else:
                                            if _135 % 100000 < 79000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 8
                                            else:
                                                if _135 % 100000 < 85000:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 9
                                                else:
                                                    if _135 % 100000 < 25 * 3600:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 10
                                                    else:
                                                        if _135 % 100000 < 94000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 11
                                                        else:
                                                            if _135 % 100000 < 97000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 12
                                                            else:
                                                                if _135 % 100000 < 99000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 13
                                                                else:
                                                                    if _135 % 100000 < 100000:
                                                                        mem[0] = _tokenIdTracker
                                                                        mem[32] = 25
                                                                        sub_5c2b11c0[stor13] = 14
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
            emit Transfer(0, msg.sender, _tokenIdTracker);
            mem[0] = _tokenIdTracker
            mem[32] = 24
            minter[stor13] = msg.sender
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = block.hash(block.number)
            mem[mem[64] + 128] = address(msg.sender)
            _140 = mem[64]
            mem[mem[64]] = 116
            mem[64] = mem[64] + 148
            _142 = sha3(mem[_140 + 32 len mem[_140]])
            mem[0] = _tokenIdTracker
            mem[32] = 25
            sub_5c2b11c0[stor13] = _142 % 100000
            if _142 % 100000 < 13000:
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = 1
            else:
                if _142 % 100000 < 25000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 2
                else:
                    if _142 % 100000 < 10 * 3600:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 3
                    else:
                        if _142 % 100000 < 46000:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 4
                        else:
                            if _142 % 100000 < 55500:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 5
                            else:
                                if _142 % 100000 < 64000:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 6
                                else:
                                    if _142 % 100000 < 20 * 3600:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 7
                                    else:
                                        if _142 % 100000 < 79000:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 8
                                        else:
                                            if _142 % 100000 < 85000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 9
                                            else:
                                                if _142 % 100000 < 25 * 3600:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 10
                                                else:
                                                    if _142 % 100000 < 94000:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 11
                                                    else:
                                                        if _142 % 100000 < 97000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 12
                                                        else:
                                                            if _142 % 100000 < 99000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 13
                                                            else:
                                                                if _142 % 100000 < 100000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 14
        _tokenIdTracker++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function airdropMint(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4d696e657253616d3a206d75737420686176652061646d696e20726f6c6520,
                    0x6f2061697264726f700000000000000000000000000000000000000000000000
    if _tokenIdTracker > !arg1.length:
        revert with 0, 17
    if _tokenIdTracker + arg1.length > stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinerSam: not enough NFT's left to mint amount'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = _tokenIdTracker
        if address(cd[((32 * idx) + arg1 + 36)]):
            if not address(cd[((32 * idx) + arg1 + 36)]):
                if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > -2:
                    revert with 0, 17
                balanceOf[address(cd[((32 * idx) + arg1 + 36)])]++
                ownerOf[stor13] = address(cd[((32 * idx) + arg1 + 36)])
                emit Transfer(0, address(cd[((32 * idx) + arg1 + 36)]), _tokenIdTracker);
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[0] = _tokenIdTracker
                mem[32] = 24
                minter[stor13] = address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = block.hash(block.number)
                mem[mem[64] + 128] = address(cd[((32 * idx) + arg1 + 36)])
                _127 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _129 = sha3(mem[_127 + 32 len mem[_127]])
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = _129 % 100000
                if _129 % 100000 < 13000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 1
                else:
                    if _129 % 100000 < 25000:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 2
                    else:
                        if _129 % 100000 < 10 * 3600:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 3
                        else:
                            if _129 % 100000 < 46000:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 4
                            else:
                                if _129 % 100000 < 55500:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 5
                                else:
                                    if _129 % 100000 < 64000:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 6
                                    else:
                                        if _129 % 100000 < 20 * 3600:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 7
                                        else:
                                            if _129 % 100000 < 79000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 8
                                            else:
                                                if _129 % 100000 < 85000:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 9
                                                else:
                                                    if _129 % 100000 < 25 * 3600:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 10
                                                    else:
                                                        if _129 % 100000 < 94000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 11
                                                        else:
                                                            if _129 % 100000 < 97000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 12
                                                            else:
                                                                if _129 % 100000 < 99000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 13
                                                                else:
                                                                    if _129 % 100000 < 100000:
                                                                        mem[0] = _tokenIdTracker
                                                                        mem[32] = 25
                                                                        sub_5c2b11c0[stor13] = 14
            else:
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(cd[((32 * idx) + arg1 + 36)])][stor5[address(cd[((32 * idx) + arg1 + 36)])]] = _tokenIdTracker
                stor9[stor13] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
                if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > -2:
                    revert with 0, 17
                balanceOf[address(cd[((32 * idx) + arg1 + 36)])]++
                ownerOf[stor13] = address(cd[((32 * idx) + arg1 + 36)])
                emit Transfer(0, address(cd[((32 * idx) + arg1 + 36)]), _tokenIdTracker);
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[0] = _tokenIdTracker
                mem[32] = 24
                minter[stor13] = address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = block.hash(block.number)
                mem[mem[64] + 128] = address(cd[((32 * idx) + arg1 + 36)])
                _132 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _134 = sha3(mem[_132 + 32 len mem[_132]])
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = _134 % 100000
                if _134 % 100000 < 13000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 1
                else:
                    if _134 % 100000 < 25000:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 2
                    else:
                        if _134 % 100000 < 10 * 3600:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 3
                        else:
                            if _134 % 100000 < 46000:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 4
                            else:
                                if _134 % 100000 < 55500:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 5
                                else:
                                    if _134 % 100000 < 64000:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 6
                                    else:
                                        if _134 % 100000 < 20 * 3600:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 7
                                        else:
                                            if _134 % 100000 < 79000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 8
                                            else:
                                                if _134 % 100000 < 85000:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 9
                                                else:
                                                    if _134 % 100000 < 25 * 3600:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 10
                                                    else:
                                                        if _134 % 100000 < 94000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 11
                                                        else:
                                                            if _134 % 100000 < 97000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 12
                                                            else:
                                                                if _134 % 100000 < 99000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 13
                                                                else:
                                                                    if _134 % 100000 < 100000:
                                                                        mem[0] = _tokenIdTracker
                                                                        mem[32] = 25
                                                                        sub_5c2b11c0[stor13] = 14
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
            if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > -2:
                revert with 0, 17
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])]++
            ownerOf[stor13] = address(cd[((32 * idx) + arg1 + 36)])
            emit Transfer(0, address(cd[((32 * idx) + arg1 + 36)]), _tokenIdTracker);
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = _tokenIdTracker
            mem[32] = 24
            minter[stor13] = address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = block.hash(block.number)
            mem[mem[64] + 128] = address(cd[((32 * idx) + arg1 + 36)])
            _138 = mem[64]
            mem[mem[64]] = 116
            mem[64] = mem[64] + 148
            _140 = sha3(mem[_138 + 32 len mem[_138]])
            mem[0] = _tokenIdTracker
            mem[32] = 25
            sub_5c2b11c0[stor13] = _140 % 100000
            if _140 % 100000 < 13000:
                mem[0] = _tokenIdTracker
                mem[32] = 25
                sub_5c2b11c0[stor13] = 1
            else:
                if _140 % 100000 < 25000:
                    mem[0] = _tokenIdTracker
                    mem[32] = 25
                    sub_5c2b11c0[stor13] = 2
                else:
                    if _140 % 100000 < 10 * 3600:
                        mem[0] = _tokenIdTracker
                        mem[32] = 25
                        sub_5c2b11c0[stor13] = 3
                    else:
                        if _140 % 100000 < 46000:
                            mem[0] = _tokenIdTracker
                            mem[32] = 25
                            sub_5c2b11c0[stor13] = 4
                        else:
                            if _140 % 100000 < 55500:
                                mem[0] = _tokenIdTracker
                                mem[32] = 25
                                sub_5c2b11c0[stor13] = 5
                            else:
                                if _140 % 100000 < 64000:
                                    mem[0] = _tokenIdTracker
                                    mem[32] = 25
                                    sub_5c2b11c0[stor13] = 6
                                else:
                                    if _140 % 100000 < 20 * 3600:
                                        mem[0] = _tokenIdTracker
                                        mem[32] = 25
                                        sub_5c2b11c0[stor13] = 7
                                    else:
                                        if _140 % 100000 < 79000:
                                            mem[0] = _tokenIdTracker
                                            mem[32] = 25
                                            sub_5c2b11c0[stor13] = 8
                                        else:
                                            if _140 % 100000 < 85000:
                                                mem[0] = _tokenIdTracker
                                                mem[32] = 25
                                                sub_5c2b11c0[stor13] = 9
                                            else:
                                                if _140 % 100000 < 25 * 3600:
                                                    mem[0] = _tokenIdTracker
                                                    mem[32] = 25
                                                    sub_5c2b11c0[stor13] = 10
                                                else:
                                                    if _140 % 100000 < 94000:
                                                        mem[0] = _tokenIdTracker
                                                        mem[32] = 25
                                                        sub_5c2b11c0[stor13] = 11
                                                    else:
                                                        if _140 % 100000 < 97000:
                                                            mem[0] = _tokenIdTracker
                                                            mem[32] = 25
                                                            sub_5c2b11c0[stor13] = 12
                                                        else:
                                                            if _140 % 100000 < 99000:
                                                                mem[0] = _tokenIdTracker
                                                                mem[32] = 25
                                                                sub_5c2b11c0[stor13] = 13
                                                            else:
                                                                if _140 % 100000 < 100000:
                                                                    mem[0] = _tokenIdTracker
                                                                    mem[32] = 25
                                                                    sub_5c2b11c0[stor13] = 14
        _tokenIdTracker++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
