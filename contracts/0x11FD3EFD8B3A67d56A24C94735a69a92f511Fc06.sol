contract main {




// =====================  Runtime code  =====================


#
#  - sub_2ce61e69(?)
#  - openBox(uint256 arg1)
#  - sub_c40cfdba(?)
#
const sub_abcae5d5(?) = 2500

const MAX_SUPPLY = 10000

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
mapping of struct roleAdmin;
address sub_91655244Address;
address sub_18d10813Address;
address sub_68b577ffAddress;
address sub_6f561548Address;
uint256 stor255;
mapping of uint256 sub_1ed6f38c;
mapping of uint8 stor257;
uint256 sub_c76de070;
uint256 sub_9ff43958;
array of struct stor260;
address sub_409c01aaAddress;
uint256 sub_7e30a6c2;
uint8 sub_3e9755b2;
uint8 openForPublic; offset 8
uint16 stor263;
uint256 stor263; offset 8
uint256 sub_8fde83ef;
uint256 mintFeeAmount;
mapping of uint8 stor266;
uint256 sub_bd4981fe;
mapping of struct stor268;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;
mapping of uint8 stor58798135013249593460108280977022746446257191352797983742652137861604544603990;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_18d10813(?) {
    return sub_18d10813Address
}

function sub_1ed6f38c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1ed6f38c[arg1]
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

function sub_3e9755b2(?) {
    return bool(sub_3e9755b2)
}

function sub_409c01aa(?) {
    return sub_409c01aaAddress
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

function sub_68b577ff(?) {
    return sub_68b577ffAddress
}

function sub_6f561548(?) {
    return sub_6f561548Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7e30a6c2(?) {
    return sub_7e30a6c2
}

function sub_8fde83ef(?) {
    return sub_8fde83ef
}

function sub_91655244(?) {
    return sub_91655244Address
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_9ff43958(?) {
    return sub_9ff43958
}

function mintFeeAmount() {
    return mintFeeAmount
}

function sub_b4100c53(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor257[arg1])
}

function sub_b4ceeafc(?) {
    require calldata.size - 4 >= 32
    return bool(stor266[arg1])
}

function sub_b52c5952(?) {
    require calldata.size - 4 >= 32
    return bool(stor266[arg1])
}

function sub_bd4981fe(?) {
    return sub_bd4981fe
}

function sub_c76de070(?) {
    return sub_c76de070
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function openForPublic() {
    return bool(openForPublic)
}

function _fallback() payable {
    revert
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and sub_7e30a6c2 > -1 / arg2:
        revert with 0, 17
    return sub_409c01aaAddress, arg2 * sub_7e30a6c2 / 100
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if '*U Z' == Mask(32, 224, arg1):
        return 1
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
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
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_6f844d8d(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_c76de070 = arg1
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function updateMerkleRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        stor255 = arg1
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setRoyaltyFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_7e30a6c2 = arg1
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function openPresale(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_3e9755b2 = uint8(arg1)
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_3179d39a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        stor257[address(arg1)] = 1
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_d4bc675f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_409c01aaAddress = address(arg1)
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setMintPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if roleAdmin[0][address(msg.sender)].field_0:
        mintFeeAmount = arg1
        sub_8fde83ef = arg2
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_70543676(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        Mask(248, 0, stor263.field_8) = Mask(248, 0, bool(arg1))
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setContractAddresses(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_18d10813Address = arg1
        sub_68b577ffAddress = arg2
        sub_6f561548Address = arg3
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function isWhitelisted(address arg1, bytes32[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128] = address(arg1)
    mem[96] = 20
    mem[64] = (32 * arg2.length) + 180
    mem[148] = arg2.length
    mem[180 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 180] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= mem[148]:
            revert with 0, 50
        _26 = mem[(32 * idx) + 180]
        if s + sha3(mem[128 len 20]) > mem[(32 * idx) + 180]:
            mem[mem[64] + 32] = mem[(32 * idx) + 180]
            mem[mem[64] + 64] = s + sha3(mem[128 len 20])
            _28 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_28 + 32 len mem[_28]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 20])
        mem[mem[64] + 64] = _26
        _32 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(mem[_32 + 32 len mem[_32]])
        continue 
    if s != stor255:
        if bool(stor257[address(arg1)]) != 1:
            return 0
    return 1
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function changeName(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not sub_18d10813Address:
        revert with 0, 'Change name not open yet'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not stor81FE[msg.sender]:
            revert with 0, 'Not ur ant'
    require ext_code.size(sub_18d10813Address)
    staticcall sub_18d10813Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_bd4981fe:
        revert with 0, 'Not enough ANTG'
    require ext_code.size(sub_18d10813Address)
    call sub_18d10813Address.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_bd4981fe
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor268[arg1].field_768:
        if stor268[arg1].field_768 == stor268[arg1].field_769 < 32:
            revert with 0, 34
        if arg2.length:
            stor268[arg1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor268[arg1].field_768 = 0
            idx = 0
            while stor268[arg1].field_769 + 31 / 32 > idx:
                stor268[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor268[arg1].field_768 == stor268[arg1].field_769 < 32:
            revert with 0, 34
        if arg2.length:
            stor268[arg1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor268[arg1].field_768 = 0
            idx = 0
            while stor268[arg1].field_769 + 31 / 32 > idx:
                stor268[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    emit NameChange(arg1, Array(len=arg2.length, data=arg2[all]));
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
    if roleAdmin[0][address(msg.sender)].field_0:
        if bool(stor260.length):
            if bool(stor260.length) == stor260.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor260[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor260.length = 0
                idx = 0
                while stor260.length.field_1 + 31 / 32 > idx:
                    stor260[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor260.length) == stor260.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor260[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor260.length = 0
                idx = 0
                while stor260.length.field_1 + 31 / 32 > idx:
                    stor260[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], ' is missing role ', mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function sub_bfccdc68(?) {
    require calldata.size - 4 >= 32
    if stor268[arg1].field_768:
        if stor268[arg1].field_768 == stor268[arg1].field_769 < 32:
            revert with 0, 34
        if stor268[arg1].field_768:
            if stor268[arg1].field_768 == stor268[arg1].field_769 < 32:
                revert with 0, 34
            if stor268[arg1].field_769:
                if 31 >= stor268[arg1].field_769:
                    mem[128] = 256 * stor268[arg1].field_776
                else:
                    mem[128] = stor268[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor268[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor268[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor268[arg1].field_768 == stor268[arg1].field_769 < 32:
                revert with 0, 34
            if stor268[arg1].field_769:
                if 31 >= stor268[arg1].field_769:
                    mem[128] = 256 * stor268[arg1].field_776
                else:
                    mem[128] = stor268[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor268[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor268[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor268[arg1].field_0, 
               stor268[arg1].field_256,
               stor268[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor268[arg1].field_769), data=mem[128 len ceil32(stor268[arg1].field_769)]),
               stor268[arg1].field_1024
    if stor268[arg1].field_768 == stor268[arg1].field_769 < 32:
        revert with 0, 34
    if stor268[arg1].field_768:
        if stor268[arg1].field_768 == stor268[arg1].field_769 < 32:
            revert with 0, 34
        if stor268[arg1].field_769:
            if 31 >= stor268[arg1].field_769:
                mem[128] = 256 * stor268[arg1].field_776
            else:
                mem[128] = stor268[arg1][3].field_0
                idx = 128
                s = 0
                while stor268[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor268[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor268[arg1].field_768 == stor268[arg1].field_769 < 32:
            revert with 0, 34
        if stor268[arg1].field_769:
            if 31 >= stor268[arg1].field_769:
                mem[128] = 256 * stor268[arg1].field_776
            else:
                mem[128] = stor268[arg1][3].field_0
                idx = 128
                s = 0
                while stor268[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor268[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor268[arg1].field_0, 
           stor268[arg1].field_256,
           stor268[arg1].field_512,
           Array(len=stor268[arg1].field_768, data=mem[128 len ceil32(stor268[arg1].field_769)]),
           stor268[arg1].field_1024
}

function sub_18e647cc(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 7
        stor101.length.field_8 = 'Avalant' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 7
        stor101.length.field_8 = 'Avalant' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 3
        stor102.length.field_8 = 'ANT' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 3
        stor102.length.field_8 = 'ANT' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    uint16(stor263.field_0) = 0
    sub_8fde83ef = 8 * 10^17
    mintFeeAmount = 12 * 10^17
    sub_bd4981fe = 500 * 10^18
    sub_91655244Address = address(arg2)
    sub_409c01aaAddress = address(arg1)
    if bool(stor260.length):
        if bool(stor260.length) == stor260.length.field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor260[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor260.length = 0
            idx = 0
            while stor260.length.field_1 + 31 / 32 > idx:
                stor260[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor260.length) == stor260.length.field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor260[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor260.length = 0
            idx = 0
            while stor260.length.field_1 + 31 / 32 > idx:
                stor260[idx].field_0 = 0
                idx = idx + 1
                continue 
    stor255 = arg4
    sub_c76de070 = arg5
    sub_7e30a6c2 = arg6
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function name() {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function baseURI() {
    if bool(stor260.length):
        if bool(stor260.length) == stor260.length.field_1 < 32:
            revert with 0, 34
        if bool(stor260.length):
            if bool(stor260.length) == stor260.length.field_1 < 32:
                revert with 0, 34
            if stor260.length.field_1:
                if 31 < stor260.length.field_1:
                    mem[128] = uint256(stor260.field_0)
                    idx = 128
                    s = 0
                    while stor260.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor260[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor260.length.field_1), data=mem[128 len ceil32(stor260.length.field_1)])
                mem[128] = 256 * stor260.length.field_8
        else:
            if bool(stor260.length) == stor260.length.field_1 < 32:
                revert with 0, 34
            if stor260.length.field_1:
                if 31 < stor260.length.field_1:
                    mem[128] = uint256(stor260.field_0)
                    idx = 128
                    s = 0
                    while stor260.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor260[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor260.length.field_1), data=mem[128 len ceil32(stor260.length.field_1)])
                mem[128] = 256 * stor260.length.field_8
        mem[ceil32(stor260.length.field_1) + 192 len ceil32(stor260.length.field_1)] = mem[128 len ceil32(stor260.length.field_1)]
        if ceil32(stor260.length.field_1) > stor260.length.field_1:
            mem[stor260.length.field_1 + ceil32(stor260.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor260.length.field_1), data=mem[128 len ceil32(stor260.length.field_1)], mem[(2 * ceil32(stor260.length.field_1)) + 192 len 2 * ceil32(stor260.length.field_1)]), 
    if bool(stor260.length) == stor260.length.field_1 < 32:
        revert with 0, 34
    if bool(stor260.length):
        if bool(stor260.length) == stor260.length.field_1 < 32:
            revert with 0, 34
        if stor260.length.field_1:
            if 31 < stor260.length.field_1:
                mem[128] = uint256(stor260.field_0)
                idx = 128
                s = 0
                while stor260.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor260[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor260.length % 128, data=mem[128 len ceil32(stor260.length.field_1)])
            mem[128] = 256 * stor260.length.field_8
    else:
        if bool(stor260.length) == stor260.length.field_1 < 32:
            revert with 0, 34
        if stor260.length.field_1:
            if 31 < stor260.length.field_1:
                mem[128] = uint256(stor260.field_0)
                idx = 128
                s = 0
                while stor260.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor260[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor260.length % 128, data=mem[128 len ceil32(stor260.length.field_1)])
            mem[128] = 256 * stor260.length.field_8
    mem[ceil32(stor260.length.field_1) + 192 len ceil32(stor260.length.field_1)] = mem[128 len ceil32(stor260.length.field_1)]
    if ceil32(stor260.length.field_1) > stor260.length.field_1:
        mem[stor260.length.field_1 + ceil32(stor260.length.field_1) + 192] = 0
    return Array(len=stor260.length % 128, data=mem[128 len ceil32(stor260.length.field_1)], mem[(2 * ceil32(stor260.length.field_1)) + 192 len 2 * ceil32(stor260.length.field_1)]), 
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not sub_18d10813Address:
        if not arg1:
            stor154[arg3] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = arg3
        else:
            if arg1 != arg2:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                    tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                    stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                stor152[arg3] = 0
                tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    else:
        if not arg1:
            stor154[arg3] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = arg3
        else:
            require ext_code.size(sub_18d10813Address)
            call sub_18d10813Address.0x1bfd0cd0 with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg1:
                stor154[arg3] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = arg3
            else:
                if arg1 != arg2:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                        tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                        stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                    stor152[arg3] = 0
                    tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not sub_18d10813Address:
        if not arg1:
            stor154[arg3] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = arg3
        else:
            if arg1 != arg2:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                    tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                    stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                stor152[arg3] = 0
                tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    else:
        if not arg1:
            stor154[arg3] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = arg3
        else:
            require ext_code.size(sub_18d10813Address)
            call sub_18d10813Address.0x1bfd0cd0 with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg1:
                stor154[arg3] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = arg3
            else:
                if arg1 != arg2:
                    if not arg1:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                        tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                        stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                    stor152[arg3] = 0
                    tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not sub_18d10813Address:
        if not arg1:
            stor154[arg3] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = arg3
        else:
            if arg1 != arg2:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                    tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                    stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                stor152[arg3] = 0
                tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    else:
        if not arg1:
            stor154[arg3] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = arg3
        else:
            require ext_code.size(sub_18d10813Address)
            call sub_18d10813Address.0x1bfd0cd0 with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg1:
                stor154[arg3] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = arg3
            else:
                if arg1 != arg2:
                    if not arg1:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                        tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                        stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                    stor152[arg3] = 0
                    tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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

function dig(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not ur ant'
    if block.timestamp < stor268[arg1].field_1024:
        revert with 0, 'Ant is too tired to dig'
    mem[100] = stor268[arg1].field_512
    require ext_code.size(sub_6f561548Address)
    staticcall sub_6f561548Address.0xfecc76f2 with:
            gas gas_remaining wei
           args stor268[arg1].field_512
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Blocked by boss'
    mem[0] = arg1
    mem[32] = 268
    if not stor268[arg1].field_512:
        require ext_code.size(sub_68b577ffAddress)
        call sub_68b577ffAddress.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if stor268[arg1].field_512 == 1:
            require ext_code.size(sub_68b577ffAddress)
            call sub_68b577ffAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 20 * 10^18
        else:
            if stor268[arg1].field_512 == 2:
                require ext_code.size(sub_68b577ffAddress)
                call sub_68b577ffAddress.burn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 80 * 10^18
            else:
                if bool(bool(stor268[arg1].field_512 < 11)) or bool(bool(stor268[arg1].field_512 < 307)):
                    if stor268[arg1].field_512^2 > -1:
                        revert with 0, 17
                    if stor268[arg1].field_512^2 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                        revert with 0, 17
                    if 20 * stor268[arg1].field_512^2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    require ext_code.size(sub_68b577ffAddress)
                    call sub_68b577ffAddress.burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 20 * 10^18 * stor268[arg1].field_512^2
                else:
                    if var34005 > 1:
                        s = var34001
                        t = 1
                        u = var34005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if s * s * t > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                    revert with 0, 17
                                if 20 * s * s * t > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                require ext_code.size(sub_68b577ffAddress)
                                call sub_68b577ffAddress.burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 20 * 10^18 * s * s * t
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if s * s * s * t > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                    revert with 0, 17
                                if 20 * s * s * s * t > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                require ext_code.size(sub_68b577ffAddress)
                                call sub_68b577ffAddress.burn(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 20 * 10^18 * s * s * s * t
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 128] = arg1
                            mem[ceil32(return_data.size) + 160] = 0xa06f377100000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 164] = 32
                            idx = 0
                            s = ceil32(return_data.size) + 228
                            t = ceil32(return_data.size) + 128
                            while idx < 1:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(sub_18d10813Address)
                            call sub_18d10813Address.0xa06f3771 with:
                                 gas gas_remaining wei
                                args Array(len=1, data=mem[ceil32(return_data.size) + 228])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor268[arg1].field_512 > -2:
                                revert with 0, 17
                            stor268[arg1].field_512++
                            if 1 > !stor268[arg1].field_512:
                                revert with 0, 17
                            if stor268[arg1].field_512 + 1 > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
                                revert with 0, 17
                            if block.timestamp > !((3600 * stor268[arg1].field_512) + 3600):
                                revert with 0, 17
                            stor268[arg1].field_1024 = block.timestamp + (3600 * stor268[arg1].field_512) + 3600
                            emit 0x1e46a453: arg1, stor268[arg1].field_512
                        revert with 0, 17
                    if 1 > -1 / var34001:
                        revert with 0, 17
                    if var34001 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                        revert with 0, 17
                    if 20 * var34001 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    require ext_code.size(sub_68b577ffAddress)
                    call sub_68b577ffAddress.burn(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 20 * 10^18 * var34001
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_18d10813Address)
    call sub_18d10813Address.0xa06f3771 with:
         gas gas_remaining wei
        args Array(len=1, data=arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor268[arg1].field_512 > -2:
        revert with 0, 17
    stor268[arg1].field_512++
    if 1 > !stor268[arg1].field_512:
        revert with 0, 17
    if stor268[arg1].field_512 + 1 > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    if block.timestamp > !((3600 * stor268[arg1].field_512) + 3600):
        revert with 0, 17
    stor268[arg1].field_1024 = block.timestamp + (3600 * stor268[arg1].field_512) + 3600
    emit 0x1e46a453: arg1, stor268[arg1].field_512
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 103
    if not ownerOf[arg1]:
        revert with 0, 'URI query for nonexistent token'
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor260.length):
            if bool(stor260.length) == stor260.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor260.length):
                mem[192] = Mask(248, 8, stor260.length)
            else:
                if bool(stor260.length) != 1:
                    mem[64] = 6
                    _122 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_122) > _122:
                        mem[_122 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_122) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor260.length.field_1:
                    mem[idx + 192] = stor260[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor260.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor260.length.field_1 + 193] = '.json'
            mem[stor260.length.field_1 + 198] = 32
            mem[stor260.length.field_1 + 230] = mem[160]
            mem[stor260.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor260.length.field_1 + 262] = 0
            return Array(len=mem[160], data=mem[stor260.length.field_1 + 262 len ceil32(mem[160])])
        if bool(stor260.length) == stor260.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor260.length):
            mem[192] = Mask(248, 8, stor260.length)
        else:
            if bool(stor260.length) != 1:
                mem[64] = 6
                _126 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_126) > _126:
                    mem[_126 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_126) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor260.length.field_1:
                mem[idx + 192] = stor260[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor260.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor260.length.field_1 + 193] = '.json'
        mem[stor260.length.field_1 + 198] = 32
        mem[stor260.length.field_1 + 230] = mem[160]
        mem[stor260.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor260.length.field_1 + 262] = 0
        return Array(len=mem[160], data=mem[stor260.length.field_1 + 262 len ceil32(mem[160])])
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
        _359 = mem[64]
        if bool(stor260.length):
            if bool(stor260.length) == stor260.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor260.length):
                mem[mem[64] + 32] = Mask(248, 8, stor260.length)
                _387 = mem[96]
                mem[mem[64] + stor260.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_387 + _359 + stor260.length.field_1 + 32] = '.json'
                if ceil32(_387) <= _387:
                    _599 = mem[64]
                    mem[64] = _387 + _359 + stor260.length.field_1 + 37
                    mem[_387 + _359 + stor260.length.field_1 + 37] = 32
                    _635 = mem[_599]
                    mem[_387 + _359 + stor260.length.field_1 + 69] = mem[_599]
                    mem[_387 + _359 + stor260.length.field_1 + 101 len ceil32(_635)] = mem[_599 + 32 len ceil32(_635)]
                    if ceil32(_635) > _635:
                        mem[_635 + _387 + _359 + stor260.length.field_1 + 101] = 0
                    return 32, mem[_387 + _359 + stor260.length.field_1 + 69 len ceil32(_635) + 32]
                _600 = mem[64]
                mem[64] = _387 + _359 + stor260.length.field_1 + 37
                mem[_387 + _359 + stor260.length.field_1 + 37] = 32
                _636 = mem[_600]
                mem[_387 + _359 + stor260.length.field_1 + 69] = mem[_600]
                mem[_387 + _359 + stor260.length.field_1 + 101 len ceil32(_636)] = mem[_600 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _387 + _359 + stor260.length.field_1 + 101] = 0
                return 32, mem[_387 + _359 + stor260.length.field_1 + 69 len ceil32(_636) + 32]
            if bool(stor260.length) != 1:
                _391 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_391] = '.json'
                if ceil32(_391) <= _391:
                    _602 = mem[64]
                    mem[64] = _391 + 5
                    mem[_391 + 5] = 32
                    _637 = mem[_602]
                    mem[_391 + 37] = mem[_602]
                    mem[_391 + 69 len ceil32(_637)] = mem[_602 + 32 len ceil32(_637)]
                    if ceil32(_637) > _637:
                        mem[_637 + _391 + 69] = 0
                    return 32, mem[_391 + 37 len ceil32(_637) + 32]
                _603 = mem[64]
                mem[64] = _391 + 5
                mem[_391 + 5] = 32
                _638 = mem[_603]
                mem[_391 + 37] = mem[_603]
                mem[_391 + 69 len ceil32(_638)] = mem[_603 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _391 + 69] = 0
                return 32, mem[_391 + 37 len ceil32(_638) + 32]
            mem[0] = 260
            idx = 0
            s = 0
            while idx < stor260.length.field_1:
                mem[idx + _359 + 32] = stor260[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _587 = mem[96]
            mem[_359 + stor260.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_587 + _359 + stor260.length.field_1 + 32] = '.json'
            if ceil32(_587) <= _587:
                _799 = mem[64]
                mem[64] = _587 + _359 + stor260.length.field_1 + 37
                mem[_587 + _359 + stor260.length.field_1 + 37] = 32
                _815 = mem[_799]
                mem[_587 + _359 + stor260.length.field_1 + 69] = mem[_799]
                mem[_587 + _359 + stor260.length.field_1 + 101 len ceil32(_815)] = mem[_799 + 32 len ceil32(_815)]
                if ceil32(_815) > _815:
                    mem[_815 + _587 + _359 + stor260.length.field_1 + 101] = 0
                return 32, mem[_587 + _359 + stor260.length.field_1 + 69 len ceil32(_815) + 32]
            _800 = mem[64]
            mem[64] = _587 + _359 + stor260.length.field_1 + 37
            mem[_587 + _359 + stor260.length.field_1 + 37] = 32
            _816 = mem[_800]
            mem[_587 + _359 + stor260.length.field_1 + 69] = mem[_800]
            mem[_587 + _359 + stor260.length.field_1 + 101 len ceil32(_816)] = mem[_800 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _587 + _359 + stor260.length.field_1 + 101] = 0
            return 32, mem[_587 + _359 + stor260.length.field_1 + 69 len ceil32(_816) + 32]
        if bool(stor260.length) == stor260.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor260.length):
            mem[mem[64] + 32] = Mask(248, 8, stor260.length)
            _392 = mem[96]
            mem[mem[64] + stor260.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor260.length.field_1 + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _604 = mem[64]
                mem[64] = _392 + _359 + stor260.length.field_1 + 37
                mem[_392 + _359 + stor260.length.field_1 + 37] = 32
                _639 = mem[_604]
                mem[_392 + _359 + stor260.length.field_1 + 69] = mem[_604]
                mem[_392 + _359 + stor260.length.field_1 + 101 len ceil32(_639)] = mem[_604 + 32 len ceil32(_639)]
                if ceil32(_639) > _639:
                    mem[_639 + _392 + _359 + stor260.length.field_1 + 101] = 0
                return 32, mem[_392 + _359 + stor260.length.field_1 + 69 len ceil32(_639) + 32]
            _605 = mem[64]
            mem[64] = _392 + _359 + stor260.length.field_1 + 37
            mem[_392 + _359 + stor260.length.field_1 + 37] = 32
            _640 = mem[_605]
            mem[_392 + _359 + stor260.length.field_1 + 69] = mem[_605]
            mem[_392 + _359 + stor260.length.field_1 + 101 len ceil32(_640)] = mem[_605 + 32 len ceil32(_640)]
            if ceil32(_640) > _640:
                mem[_640 + _392 + _359 + stor260.length.field_1 + 101] = 0
            return 32, mem[_392 + _359 + stor260.length.field_1 + 69 len ceil32(_640) + 32]
        if bool(stor260.length) != 1:
            _399 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_399] = '.json'
            if ceil32(_399) <= _399:
                _607 = mem[64]
                mem[64] = _399 + 5
                mem[_399 + 5] = 32
                _641 = mem[_607]
                mem[_399 + 37] = mem[_607]
                mem[_399 + 69 len ceil32(_641)] = mem[_607 + 32 len ceil32(_641)]
                if ceil32(_641) > _641:
                    mem[_641 + _399 + 69] = 0
                return 32, mem[_399 + 37 len ceil32(_641) + 32]
            _608 = mem[64]
            mem[64] = _399 + 5
            mem[_399 + 5] = 32
            _642 = mem[_608]
            mem[_399 + 37] = mem[_608]
            mem[_399 + 69 len ceil32(_642)] = mem[_608 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_642 + _399 + 69] = 0
            return 32, mem[_399 + 37 len ceil32(_642) + 32]
        mem[0] = 260
        idx = 0
        s = 0
        while idx < stor260.length.field_1:
            mem[idx + _359 + 32] = stor260[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _588 = mem[96]
        mem[_359 + stor260.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_588 + _359 + stor260.length.field_1 + 32] = '.json'
        if ceil32(_588) <= _588:
            _801 = mem[64]
            mem[64] = _588 + _359 + stor260.length.field_1 + 37
            mem[_588 + _359 + stor260.length.field_1 + 37] = 32
            _817 = mem[_801]
            mem[_588 + _359 + stor260.length.field_1 + 69] = mem[_801]
            mem[_588 + _359 + stor260.length.field_1 + 101 len ceil32(_817)] = mem[_801 + 32 len ceil32(_817)]
            if ceil32(_817) > _817:
                mem[_817 + _588 + _359 + stor260.length.field_1 + 101] = 0
            return 32, mem[_588 + _359 + stor260.length.field_1 + 69 len ceil32(_817) + 32]
        _802 = mem[64]
        mem[64] = _588 + _359 + stor260.length.field_1 + 37
        mem[_588 + _359 + stor260.length.field_1 + 37] = 32
        _818 = mem[_802]
        mem[_588 + _359 + stor260.length.field_1 + 69] = mem[_802]
        mem[_588 + _359 + stor260.length.field_1 + 101 len ceil32(_818)] = mem[_802 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _588 + _359 + stor260.length.field_1 + 101] = 0
        return 32, mem[_588 + _359 + stor260.length.field_1 + 69 len ceil32(_818) + 32]
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
    _360 = mem[64]
    if bool(stor260.length):
        if bool(stor260.length) == stor260.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor260.length):
            mem[mem[64] + 32] = Mask(248, 8, stor260.length)
            _389 = mem[96]
            mem[mem[64] + stor260.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_389 + _360 + stor260.length.field_1 + 32] = '.json'
            if ceil32(_389) <= _389:
                _609 = mem[64]
                mem[64] = _389 + _360 + stor260.length.field_1 + 37
                mem[_389 + _360 + stor260.length.field_1 + 37] = 32
                _643 = mem[_609]
                mem[_389 + _360 + stor260.length.field_1 + 69] = mem[_609]
                mem[_389 + _360 + stor260.length.field_1 + 101 len ceil32(_643)] = mem[_609 + 32 len ceil32(_643)]
                if ceil32(_643) > _643:
                    mem[_643 + _389 + _360 + stor260.length.field_1 + 101] = 0
                return 32, mem[_389 + _360 + stor260.length.field_1 + 69 len ceil32(_643) + 32]
            _610 = mem[64]
            mem[64] = _389 + _360 + stor260.length.field_1 + 37
            mem[_389 + _360 + stor260.length.field_1 + 37] = 32
            _644 = mem[_610]
            mem[_389 + _360 + stor260.length.field_1 + 69] = mem[_610]
            mem[_389 + _360 + stor260.length.field_1 + 101 len ceil32(_644)] = mem[_610 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _389 + _360 + stor260.length.field_1 + 101] = 0
            return 32, mem[_389 + _360 + stor260.length.field_1 + 69 len ceil32(_644) + 32]
        if bool(stor260.length) != 1:
            _393 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_393] = '.json'
            if ceil32(_393) <= _393:
                _612 = mem[64]
                mem[64] = _393 + 5
                mem[_393 + 5] = 32
                _645 = mem[_612]
                mem[_393 + 37] = mem[_612]
                mem[_393 + 69 len ceil32(_645)] = mem[_612 + 32 len ceil32(_645)]
                if ceil32(_645) > _645:
                    mem[_645 + _393 + 69] = 0
                return 32, mem[_393 + 37 len ceil32(_645) + 32]
            _613 = mem[64]
            mem[64] = _393 + 5
            mem[_393 + 5] = 32
            _646 = mem[_613]
            mem[_393 + 37] = mem[_613]
            mem[_393 + 69 len ceil32(_646)] = mem[_613 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _393 + 69] = 0
            return 32, mem[_393 + 37 len ceil32(_646) + 32]
        mem[0] = 260
        idx = 0
        s = 0
        while idx < stor260.length.field_1:
            mem[idx + _360 + 32] = stor260[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _589 = mem[96]
        mem[_360 + stor260.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_589 + _360 + stor260.length.field_1 + 32] = '.json'
        if ceil32(_589) <= _589:
            _803 = mem[64]
            mem[64] = _589 + _360 + stor260.length.field_1 + 37
            mem[_589 + _360 + stor260.length.field_1 + 37] = 32
            _819 = mem[_803]
            mem[_589 + _360 + stor260.length.field_1 + 69] = mem[_803]
            mem[_589 + _360 + stor260.length.field_1 + 101 len ceil32(_819)] = mem[_803 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_819 + _589 + _360 + stor260.length.field_1 + 101] = 0
            return 32, mem[_589 + _360 + stor260.length.field_1 + 69 len ceil32(_819) + 32]
        _804 = mem[64]
        mem[64] = _589 + _360 + stor260.length.field_1 + 37
        mem[_589 + _360 + stor260.length.field_1 + 37] = 32
        _820 = mem[_804]
        mem[_589 + _360 + stor260.length.field_1 + 69] = mem[_804]
        mem[_589 + _360 + stor260.length.field_1 + 101 len ceil32(_820)] = mem[_804 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_820 + _589 + _360 + stor260.length.field_1 + 101] = 0
        return 32, mem[_589 + _360 + stor260.length.field_1 + 69 len ceil32(_820) + 32]
    if bool(stor260.length) == stor260.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor260.length):
        mem[mem[64] + 32] = Mask(248, 8, stor260.length)
        _394 = mem[96]
        mem[mem[64] + stor260.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor260.length.field_1 + 32] = '.json'
        if ceil32(mem[96]) <= mem[96]:
            _614 = mem[64]
            mem[64] = _394 + _360 + stor260.length.field_1 + 37
            mem[_394 + _360 + stor260.length.field_1 + 37] = 32
            _647 = mem[_614]
            mem[_394 + _360 + stor260.length.field_1 + 69] = mem[_614]
            mem[_394 + _360 + stor260.length.field_1 + 101 len ceil32(_647)] = mem[_614 + 32 len ceil32(_647)]
            if ceil32(_647) > _647:
                mem[_647 + _394 + _360 + stor260.length.field_1 + 101] = 0
            return 32, mem[_394 + _360 + stor260.length.field_1 + 69 len ceil32(_647) + 32]
        _615 = mem[64]
        mem[64] = _394 + _360 + stor260.length.field_1 + 37
        mem[_394 + _360 + stor260.length.field_1 + 37] = 32
        _648 = mem[_615]
        mem[_394 + _360 + stor260.length.field_1 + 69] = mem[_615]
        mem[_394 + _360 + stor260.length.field_1 + 101 len ceil32(_648)] = mem[_615 + 32 len ceil32(_648)]
        if ceil32(_648) > _648:
            mem[_648 + _394 + _360 + stor260.length.field_1 + 101] = 0
        return 32, mem[_394 + _360 + stor260.length.field_1 + 69 len ceil32(_648) + 32]
    if bool(stor260.length) != 1:
        _401 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_401] = '.json'
        if ceil32(_401) <= _401:
            _617 = mem[64]
            mem[64] = _401 + 5
            mem[_401 + 5] = 32
            _649 = mem[_617]
            mem[_401 + 37] = mem[_617]
            mem[_401 + 69 len ceil32(_649)] = mem[_617 + 32 len ceil32(_649)]
            if ceil32(_649) > _649:
                mem[_649 + _401 + 69] = 0
            return 32, mem[_401 + 37 len ceil32(_649) + 32]
        _618 = mem[64]
        mem[64] = _401 + 5
        mem[_401 + 5] = 32
        _650 = mem[_618]
        mem[_401 + 37] = mem[_618]
        mem[_401 + 69 len ceil32(_650)] = mem[_618 + 32 len ceil32(_650)]
        if ceil32(_650) > _650:
            mem[_650 + _401 + 69] = 0
        return 32, mem[_401 + 37 len ceil32(_650) + 32]
    mem[0] = 260
    idx = 0
    s = 0
    while idx < stor260.length.field_1:
        mem[idx + _360 + 32] = stor260[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _590 = mem[96]
    mem[_360 + stor260.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_590 + _360 + stor260.length.field_1 + 32] = '.json'
    if ceil32(_590) <= _590:
        _805 = mem[64]
        mem[64] = _590 + _360 + stor260.length.field_1 + 37
        mem[_590 + _360 + stor260.length.field_1 + 37] = 32
        _821 = mem[_805]
        mem[_590 + _360 + stor260.length.field_1 + 69] = mem[_805]
        mem[_590 + _360 + stor260.length.field_1 + 101 len ceil32(_821)] = mem[_805 + 32 len ceil32(_821)]
        if ceil32(_821) > _821:
            mem[_821 + _590 + _360 + stor260.length.field_1 + 101] = 0
        return 32, mem[_590 + _360 + stor260.length.field_1 + 69 len ceil32(_821) + 32]
    _806 = mem[64]
    mem[64] = _590 + _360 + stor260.length.field_1 + 37
    mem[_590 + _360 + stor260.length.field_1 + 37] = 32
    _822 = mem[_806]
    mem[_590 + _360 + stor260.length.field_1 + 69] = mem[_806]
    mem[_590 + _360 + stor260.length.field_1 + 101 len ceil32(_822)] = mem[_806 + 32 len ceil32(_822)]
    if ceil32(_822) > _822:
        mem[_822 + _590 + _360 + stor260.length.field_1 + 101] = 0
    return 32, mem[_590 + _360 + stor260.length.field_1 + 69 len ceil32(_822) + 32]
}



}
