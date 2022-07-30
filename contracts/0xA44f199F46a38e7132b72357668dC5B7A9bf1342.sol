contract main {




// =====================  Runtime code  =====================


#
#  - sub_7e19275f(?)
#
const sub_23e67ca2(?) = 0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225

const sub_51018b47(?) = 3

const sub_5b805b43(?) = 500

const sub_9fab9a94(?) = 1

const sub_b6416a36(?) = 4

const ARMOR = 2

const DEFAULT_ADMIN_ROLE = 0


array of struct stor101;
array of struct stor102;
mapping of address _owners;
mapping of uint256 _balances;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
mapping of struct roleAdmin;
address sub_0de239aaAddress;
address sub_18d10813Address;
array of struct stor253;
address sub_409c01aaAddress;
uint256 sub_7e30a6c2;
uint8 openForPublic;
uint256 mintFeeAmount;
uint256 sub_60f54784;
uint256 sub_1cecb6fb;
mapping of uint256 sub_d14bd096;
mapping of uint256 sub_bbb76a4c;
mapping of uint256 sub_a0b09726;
mapping of address itemIdToOwner;
mapping of uint256 sub_7436fcbe;
mapping of uint8 stor711790565385258167341887875830298810086019947625067814760244567961300211971;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;
mapping of uint8 stor58798135013249593460108280977022746446257191352797983742652137861604544603990;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(_owners[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0de239aa(?) payable {
    return sub_0de239aaAddress
}

function totalSupply() payable {
    return tokenByIndex.length
}

function sub_18d10813(?) payable {
    return sub_18d10813Address
}

function sub_1cecb6fb(?) payable {
    return sub_1cecb6fb
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= _balances[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_409c01aa(?) payable {
    return sub_409c01aaAddress
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_60f54784(?) payable {
    return sub_60f54784
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(_owners[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return address(_owners[arg1])
}

function _balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return _balances[address(arg1)]
}

function sub_7436fcbe(?) payable {
    require calldata.size - 4 >= 32
    return sub_7436fcbe[arg1]
}

function itemIdToOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(itemIdToOwner[arg1])
}

function sub_7e30a6c2(?) payable {
    return sub_7e30a6c2
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(_owners[arg1])
}

function sub_a0b09726(?) payable {
    require calldata.size - 4 >= 32
    return sub_a0b09726[arg1]
}

function mintFeeAmount() payable {
    return mintFeeAmount
}

function sub_bbb76a4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bbb76a4c[arg1]
}

function sub_d14bd096(?) payable {
    require calldata.size - 4 >= 32
    return sub_d14bd096[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function openForPublic() payable {
    return bool(openForPublic)
}

function _fallback() payable {
    revert
}

function sub_09920715(?) payable {
    require calldata.size - 4 >= 32
    if sub_a0b09726[arg1]:
        return (4 == sub_d14bd096[stor262[arg1]])
    else:
        return 0
}

function sub_5112fc72(?) payable {
    require calldata.size - 4 >= 32
    if sub_a0b09726[arg1]:
        return (3 == sub_d14bd096[stor262[arg1]])
    else:
        return 0
}

function sub_62986a7e(?) payable {
    require calldata.size - 4 >= 32
    if sub_a0b09726[arg1]:
        return (2 == sub_d14bd096[stor262[arg1]])
    else:
        return 0
}

function sub_7574f89a(?) payable {
    require calldata.size - 4 >= 32
    if sub_a0b09726[arg1]:
        return (1 == sub_d14bd096[stor262[arg1]])
    else:
        return 0
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 and sub_7e30a6c2 > -1 / arg2:
        revert with 0, 17
    return sub_409c01aaAddress, arg2 * sub_7e30a6c2 / 100
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_8dec428b(?) payable {
    require calldata.size - 4 >= 32
    if not stor192D[msg.sender]:
        if not stor81FE[msg.sender]:
            revert with 0, 'Not authorized'
    if sub_a0b09726[arg1]:
        if block.timestamp > !sub_60f54784:
            revert with 0, 17
        sub_7436fcbe[stor262[arg1]] = block.timestamp + sub_60f54784
        sub_a0b09726[arg1] = 0
        emit 0x9c7488f7: sub_a0b09726[arg1], arg1
}

function supportsInterface(bytes4 arg1) payable {
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not address(_owners[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == address(_owners[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(_owners[arg2]) != msg.sender:
        if not stor106[address(stor103[arg2])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not address(_owners[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(_owners[arg2]), arg1, arg2);
}

function sub_3a345446(?) payable {
    require calldata.size - 4 >= 64
    if address(itemIdToOwner[arg1]) != msg.sender:
        revert with 0, 'Must be your item'
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Item must be equipped on the ant of owner'
    if arg1 != sub_a0b09726[arg2]:
        revert with 0, 'Item must be equipped on the ant of owner'
    if arg1 != sub_a0b09726[arg2]:
        revert with 0, 'Ant must have the item'
    if block.timestamp > !sub_60f54784:
        revert with 0, 17
    sub_7436fcbe[arg1] = block.timestamp + sub_60f54784
    sub_a0b09726[arg2] = 0
    emit 0x9c7488f7: arg1, arg2
}

function sub_bef143d7(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_60f54784 = arg1
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

function setMintPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        mintFeeAmount = arg1
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

function setRoyaltyFees(uint256 arg1) payable {
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

function sub_70543676(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        openForPublic = uint8(bool(arg1))
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

function sub_d4bc675f(?) payable {
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

function revokeRole(bytes32 arg1, address arg2) payable {
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

function grantRole(bytes32 arg1, address arg2) payable {
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

function sub_3ec2d12c(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 36).length:
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = 260
            sub_d14bd096[cd[((32 * idx) + cd[36] + 36)]] = cd[4]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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

function sub_84703920(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if not stor192D[msg.sender]:
                if not stor81FE[msg.sender]:
                    revert with 0, 'Not authorized'
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 262
            if sub_a0b09726[cd[((32 * idx) + cd[4] + 36)]]:
                if block.timestamp > !sub_60f54784:
                    revert with 0, 17
                sub_7436fcbe[stor262[cd[((32 * idx) + cd[4] + 36)]]] = block.timestamp + sub_60f54784
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 262
                sub_a0b09726[cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[96] = sub_a0b09726[cd[((32 * idx) + cd[4] + 36)]]
                mem[128] = cd[((32 * idx) + cd[4] + 36)]
                emit 0x9c7488f7: sub_a0b09726[cd[((32 * idx) + cd[4] + 36)]], cd[((32 * idx) + cd[4] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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

function sub_bd0d399c(?) payable {
    require calldata.size - 4 >= 32
    if address(itemIdToOwner[arg1]) != msg.sender:
        revert with 0, 'Must be your item'
    if block.timestamp <= sub_7436fcbe[arg1]:
        revert with 0, 'In cooldown'
    if not this.address:
        stor154[arg1] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg1
    else:
        if msg.sender != this.address:
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if _balances[address(this.address)] < 1:
                revert with 0, 17
            if _balances[address(this.address)] - 1 != stor152[arg1]:
                tokenOfOwnerByIndex[address(this.address)][stor152[arg1]] = tokenOfOwnerByIndex[address(this.address)][stor104[address(this.address)] - 1]
                stor152[stor151[address(this.address)][stor104[address(this.address)] - 1]] = stor152[arg1]
            stor152[arg1] = 0
            tokenOfOwnerByIndex[address(this.address)][stor104[address(this.address)] - 1] = 0
    if msg.sender:
        if this.address != msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = arg1
            stor152[arg1] = _balances[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg1]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg1]
        stor154[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if _balances[this.address] < 1:
        revert with 0, 17
    _balances[this.address]--
    if _balances[msg.sender] > -2:
        revert with 0, 17
    _balances[msg.sender]++
    uint256(_owners[arg1]) = msg.sender or Mask(96, 160, uint256(_owners[arg1]))
    address(itemIdToOwner[arg1]) = 0
    emit Transfer(this.address, msg.sender, arg1);
    emit 0x5388ebf9: arg1
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if roleAdmin[0][address(msg.sender)].field_0:
        if bool(stor253.length):
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor253[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor253.length = 0
                idx = 0
                while stor253.length.field_1 + 31 / 32 > idx:
                    stor253[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor253[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor253.length = 0
                idx = 0
                while stor253.length.field_1 + 31 / 32 > idx:
                    stor253[idx].field_0 = 0
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not address(_owners[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not address(_owners[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(_owners[arg3]) != msg.sender:
        if not address(_owners[arg3]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[address(stor103[arg3])][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not address(_owners[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(_owners[arg3]) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if _balances[address(arg1)] < 1:
                revert with 0, 17
            if _balances[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = _balances[address(arg2)]
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
    if not address(_owners[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(_owners[arg3]), 0, arg3);
    if _balances[address(arg1)] < 1:
        revert with 0, 17
    _balances[address(arg1)]--
    if _balances[address(arg2)] > -2:
        revert with 0, 17
    _balances[address(arg2)]++
    address(_owners[arg3]) = arg2
    emit Transfer(arg1, arg2, arg3);
}

function sub_262a8c3b(?) payable {
    require calldata.size - 4 >= 64
    if not address(_owners[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(_owners[arg1]) != msg.sender:
        if address(itemIdToOwner[arg1]) != msg.sender:
            revert with 0, 'Must be your item'
    if sub_a0b09726[arg2]:
        revert with 0, 'Ant already has an item'
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Ant must be yours'
    if not address(_owners[arg1]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(_owners[arg1]) != msg.sender:
        if block.timestamp <= sub_7436fcbe[arg1]:
            revert with 0, 'In cooldown or already equiped'
    else:
        if not msg.sender:
            stor154[arg1] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = arg1
        else:
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                if _balances[address(msg.sender)] < 1:
                    revert with 0, 17
                if _balances[address(msg.sender)] - 1 != stor152[arg1]:
                    tokenOfOwnerByIndex[address(msg.sender)][stor152[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)] - 1]
                    stor152[stor151[address(msg.sender)][stor104[address(msg.sender)] - 1]] = stor152[arg1]
                stor152[arg1] = 0
                tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)] - 1] = 0
        if this.address:
            if msg.sender != this.address:
                if not this.address:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(this.address)][stor104[address(this.address)]] = arg1
                stor152[arg1] = _balances[address(this.address)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor154[arg1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor154[arg1]] = tokenByIndex[tokenByIndex.length]
            stor154[stor153[stor153.length]] = stor154[arg1]
            stor154[arg1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if _balances[msg.sender] < 1:
            revert with 0, 17
        _balances[msg.sender]--
        if _balances[this.address] > -2:
            revert with 0, 17
        _balances[this.address]++
        uint256(_owners[arg1]) = this.address or Mask(96, 160, uint256(_owners[arg1]))
        uint256(itemIdToOwner[arg1]) = msg.sender or Mask(96, 160, uint256(itemIdToOwner[arg1]))
        emit Transfer(msg.sender, this.address, arg1);
    sub_a0b09726[arg2] = arg1
    sub_7436fcbe[arg1] = 4110469179
    if 4 == sub_d14bd096[arg1]:
        require ext_code.size(sub_18d10813Address)
        call sub_18d10813Address.0xa06f3771 with:
             gas gas_remaining wei
            args Array(len=1, data=arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xf109238e: arg1, arg2
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not address(_owners[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not address(_owners[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(_owners[arg3]) != msg.sender:
        if not address(_owners[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[address(stor103[arg3])][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not address(_owners[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(_owners[arg3]) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if _balances[address(arg1)] < 1:
                revert with 0, 17
            if _balances[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = _balances[address(arg2)]
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
    if not address(_owners[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(address(_owners[arg3]), 0, arg3);
    if _balances[address(arg1)] < 1:
        revert with 0, 17
    _balances[address(arg1)]--
    if _balances[address(arg2)] > -2:
        revert with 0, 17
    _balances[address(arg2)]++
    address(_owners[arg3]) = arg2
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

function name() payable {
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

function symbol() payable {
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

function baseURI() payable {
    if bool(stor253.length):
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if bool(stor253.length):
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if stor253.length.field_1:
                if 31 < stor253.length.field_1:
                    mem[128] = uint256(stor253.field_0)
                    idx = 128
                    s = 0
                    while stor253.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor253[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor253.length.field_1), data=mem[128 len ceil32(stor253.length.field_1)])
                mem[128] = 256 * stor253.length.field_8
        else:
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if stor253.length.field_1:
                if 31 < stor253.length.field_1:
                    mem[128] = uint256(stor253.field_0)
                    idx = 128
                    s = 0
                    while stor253.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor253[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor253.length.field_1), data=mem[128 len ceil32(stor253.length.field_1)])
                mem[128] = 256 * stor253.length.field_8
        mem[ceil32(stor253.length.field_1) + 192 len ceil32(stor253.length.field_1)] = mem[128 len ceil32(stor253.length.field_1)]
        if ceil32(stor253.length.field_1) > stor253.length.field_1:
            mem[stor253.length.field_1 + ceil32(stor253.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor253.length.field_1), data=mem[128 len ceil32(stor253.length.field_1)], mem[(2 * ceil32(stor253.length.field_1)) + 192 len 2 * ceil32(stor253.length.field_1)]), 
    if bool(stor253.length) == stor253.length.field_1 < 32:
        revert with 0, 34
    if bool(stor253.length):
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if stor253.length.field_1:
            if 31 < stor253.length.field_1:
                mem[128] = uint256(stor253.field_0)
                idx = 128
                s = 0
                while stor253.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor253[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor253.length % 128, data=mem[128 len ceil32(stor253.length.field_1)])
            mem[128] = 256 * stor253.length.field_8
    else:
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if stor253.length.field_1:
            if 31 < stor253.length.field_1:
                mem[128] = uint256(stor253.field_0)
                idx = 128
                s = 0
                while stor253.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor253[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor253.length % 128, data=mem[128 len ceil32(stor253.length.field_1)])
            mem[128] = 256 * stor253.length.field_8
    mem[ceil32(stor253.length.field_1) + 192 len ceil32(stor253.length.field_1)] = mem[128 len ceil32(stor253.length.field_1)]
    if ceil32(stor253.length.field_1) > stor253.length.field_1:
        mem[stor253.length.field_1 + ceil32(stor253.length.field_1) + 192] = 0
    return Array(len=stor253.length % 128, data=mem[128 len ceil32(stor253.length.field_1)], mem[(2 * ceil32(stor253.length.field_1)) + 192 len 2 * ceil32(stor253.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if not address(_owners[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not address(_owners[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(_owners[arg3]) != msg.sender:
        if not address(_owners[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[address(stor103[arg3])][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not address(_owners[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(_owners[arg3]) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if _balances[address(arg1)] < 1:
                revert with 0, 17
            if _balances[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = _balances[address(arg2)]
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
    if not address(_owners[arg3]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(address(_owners[arg3]), 0, arg3);
    if _balances[address(arg1)] < 1:
        revert with 0, 17
    _balances[address(arg1)]--
    if _balances[address(arg2)] > -2:
        revert with 0, 17
    _balances[address(arg2)]++
    address(_owners[arg3]) = arg2
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

function sub_8c97b4c2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > sub_1cecb6fb:
        revert with 0, 'Total supply exceeded'
    if not openForPublic:
        revert with 0, 'Not open yet'
    if arg1 > 10:
        revert with 0, 'Too many items at once'
    if mintFeeAmount and arg1 > -1 / mintFeeAmount:
        revert with 0, 17
    mem[96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = mintFeeAmount * arg1
    require ext_code.size(sub_18d10813Address)
    call sub_18d10813Address.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, mintFeeAmount * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 1
    while idx <= arg1:
        if 1 > !tokenByIndex.length:
            revert with 0, 17
        _151 = mem[64]
        mem[64] = mem[64] + 32
        mem[_151] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if address(_owners[stor153.length + 1]):
            revert with 0, 'ERC721: token already minted'
        stor154[stor153.length + 1] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = tokenByIndex.length + 1
        if msg.sender:
            if not msg.sender:
                if _balances[address(msg.sender)] > -2:
                    revert with 0, 17
                _balances[address(msg.sender)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 103
                address(_owners[stor153.length + 1]) = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _151 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _290 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_290] == Mask(32, 224, mem[_290])
                    if Mask(32, 224, mem[_290]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = tokenByIndex.length + 1
                stor152[stor153.length + 1] = _balances[address(msg.sender)]
                if _balances[address(msg.sender)] > -2:
                    revert with 0, 17
                _balances[address(msg.sender)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 103
                address(_owners[stor153.length + 1]) = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _151 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_292] == Mask(32, 224, mem[_292])
                    if Mask(32, 224, mem[_292]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor154[stor153.length + 1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
            stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
            stor154[stor153.length + 1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if _balances[address(msg.sender)] > -2:
                revert with 0, 17
            _balances[address(msg.sender)]++
            mem[0] = tokenByIndex.length + 1
            mem[32] = 103
            address(_owners[stor153.length + 1]) = msg.sender
            emit Transfer(0, msg.sender, tokenByIndex.length + 1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _151 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + 1, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
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
                _294 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_294] == Mask(32, 224, mem[_294])
                if Mask(32, 224, mem[_294]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[0] = msg.sender
        mem[32] = 261
        sub_bbb76a4c[msg.sender] = tokenByIndex.length + 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if msg.sender == this.address:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(this.address)] = 1
    emit ApprovalForAll(1, msg.sender, this.address);
}

function sub_2449bb3c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0, 201)
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if 1 > !tokenByIndex.length:
                revert with 0, 17
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141] = 0
            if not address(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 'ERC721: mint to the zero address'
            if address(_owners[stor153.length + 1]):
                revert with 0, 'ERC721: token already minted'
            stor154[stor153.length + 1] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = tokenByIndex.length + 1
            if address(cd[((32 * idx) + cd[4] + 36)]):
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    if _balances[address(cd[((32 * idx) + cd[4] + 36)])] > -2:
                        revert with 0, 17
                    _balances[address(cd[((32 * idx) + cd[4] + 36)])]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 103
                    address(_owners[stor153.length + 1]) = address(cd[((32 * idx) + cd[4] + 36)])
                    emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), tokenByIndex.length + 1);
                    if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _141 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
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
                        _286 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_286] == Mask(32, 224, mem[_286])
                        if Mask(32, 224, mem[_286]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[4] + 36)])][stor104[address(cd[((32 * idx) + cd[4] + 36)])]] = tokenByIndex.length + 1
                    stor152[stor153.length + 1] = _balances[address(cd[((32 * idx) + cd[4] + 36)])]
                    if _balances[address(cd[((32 * idx) + cd[4] + 36)])] > -2:
                        revert with 0, 17
                    _balances[address(cd[((32 * idx) + cd[4] + 36)])]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 103
                    address(_owners[stor153.length + 1]) = address(cd[((32 * idx) + cd[4] + 36)])
                    emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), tokenByIndex.length + 1);
                    if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _141 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
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
                        _288 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_288] == Mask(32, 224, mem[_288])
                        if Mask(32, 224, mem[_288]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor154[stor153.length + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
                stor154[stor153.length + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if _balances[address(cd[((32 * idx) + cd[4] + 36)])] > -2:
                    revert with 0, 17
                _balances[address(cd[((32 * idx) + cd[4] + 36)])]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 103
                address(_owners[stor153.length + 1]) = address(cd[((32 * idx) + cd[4] + 36)])
                emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), tokenByIndex.length + 1);
                if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _141 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + 1, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _290 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_290] == Mask(32, 224, mem[_290])
                    if Mask(32, 224, mem[_290]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 261
            sub_bbb76a4c[address(cd[((32 * idx) + cd[4] + 36)])] = tokenByIndex.length + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(_owners[arg1]):
        revert with 0, 'URI query for nonexistent token'
    mem[0] = arg1
    mem[32] = 260
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if not sub_d14bd096[arg1]:
            mem[160] = 1
            mem[192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor253.length):
                if bool(stor253.length) == stor253.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor253.length):
                    mem[256] = Mask(248, 8, stor253.length)
                else:
                    if bool(stor253.length) != 1:
                        mem[64] = 10
                        _1171 = mem[224]
                        mem[42] = mem[224]
                        mem[74 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                        if ceil32(_1171) > _1171:
                            mem[_1171 + 74] = 0
                        return 32, mem[42 len ceil32(_1171) + 32]
                    idx = 0
                    s = 0
                    while idx < stor253.length.field_1:
                        mem[idx + 256] = stor253[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor253.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[stor253.length.field_1 + 257] = '?typeid='
                mem[stor253.length.field_1 + 265] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[stor253.length.field_1 + 266] = 32
                mem[stor253.length.field_1 + 298] = mem[224]
                mem[stor253.length.field_1 + 330 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[mem[224] + stor253.length.field_1 + 330] = 0
                return Array(len=mem[224], data=mem[stor253.length.field_1 + 330 len ceil32(mem[224])])
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor253.length):
                mem[256] = Mask(248, 8, stor253.length)
            else:
                if bool(stor253.length) != 1:
                    mem[64] = 10
                    _1179 = mem[224]
                    mem[42] = mem[224]
                    mem[74 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(_1179) > _1179:
                        mem[_1179 + 74] = 0
                    return 32, mem[42 len ceil32(_1179) + 32]
                idx = 0
                s = 0
                while idx < stor253.length.field_1:
                    mem[idx + 256] = stor253[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor253.length.field_1 + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor253.length.field_1 + 257] = '?typeid='
            mem[stor253.length.field_1 + 265] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor253.length.field_1 + 266] = 32
            mem[stor253.length.field_1 + 298] = mem[224]
            mem[stor253.length.field_1 + 330 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + stor253.length.field_1 + 330] = 0
            return Array(len=mem[224], data=mem[stor253.length.field_1 + 330 len ceil32(mem[224])])
        s = 0
        idx = sub_d14bd096[arg1]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s
            idx = sub_d14bd096[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[160]:
                    revert with 0, 50
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1116 = mem[64]
            if bool(stor253.length):
                if bool(stor253.length) == stor253.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor253.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                    _1160 = mem[96]
                    mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1160 + _1116 + stor253.length.field_1 + 32] = '?typeid='
                    if ceil32(_1160) <= _1160:
                        _2114 = mem[160]
                        mem[_1160 + _1116 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_2114) <= _2114:
                            _3632 = mem[64]
                            mem[64] = _2114 + _1160 + _1116 + stor253.length.field_1 + 40
                            mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 40] = 32
                            _3804 = mem[_3632]
                            mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 72] = mem[_3632]
                            mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 104 len ceil32(_3804)] = mem[_3632 + 32 len ceil32(_3804)]
                            if ceil32(_3804) > _3804:
                                mem[_3804 + _2114 + _1160 + _1116 + stor253.length.field_1 + 104] = 0
                            return 32, mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 72 len ceil32(_3804) + 32]
                        mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 40] = 0
                        _3633 = mem[64]
                        mem[64] = _2114 + _1160 + _1116 + stor253.length.field_1 + 40
                        mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 40] = 32
                        _3805 = mem[_3633]
                        mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 72] = mem[_3633]
                        mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 104 len ceil32(_3805)] = mem[_3633 + 32 len ceil32(_3805)]
                        if ceil32(_3805) > _3805:
                            mem[_3805 + _2114 + _1160 + _1116 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_2114 + _1160 + _1116 + stor253.length.field_1 + 72 len ceil32(_3805) + 32]
                    _2115 = mem[160]
                    mem[_1160 + _1116 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_2115) <= _2115:
                        _3634 = mem[64]
                        mem[64] = _2115 + _1160 + _1116 + stor253.length.field_1 + 40
                        mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 40] = 32
                        _3806 = mem[_3634]
                        mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 72] = mem[_3634]
                        mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 104 len ceil32(_3806)] = mem[_3634 + 32 len ceil32(_3806)]
                        if ceil32(_3806) > _3806:
                            mem[_3806 + _2115 + _1160 + _1116 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 72 len ceil32(_3806) + 32]
                    mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 40] = 0
                    _3635 = mem[64]
                    mem[64] = _2115 + _1160 + _1116 + stor253.length.field_1 + 40
                    mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 40] = 32
                    _3807 = mem[_3635]
                    mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 72] = mem[_3635]
                    mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 104 len ceil32(_3807)] = mem[_3635 + 32 len ceil32(_3807)]
                    if ceil32(_3807) > _3807:
                        mem[_3807 + _2115 + _1160 + _1116 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_2115 + _1160 + _1116 + stor253.length.field_1 + 72 len ceil32(_3807) + 32]
                if bool(stor253.length) != 1:
                    _1180 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1180] = '?typeid='
                    if ceil32(_1180) <= _1180:
                        _2117 = mem[160]
                        mem[_1180 + 8 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_2117) <= _2117:
                            _3636 = mem[64]
                            mem[64] = _2117 + _1180 + 8
                            mem[_2117 + _1180 + 8] = 32
                            _3808 = mem[_3636]
                            mem[_2117 + _1180 + 40] = mem[_3636]
                            mem[_2117 + _1180 + 72 len ceil32(_3808)] = mem[_3636 + 32 len ceil32(_3808)]
                            if ceil32(_3808) > _3808:
                                mem[_3808 + _2117 + _1180 + 72] = 0
                            return 32, mem[_2117 + _1180 + 40 len ceil32(_3808) + 32]
                        mem[_2117 + _1180 + 8] = 0
                        _3637 = mem[64]
                        mem[64] = _2117 + _1180 + 8
                        mem[_2117 + _1180 + 8] = 32
                        _3809 = mem[_3637]
                        mem[_2117 + _1180 + 40] = mem[_3637]
                        mem[_2117 + _1180 + 72 len ceil32(_3809)] = mem[_3637 + 32 len ceil32(_3809)]
                        if ceil32(_3809) > _3809:
                            mem[_3809 + _2117 + _1180 + 72] = 0
                        return 32, mem[_2117 + _1180 + 40 len ceil32(_3809) + 32]
                    _2118 = mem[160]
                    mem[_1180 + 8 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_2118) <= _2118:
                        _3638 = mem[64]
                        mem[64] = _2118 + _1180 + 8
                        mem[_2118 + _1180 + 8] = 32
                        _3810 = mem[_3638]
                        mem[_2118 + _1180 + 40] = mem[_3638]
                        mem[_2118 + _1180 + 72 len ceil32(_3810)] = mem[_3638 + 32 len ceil32(_3810)]
                        if ceil32(_3810) > _3810:
                            mem[_3810 + _2118 + _1180 + 72] = 0
                        return 32, mem[_2118 + _1180 + 40 len ceil32(_3810) + 32]
                    mem[_2118 + _1180 + 8] = 0
                    _3639 = mem[64]
                    mem[64] = _2118 + _1180 + 8
                    mem[_2118 + _1180 + 8] = 32
                    _3811 = mem[_3639]
                    mem[_2118 + _1180 + 40] = mem[_3639]
                    mem[_2118 + _1180 + 72 len ceil32(_3811)] = mem[_3639 + 32 len ceil32(_3811)]
                    if ceil32(_3811) > _3811:
                        mem[_3811 + _2118 + _1180 + 72] = 0
                    return 32, mem[_2118 + _1180 + 40 len ceil32(_3811) + 32]
                mem[0] = 253
                idx = 0
                s = 0
                while idx < stor253.length.field_1:
                    mem[idx + _1116 + 32] = stor253[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2048 = mem[96]
                mem[_1116 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_2048 + _1116 + stor253.length.field_1 + 32] = '?typeid='
                if ceil32(_2048) <= _2048:
                    _3724 = mem[160]
                    mem[_2048 + _1116 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_3724) <= _3724:
                        _5148 = mem[64]
                        mem[64] = _3724 + _2048 + _1116 + stor253.length.field_1 + 40
                        mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 40] = 32
                        _5308 = mem[_5148]
                        mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 72] = mem[_5148]
                        mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 104 len ceil32(_5308)] = mem[_5148 + 32 len ceil32(_5308)]
                        if ceil32(_5308) > _5308:
                            mem[_5308 + _3724 + _2048 + _1116 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 72 len ceil32(_5308) + 32]
                    mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 40] = 0
                    _5149 = mem[64]
                    mem[64] = _3724 + _2048 + _1116 + stor253.length.field_1 + 40
                    mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 40] = 32
                    _5309 = mem[_5149]
                    mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 72] = mem[_5149]
                    mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 104 len ceil32(_5309)] = mem[_5149 + 32 len ceil32(_5309)]
                    if ceil32(_5309) > _5309:
                        mem[_5309 + _3724 + _2048 + _1116 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_3724 + _2048 + _1116 + stor253.length.field_1 + 72 len ceil32(_5309) + 32]
                _3725 = mem[160]
                mem[_2048 + _1116 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_3725) <= _3725:
                    _5150 = mem[64]
                    mem[64] = _3725 + _2048 + _1116 + stor253.length.field_1 + 40
                    mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 40] = 32
                    _5310 = mem[_5150]
                    mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 72] = mem[_5150]
                    mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 104 len ceil32(_5310)] = mem[_5150 + 32 len ceil32(_5310)]
                    if ceil32(_5310) > _5310:
                        mem[_5310 + _3725 + _2048 + _1116 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 72 len ceil32(_5310) + 32]
                mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 40] = 0
                _5151 = mem[64]
                mem[64] = _3725 + _2048 + _1116 + stor253.length.field_1 + 40
                mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 40] = 32
                _5311 = mem[_5151]
                mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 72] = mem[_5151]
                mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 104 len ceil32(_5311)] = mem[_5151 + 32 len ceil32(_5311)]
                if ceil32(_5311) > _5311:
                    mem[_5311 + _3725 + _2048 + _1116 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3725 + _2048 + _1116 + stor253.length.field_1 + 72 len ceil32(_5311) + 32]
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor253.length):
                mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                _1181 = mem[96]
                mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor253.length.field_1 + 32] = '?typeid='
                if ceil32(mem[96]) <= mem[96]:
                    _2119 = mem[160]
                    mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_2119) <= _2119:
                        _3640 = mem[64]
                        mem[64] = _2119 + mem[96] + mem[64] + stor253.length.field_1 + 40
                        mem[_2119 + mem[96] + _1116 + stor253.length.field_1 + 40] = 32
                        _3812 = mem[_3640]
                        mem[_2119 + _1181 + _1116 + stor253.length.field_1 + 72] = mem[_3640]
                        mem[_2119 + _1181 + _1116 + stor253.length.field_1 + 104 len ceil32(_3812)] = mem[_3640 + 32 len ceil32(_3812)]
                        if ceil32(_3812) > _3812:
                            mem[_3812 + _2119 + _1181 + _1116 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_2119 + _1181 + _1116 + stor253.length.field_1 + 72 len ceil32(_3812) + 32]
                    mem[_2119 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
                    _3641 = mem[64]
                    mem[64] = _2119 + _1181 + _1116 + stor253.length.field_1 + 40
                    mem[_2119 + _1181 + _1116 + stor253.length.field_1 + 40] = 32
                    _3813 = mem[_3641]
                    mem[_2119 + _1181 + _1116 + stor253.length.field_1 + 72] = mem[_3641]
                    mem[_2119 + _1181 + _1116 + stor253.length.field_1 + 104 len ceil32(_3813)] = mem[_3641 + 32 len ceil32(_3813)]
                    if ceil32(_3813) > _3813:
                        mem[_3813 + _2119 + _1181 + _1116 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_2119 + _1181 + _1116 + stor253.length.field_1 + 72 len ceil32(_3813) + 32]
                _2120 = mem[160]
                mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_2120) <= _2120:
                    _3642 = mem[64]
                    mem[64] = _2120 + mem[96] + mem[64] + stor253.length.field_1 + 40
                    mem[_2120 + mem[96] + _1116 + stor253.length.field_1 + 40] = 32
                    _3814 = mem[_3642]
                    mem[_2120 + _1181 + _1116 + stor253.length.field_1 + 72] = mem[_3642]
                    mem[_2120 + _1181 + _1116 + stor253.length.field_1 + 104 len ceil32(_3814)] = mem[_3642 + 32 len ceil32(_3814)]
                    if ceil32(_3814) > _3814:
                        mem[_3814 + _2120 + _1181 + _1116 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_2120 + _1181 + _1116 + stor253.length.field_1 + 72 len ceil32(_3814) + 32]
                mem[_2120 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
                _3643 = mem[64]
                mem[64] = _2120 + mem[96] + mem[64] + stor253.length.field_1 + 40
                mem[_2120 + mem[96] + _1116 + stor253.length.field_1 + 40] = 32
                _3815 = mem[_3643]
                mem[_2120 + _1181 + _1116 + stor253.length.field_1 + 72] = mem[_3643]
                mem[_2120 + _1181 + _1116 + stor253.length.field_1 + 104 len ceil32(_3815)] = mem[_3643 + 32 len ceil32(_3815)]
                if ceil32(_3815) > _3815:
                    mem[_3815 + _2120 + _1181 + _1116 + stor253.length.field_1 + 104] = 0
                return 32, mem[_2120 + _1181 + _1116 + stor253.length.field_1 + 72 len ceil32(_3815) + 32]
            if bool(stor253.length) != 1:
                _1190 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1190] = '?typeid='
                if ceil32(_1190) <= _1190:
                    _2122 = mem[160]
                    mem[_1190 + 8 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_2122) <= _2122:
                        _3644 = mem[64]
                        mem[64] = _2122 + _1190 + 8
                        mem[_2122 + _1190 + 8] = 32
                        _3816 = mem[_3644]
                        mem[_2122 + _1190 + 40] = mem[_3644]
                        mem[_2122 + _1190 + 72 len ceil32(_3816)] = mem[_3644 + 32 len ceil32(_3816)]
                        if ceil32(_3816) > _3816:
                            mem[_3816 + _2122 + _1190 + 72] = 0
                        return 32, mem[_2122 + _1190 + 40 len ceil32(_3816) + 32]
                    mem[_2122 + _1190 + 8] = 0
                    _3645 = mem[64]
                    mem[64] = _2122 + _1190 + 8
                    mem[_2122 + _1190 + 8] = 32
                    _3817 = mem[_3645]
                    mem[_2122 + _1190 + 40] = mem[_3645]
                    mem[_2122 + _1190 + 72 len ceil32(_3817)] = mem[_3645 + 32 len ceil32(_3817)]
                    if ceil32(_3817) > _3817:
                        mem[_3817 + _2122 + _1190 + 72] = 0
                    return 32, mem[_2122 + _1190 + 40 len ceil32(_3817) + 32]
                _2123 = mem[160]
                mem[_1190 + 8 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_2123) <= _2123:
                    _3646 = mem[64]
                    mem[64] = _2123 + _1190 + 8
                    mem[_2123 + _1190 + 8] = 32
                    _3818 = mem[_3646]
                    mem[_2123 + _1190 + 40] = mem[_3646]
                    mem[_2123 + _1190 + 72 len ceil32(_3818)] = mem[_3646 + 32 len ceil32(_3818)]
                    if ceil32(_3818) > _3818:
                        mem[_3818 + _2123 + _1190 + 72] = 0
                    return 32, mem[_2123 + _1190 + 40 len ceil32(_3818) + 32]
                mem[_2123 + _1190 + 8] = 0
                _3647 = mem[64]
                mem[64] = _2123 + _1190 + 8
                mem[_2123 + _1190 + 8] = 32
                _3819 = mem[_3647]
                mem[_2123 + _1190 + 40] = mem[_3647]
                mem[_2123 + _1190 + 72 len ceil32(_3819)] = mem[_3647 + 32 len ceil32(_3819)]
                if ceil32(_3819) > _3819:
                    mem[_3819 + _2123 + _1190 + 72] = 0
                return 32, mem[_2123 + _1190 + 40 len ceil32(_3819) + 32]
            mem[0] = 253
            idx = 0
            s = 0
            while idx < stor253.length.field_1:
                mem[idx + _1116 + 32] = stor253[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2049 = mem[96]
            mem[_1116 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2049 + _1116 + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(_2049) <= _2049:
                _3734 = mem[160]
                mem[_2049 + _1116 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_3734) <= _3734:
                    _5168 = mem[64]
                    mem[64] = _3734 + _2049 + _1116 + stor253.length.field_1 + 40
                    mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 40] = 32
                    _5312 = mem[_5168]
                    mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 72] = mem[_5168]
                    mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 104 len ceil32(_5312)] = mem[_5168 + 32 len ceil32(_5312)]
                    if ceil32(_5312) > _5312:
                        mem[_5312 + _3734 + _2049 + _1116 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 72 len ceil32(_5312) + 32]
                mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 40] = 0
                _5169 = mem[64]
                mem[64] = _3734 + _2049 + _1116 + stor253.length.field_1 + 40
                mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 40] = 32
                _5313 = mem[_5169]
                mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 72] = mem[_5169]
                mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 104 len ceil32(_5313)] = mem[_5169 + 32 len ceil32(_5313)]
                if ceil32(_5313) > _5313:
                    mem[_5313 + _3734 + _2049 + _1116 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3734 + _2049 + _1116 + stor253.length.field_1 + 72 len ceil32(_5313) + 32]
            _3735 = mem[160]
            mem[_2049 + _1116 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_3735) <= _3735:
                _5170 = mem[64]
                mem[64] = _3735 + _2049 + _1116 + stor253.length.field_1 + 40
                mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 40] = 32
                _5314 = mem[_5170]
                mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 72] = mem[_5170]
                mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 104 len ceil32(_5314)] = mem[_5170 + 32 len ceil32(_5314)]
                if ceil32(_5314) > _5314:
                    mem[_5314 + _3735 + _2049 + _1116 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 72 len ceil32(_5314) + 32]
            mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 40] = 0
            _5171 = mem[64]
            mem[64] = _3735 + _2049 + _1116 + stor253.length.field_1 + 40
            mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 40] = 32
            _5315 = mem[_5171]
            mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 72] = mem[_5171]
            mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 104 len ceil32(_5315)] = mem[_5171 + 32 len ceil32(_5315)]
            if ceil32(_5315) > _5315:
                mem[_5315 + _3735 + _2049 + _1116 + stor253.length.field_1 + 104] = 0
            return 32, mem[_3735 + _2049 + _1116 + stor253.length.field_1 + 72 len ceil32(_5315) + 32]
        mem[192 len s] = call.data[calldata.size len s]
        t = s
        idx = sub_d14bd096[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1117 = mem[64]
        if bool(stor253.length):
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor253.length):
                mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                _1162 = mem[96]
                mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1162 + _1117 + stor253.length.field_1 + 32] = '?typeid='
                if ceil32(_1162) <= _1162:
                    _2124 = mem[160]
                    mem[_1162 + _1117 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_2124) <= _2124:
                        _3648 = mem[64]
                        mem[64] = _2124 + _1162 + _1117 + stor253.length.field_1 + 40
                        mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 40] = 32
                        _3820 = mem[_3648]
                        mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 72] = mem[_3648]
                        mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 104 len ceil32(_3820)] = mem[_3648 + 32 len ceil32(_3820)]
                        if ceil32(_3820) > _3820:
                            mem[_3820 + _2124 + _1162 + _1117 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 72 len ceil32(_3820) + 32]
                    mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 40] = 0
                    _3649 = mem[64]
                    mem[64] = _2124 + _1162 + _1117 + stor253.length.field_1 + 40
                    mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 40] = 32
                    _3821 = mem[_3649]
                    mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 72] = mem[_3649]
                    mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 104 len ceil32(_3821)] = mem[_3649 + 32 len ceil32(_3821)]
                    if ceil32(_3821) > _3821:
                        mem[_3821 + _2124 + _1162 + _1117 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_2124 + _1162 + _1117 + stor253.length.field_1 + 72 len ceil32(_3821) + 32]
                _2125 = mem[160]
                mem[_1162 + _1117 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_2125) <= _2125:
                    _3650 = mem[64]
                    mem[64] = _2125 + _1162 + _1117 + stor253.length.field_1 + 40
                    mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 40] = 32
                    _3822 = mem[_3650]
                    mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 72] = mem[_3650]
                    mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 104 len ceil32(_3822)] = mem[_3650 + 32 len ceil32(_3822)]
                    if ceil32(_3822) > _3822:
                        mem[_3822 + _2125 + _1162 + _1117 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 72 len ceil32(_3822) + 32]
                mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 40] = 0
                _3651 = mem[64]
                mem[64] = _2125 + _1162 + _1117 + stor253.length.field_1 + 40
                mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 40] = 32
                _3823 = mem[_3651]
                mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 72] = mem[_3651]
                mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 104 len ceil32(_3823)] = mem[_3651 + 32 len ceil32(_3823)]
                if ceil32(_3823) > _3823:
                    mem[_3823 + _2125 + _1162 + _1117 + stor253.length.field_1 + 104] = 0
                return 32, mem[_2125 + _1162 + _1117 + stor253.length.field_1 + 72 len ceil32(_3823) + 32]
            if bool(stor253.length) != 1:
                _1182 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1182] = '?typeid='
                if ceil32(_1182) <= _1182:
                    _2127 = mem[160]
                    mem[_1182 + 8 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_2127) <= _2127:
                        _3652 = mem[64]
                        mem[64] = _2127 + _1182 + 8
                        mem[_2127 + _1182 + 8] = 32
                        _3824 = mem[_3652]
                        mem[_2127 + _1182 + 40] = mem[_3652]
                        mem[_2127 + _1182 + 72 len ceil32(_3824)] = mem[_3652 + 32 len ceil32(_3824)]
                        if ceil32(_3824) > _3824:
                            mem[_3824 + _2127 + _1182 + 72] = 0
                        return 32, mem[_2127 + _1182 + 40 len ceil32(_3824) + 32]
                    mem[_2127 + _1182 + 8] = 0
                    _3653 = mem[64]
                    mem[64] = _2127 + _1182 + 8
                    mem[_2127 + _1182 + 8] = 32
                    _3825 = mem[_3653]
                    mem[_2127 + _1182 + 40] = mem[_3653]
                    mem[_2127 + _1182 + 72 len ceil32(_3825)] = mem[_3653 + 32 len ceil32(_3825)]
                    if ceil32(_3825) > _3825:
                        mem[_3825 + _2127 + _1182 + 72] = 0
                    return 32, mem[_2127 + _1182 + 40 len ceil32(_3825) + 32]
                _2128 = mem[160]
                mem[_1182 + 8 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_2128) <= _2128:
                    _3654 = mem[64]
                    mem[64] = _2128 + _1182 + 8
                    mem[_2128 + _1182 + 8] = 32
                    _3826 = mem[_3654]
                    mem[_2128 + _1182 + 40] = mem[_3654]
                    mem[_2128 + _1182 + 72 len ceil32(_3826)] = mem[_3654 + 32 len ceil32(_3826)]
                    if ceil32(_3826) > _3826:
                        mem[_3826 + _2128 + _1182 + 72] = 0
                    return 32, mem[_2128 + _1182 + 40 len ceil32(_3826) + 32]
                mem[_2128 + _1182 + 8] = 0
                _3655 = mem[64]
                mem[64] = _2128 + _1182 + 8
                mem[_2128 + _1182 + 8] = 32
                _3827 = mem[_3655]
                mem[_2128 + _1182 + 40] = mem[_3655]
                mem[_2128 + _1182 + 72 len ceil32(_3827)] = mem[_3655 + 32 len ceil32(_3827)]
                if ceil32(_3827) > _3827:
                    mem[_3827 + _2128 + _1182 + 72] = 0
                return 32, mem[_2128 + _1182 + 40 len ceil32(_3827) + 32]
            mem[0] = 253
            idx = 0
            s = 0
            while idx < stor253.length.field_1:
                mem[idx + _1117 + 32] = stor253[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2050 = mem[96]
            mem[_1117 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2050 + _1117 + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(_2050) <= _2050:
                _3744 = mem[160]
                mem[_2050 + _1117 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_3744) <= _3744:
                    _5188 = mem[64]
                    mem[64] = _3744 + _2050 + _1117 + stor253.length.field_1 + 40
                    mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 40] = 32
                    _5316 = mem[_5188]
                    mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 72] = mem[_5188]
                    mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 104 len ceil32(_5316)] = mem[_5188 + 32 len ceil32(_5316)]
                    if ceil32(_5316) > _5316:
                        mem[_5316 + _3744 + _2050 + _1117 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 72 len ceil32(_5316) + 32]
                mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 40] = 0
                _5189 = mem[64]
                mem[64] = _3744 + _2050 + _1117 + stor253.length.field_1 + 40
                mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 40] = 32
                _5317 = mem[_5189]
                mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 72] = mem[_5189]
                mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 104 len ceil32(_5317)] = mem[_5189 + 32 len ceil32(_5317)]
                if ceil32(_5317) > _5317:
                    mem[_5317 + _3744 + _2050 + _1117 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3744 + _2050 + _1117 + stor253.length.field_1 + 72 len ceil32(_5317) + 32]
            _3745 = mem[160]
            mem[_2050 + _1117 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_3745) <= _3745:
                _5190 = mem[64]
                mem[64] = _3745 + _2050 + _1117 + stor253.length.field_1 + 40
                mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 40] = 32
                _5318 = mem[_5190]
                mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 72] = mem[_5190]
                mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 104 len ceil32(_5318)] = mem[_5190 + 32 len ceil32(_5318)]
                if ceil32(_5318) > _5318:
                    mem[_5318 + _3745 + _2050 + _1117 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 72 len ceil32(_5318) + 32]
            mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 40] = 0
            _5191 = mem[64]
            mem[64] = _3745 + _2050 + _1117 + stor253.length.field_1 + 40
            mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 40] = 32
            _5319 = mem[_5191]
            mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 72] = mem[_5191]
            mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 104 len ceil32(_5319)] = mem[_5191 + 32 len ceil32(_5319)]
            if ceil32(_5319) > _5319:
                mem[_5319 + _3745 + _2050 + _1117 + stor253.length.field_1 + 104] = 0
            return 32, mem[_3745 + _2050 + _1117 + stor253.length.field_1 + 72 len ceil32(_5319) + 32]
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor253.length):
            mem[mem[64] + 32] = Mask(248, 8, stor253.length)
            _1183 = mem[96]
            mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(mem[96]) <= mem[96]:
                _2129 = mem[160]
                mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_2129) <= _2129:
                    _3656 = mem[64]
                    mem[64] = _2129 + mem[96] + mem[64] + stor253.length.field_1 + 40
                    mem[_2129 + mem[96] + _1117 + stor253.length.field_1 + 40] = 32
                    _3828 = mem[_3656]
                    mem[_2129 + _1183 + _1117 + stor253.length.field_1 + 72] = mem[_3656]
                    mem[_2129 + _1183 + _1117 + stor253.length.field_1 + 104 len ceil32(_3828)] = mem[_3656 + 32 len ceil32(_3828)]
                    if ceil32(_3828) > _3828:
                        mem[_3828 + _2129 + _1183 + _1117 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_2129 + _1183 + _1117 + stor253.length.field_1 + 72 len ceil32(_3828) + 32]
                mem[_2129 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
                _3657 = mem[64]
                mem[64] = _2129 + mem[96] + mem[64] + stor253.length.field_1 + 40
                mem[_2129 + mem[96] + _1117 + stor253.length.field_1 + 40] = 32
                _3829 = mem[_3657]
                mem[_2129 + _1183 + _1117 + stor253.length.field_1 + 72] = mem[_3657]
                mem[_2129 + _1183 + _1117 + stor253.length.field_1 + 104 len ceil32(_3829)] = mem[_3657 + 32 len ceil32(_3829)]
                if ceil32(_3829) > _3829:
                    mem[_3829 + _2129 + _1183 + _1117 + stor253.length.field_1 + 104] = 0
                return 32, mem[_2129 + _1183 + _1117 + stor253.length.field_1 + 72 len ceil32(_3829) + 32]
            _2130 = mem[160]
            mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_2130) <= _2130:
                _3658 = mem[64]
                mem[64] = _2130 + mem[96] + mem[64] + stor253.length.field_1 + 40
                mem[_2130 + mem[96] + _1117 + stor253.length.field_1 + 40] = 32
                _3830 = mem[_3658]
                mem[_2130 + _1183 + _1117 + stor253.length.field_1 + 72] = mem[_3658]
                mem[_2130 + _1183 + _1117 + stor253.length.field_1 + 104 len ceil32(_3830)] = mem[_3658 + 32 len ceil32(_3830)]
                if ceil32(_3830) > _3830:
                    mem[_3830 + _2130 + _1183 + _1117 + stor253.length.field_1 + 104] = 0
                return 32, mem[_2130 + _1183 + _1117 + stor253.length.field_1 + 72 len ceil32(_3830) + 32]
            mem[_2130 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
            _3659 = mem[64]
            mem[64] = _2130 + mem[96] + mem[64] + stor253.length.field_1 + 40
            mem[_2130 + mem[96] + _1117 + stor253.length.field_1 + 40] = 32
            _3831 = mem[_3659]
            mem[_2130 + _1183 + _1117 + stor253.length.field_1 + 72] = mem[_3659]
            mem[_2130 + _1183 + _1117 + stor253.length.field_1 + 104 len ceil32(_3831)] = mem[_3659 + 32 len ceil32(_3831)]
            if ceil32(_3831) > _3831:
                mem[_3831 + _2130 + _1183 + _1117 + stor253.length.field_1 + 104] = 0
            return 32, mem[_2130 + _1183 + _1117 + stor253.length.field_1 + 72 len ceil32(_3831) + 32]
        if bool(stor253.length) != 1:
            _1192 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1192] = '?typeid='
            if ceil32(_1192) <= _1192:
                _2132 = mem[160]
                mem[_1192 + 8 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_2132) <= _2132:
                    _3660 = mem[64]
                    mem[64] = _2132 + _1192 + 8
                    mem[_2132 + _1192 + 8] = 32
                    _3832 = mem[_3660]
                    mem[_2132 + _1192 + 40] = mem[_3660]
                    mem[_2132 + _1192 + 72 len ceil32(_3832)] = mem[_3660 + 32 len ceil32(_3832)]
                    if ceil32(_3832) > _3832:
                        mem[_3832 + _2132 + _1192 + 72] = 0
                    return 32, mem[_2132 + _1192 + 40 len ceil32(_3832) + 32]
                mem[_2132 + _1192 + 8] = 0
                _3661 = mem[64]
                mem[64] = _2132 + _1192 + 8
                mem[_2132 + _1192 + 8] = 32
                _3833 = mem[_3661]
                mem[_2132 + _1192 + 40] = mem[_3661]
                mem[_2132 + _1192 + 72 len ceil32(_3833)] = mem[_3661 + 32 len ceil32(_3833)]
                if ceil32(_3833) > _3833:
                    mem[_3833 + _2132 + _1192 + 72] = 0
                return 32, mem[_2132 + _1192 + 40 len ceil32(_3833) + 32]
            _2133 = mem[160]
            mem[_1192 + 8 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_2133) <= _2133:
                _3662 = mem[64]
                mem[64] = _2133 + _1192 + 8
                mem[_2133 + _1192 + 8] = 32
                _3834 = mem[_3662]
                mem[_2133 + _1192 + 40] = mem[_3662]
                mem[_2133 + _1192 + 72 len ceil32(_3834)] = mem[_3662 + 32 len ceil32(_3834)]
                if ceil32(_3834) > _3834:
                    mem[_3834 + _2133 + _1192 + 72] = 0
                return 32, mem[_2133 + _1192 + 40 len ceil32(_3834) + 32]
            mem[_2133 + _1192 + 8] = 0
            _3663 = mem[64]
            mem[64] = _2133 + _1192 + 8
            mem[_2133 + _1192 + 8] = 32
            _3835 = mem[_3663]
            mem[_2133 + _1192 + 40] = mem[_3663]
            mem[_2133 + _1192 + 72 len ceil32(_3835)] = mem[_3663 + 32 len ceil32(_3835)]
            if ceil32(_3835) > _3835:
                mem[_3835 + _2133 + _1192 + 72] = 0
            return 32, mem[_2133 + _1192 + 40 len ceil32(_3835) + 32]
        mem[0] = 253
        idx = 0
        s = 0
        while idx < stor253.length.field_1:
            mem[idx + _1117 + 32] = stor253[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2051 = mem[96]
        mem[_1117 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_2051 + _1117 + stor253.length.field_1 + 32] = '?typeid='
        if ceil32(_2051) <= _2051:
            _3754 = mem[160]
            mem[_2051 + _1117 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_3754) <= _3754:
                _5208 = mem[64]
                mem[64] = _3754 + _2051 + _1117 + stor253.length.field_1 + 40
                mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 40] = 32
                _5320 = mem[_5208]
                mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 72] = mem[_5208]
                mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 104 len ceil32(_5320)] = mem[_5208 + 32 len ceil32(_5320)]
                if ceil32(_5320) > _5320:
                    mem[_5320 + _3754 + _2051 + _1117 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 72 len ceil32(_5320) + 32]
            mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 40] = 0
            _5209 = mem[64]
            mem[64] = _3754 + _2051 + _1117 + stor253.length.field_1 + 40
            mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 40] = 32
            _5321 = mem[_5209]
            mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 72] = mem[_5209]
            mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 104 len ceil32(_5321)] = mem[_5209 + 32 len ceil32(_5321)]
            if ceil32(_5321) > _5321:
                mem[_5321 + _3754 + _2051 + _1117 + stor253.length.field_1 + 104] = 0
            return 32, mem[_3754 + _2051 + _1117 + stor253.length.field_1 + 72 len ceil32(_5321) + 32]
        _3755 = mem[160]
        mem[_2051 + _1117 + stor253.length.field_1 + 40 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_3755) <= _3755:
            _5210 = mem[64]
            mem[64] = _3755 + _2051 + _1117 + stor253.length.field_1 + 40
            mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 40] = 32
            _5322 = mem[_5210]
            mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 72] = mem[_5210]
            mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 104 len ceil32(_5322)] = mem[_5210 + 32 len ceil32(_5322)]
            if ceil32(_5322) > _5322:
                mem[_5322 + _3755 + _2051 + _1117 + stor253.length.field_1 + 104] = 0
            return 32, mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 72 len ceil32(_5322) + 32]
        mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 40] = 0
        _5211 = mem[64]
        mem[64] = _3755 + _2051 + _1117 + stor253.length.field_1 + 40
        mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 40] = 32
        _5323 = mem[_5211]
        mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 72] = mem[_5211]
        mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 104 len ceil32(_5323)] = mem[_5211 + 32 len ceil32(_5323)]
        if ceil32(_5323) > _5323:
            mem[_5323 + _3755 + _2051 + _1117 + stor253.length.field_1 + 104] = 0
        return 32, mem[_3755 + _2051 + _1117 + stor253.length.field_1 + 72 len ceil32(_5323) + 32]
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
        if not sub_d14bd096[arg1]:
            _1118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1118] = 1
            mem[_1118 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _1136 = mem[64]
            if bool(stor253.length):
                if bool(stor253.length) == stor253.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor253.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                    _1216 = mem[96]
                    mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1216 + _1136 + stor253.length.field_1 + 32] = '?typeid='
                    mem[_1216 + _1136 + stor253.length.field_1 + 40] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[_1216 + _1136 + stor253.length.field_1 + 41] = 0
                    if ceil32(_1216) <= _1216:
                        _3601 = mem[64]
                        mem[64] = _1216 + _1136 + stor253.length.field_1 + 41
                        mem[_1216 + _1136 + stor253.length.field_1 + 41] = 32
                        _3769 = mem[_3601]
                        mem[_1216 + _1136 + stor253.length.field_1 + 73] = mem[_3601]
                        mem[_1216 + _1136 + stor253.length.field_1 + 105 len ceil32(_3769)] = mem[_3601 + 32 len ceil32(_3769)]
                        if ceil32(_3769) > _3769:
                            mem[_3769 + _1216 + _1136 + stor253.length.field_1 + 105] = 0
                        return 32, mem[_1216 + _1136 + stor253.length.field_1 + 73 len ceil32(_3769) + 32]
                    _3603 = mem[64]
                    mem[64] = _1216 + _1136 + stor253.length.field_1 + 41
                    mem[_1216 + _1136 + stor253.length.field_1 + 41] = 32
                    _3771 = mem[_3603]
                    mem[_1216 + _1136 + stor253.length.field_1 + 73] = mem[_3603]
                    mem[_1216 + _1136 + stor253.length.field_1 + 105 len ceil32(_3771)] = mem[_3603 + 32 len ceil32(_3771)]
                    if ceil32(_3771) > _3771:
                        mem[_3771 + _1216 + _1136 + stor253.length.field_1 + 105] = 0
                    return 32, mem[_1216 + _1136 + stor253.length.field_1 + 73 len ceil32(_3771) + 32]
                if bool(stor253.length) != 1:
                    _1226 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1226] = '?typeid='
                    mem[_1226 + 8] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[_1226 + 9] = 0
                    if ceil32(_1226) <= _1226:
                        _3605 = mem[64]
                        mem[64] = _1226 + 9
                        mem[_1226 + 9] = 32
                        _3773 = mem[_3605]
                        mem[_1226 + 41] = mem[_3605]
                        mem[_1226 + 73 len ceil32(_3773)] = mem[_3605 + 32 len ceil32(_3773)]
                        if ceil32(_3773) > _3773:
                            mem[_3773 + _1226 + 73] = 0
                        return 32, mem[_1226 + 41 len ceil32(_3773) + 32]
                    _3607 = mem[64]
                    mem[64] = _1226 + 9
                    mem[_1226 + 9] = 32
                    _3775 = mem[_3607]
                    mem[_1226 + 41] = mem[_3607]
                    mem[_1226 + 73 len ceil32(_3775)] = mem[_3607 + 32 len ceil32(_3775)]
                    if ceil32(_3775) > _3775:
                        mem[_3775 + _1226 + 73] = 0
                    return 32, mem[_1226 + 41 len ceil32(_3775) + 32]
                mem[0] = 253
                idx = 0
                s = 0
                while idx < stor253.length.field_1:
                    mem[idx + _1136 + 32] = stor253[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2044 = mem[96]
                mem[_1136 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_2044 + _1136 + stor253.length.field_1 + 32] = '?typeid='
                if ceil32(_2044) <= _2044:
                    _3684 = mem[_1118]
                    mem[_2044 + _1136 + stor253.length.field_1 + 40 len ceil32(mem[_1118])] = mem[_1118 + 32 len ceil32(mem[_1118])]
                    if ceil32(_3684) <= _3684:
                        _5068 = mem[64]
                        mem[64] = _3684 + _2044 + _1136 + stor253.length.field_1 + 40
                        mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 40] = 32
                        _5292 = mem[_5068]
                        mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 72] = mem[_5068]
                        mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 104 len ceil32(_5292)] = mem[_5068 + 32 len ceil32(_5292)]
                        if ceil32(_5292) > _5292:
                            mem[_5292 + _3684 + _2044 + _1136 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 72 len ceil32(_5292) + 32]
                    mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 40] = 0
                    _5069 = mem[64]
                    mem[64] = _3684 + _2044 + _1136 + stor253.length.field_1 + 40
                    mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 40] = 32
                    _5293 = mem[_5069]
                    mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 72] = mem[_5069]
                    mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 104 len ceil32(_5293)] = mem[_5069 + 32 len ceil32(_5293)]
                    if ceil32(_5293) > _5293:
                        mem[_5293 + _3684 + _2044 + _1136 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_3684 + _2044 + _1136 + stor253.length.field_1 + 72 len ceil32(_5293) + 32]
                _3685 = mem[_1118]
                mem[_2044 + _1136 + stor253.length.field_1 + 40 len ceil32(mem[_1118])] = mem[_1118 + 32 len ceil32(mem[_1118])]
                if ceil32(_3685) <= _3685:
                    _5070 = mem[64]
                    mem[64] = _3685 + _2044 + _1136 + stor253.length.field_1 + 40
                    mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 40] = 32
                    _5294 = mem[_5070]
                    mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 72] = mem[_5070]
                    mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 104 len ceil32(_5294)] = mem[_5070 + 32 len ceil32(_5294)]
                    if ceil32(_5294) > _5294:
                        mem[_5294 + _3685 + _2044 + _1136 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 72 len ceil32(_5294) + 32]
                mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 40] = 0
                _5071 = mem[64]
                mem[64] = _3685 + _2044 + _1136 + stor253.length.field_1 + 40
                mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 40] = 32
                _5295 = mem[_5071]
                mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 72] = mem[_5071]
                mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 104 len ceil32(_5295)] = mem[_5071 + 32 len ceil32(_5295)]
                if ceil32(_5295) > _5295:
                    mem[_5295 + _3685 + _2044 + _1136 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3685 + _2044 + _1136 + stor253.length.field_1 + 72 len ceil32(_5295) + 32]
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor253.length):
                mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                _1227 = mem[96]
                mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor253.length.field_1 + 32] = '?typeid='
                mem[mem[96] + mem[64] + stor253.length.field_1 + 40] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[mem[96] + mem[64] + stor253.length.field_1 + 41] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _3609 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor253.length.field_1 + 41
                    mem[mem[96] + _1136 + stor253.length.field_1 + 41] = 32
                    _3777 = mem[_3609]
                    mem[_1227 + _1136 + stor253.length.field_1 + 73] = mem[_3609]
                    mem[_1227 + _1136 + stor253.length.field_1 + 105 len ceil32(_3777)] = mem[_3609 + 32 len ceil32(_3777)]
                    if ceil32(_3777) > _3777:
                        mem[_3777 + _1227 + _1136 + stor253.length.field_1 + 105] = 0
                    return 32, mem[_1227 + _1136 + stor253.length.field_1 + 73 len ceil32(_3777) + 32]
                _3611 = mem[64]
                mem[64] = mem[96] + mem[64] + stor253.length.field_1 + 41
                mem[mem[96] + _1136 + stor253.length.field_1 + 41] = 32
                _3779 = mem[_3611]
                mem[_1227 + _1136 + stor253.length.field_1 + 73] = mem[_3611]
                mem[_1227 + _1136 + stor253.length.field_1 + 105 len ceil32(_3779)] = mem[_3611 + 32 len ceil32(_3779)]
                if ceil32(_3779) > _3779:
                    mem[_3779 + _1227 + _1136 + stor253.length.field_1 + 105] = 0
                return 32, mem[_1227 + _1136 + stor253.length.field_1 + 73 len ceil32(_3779) + 32]
            if bool(stor253.length) != 1:
                _1240 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1240] = '?typeid='
                mem[_1240 + 8] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[_1240 + 9] = 0
                if ceil32(_1240) <= _1240:
                    _3613 = mem[64]
                    mem[64] = _1240 + 9
                    mem[_1240 + 9] = 32
                    _3781 = mem[_3613]
                    mem[_1240 + 41] = mem[_3613]
                    mem[_1240 + 73 len ceil32(_3781)] = mem[_3613 + 32 len ceil32(_3781)]
                    if ceil32(_3781) > _3781:
                        mem[_3781 + _1240 + 73] = 0
                    return 32, mem[_1240 + 41 len ceil32(_3781) + 32]
                _3615 = mem[64]
                mem[64] = _1240 + 9
                mem[_1240 + 9] = 32
                _3783 = mem[_3615]
                mem[_1240 + 41] = mem[_3615]
                mem[_1240 + 73 len ceil32(_3783)] = mem[_3615 + 32 len ceil32(_3783)]
                if ceil32(_3783) > _3783:
                    mem[_3783 + _1240 + 73] = 0
                return 32, mem[_1240 + 41 len ceil32(_3783) + 32]
            mem[0] = 253
            idx = 0
            s = 0
            while idx < stor253.length.field_1:
                mem[idx + _1136 + 32] = stor253[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2045 = mem[96]
            mem[_1136 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2045 + _1136 + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(_2045) <= _2045:
                _3694 = mem[_1118]
                mem[_2045 + _1136 + stor253.length.field_1 + 40 len ceil32(mem[_1118])] = mem[_1118 + 32 len ceil32(mem[_1118])]
                if ceil32(_3694) <= _3694:
                    _5088 = mem[64]
                    mem[64] = _3694 + _2045 + _1136 + stor253.length.field_1 + 40
                    mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 40] = 32
                    _5296 = mem[_5088]
                    mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 72] = mem[_5088]
                    mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 104 len ceil32(_5296)] = mem[_5088 + 32 len ceil32(_5296)]
                    if ceil32(_5296) > _5296:
                        mem[_5296 + _3694 + _2045 + _1136 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 72 len ceil32(_5296) + 32]
                mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 40] = 0
                _5089 = mem[64]
                mem[64] = _3694 + _2045 + _1136 + stor253.length.field_1 + 40
                mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 40] = 32
                _5297 = mem[_5089]
                mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 72] = mem[_5089]
                mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 104 len ceil32(_5297)] = mem[_5089 + 32 len ceil32(_5297)]
                if ceil32(_5297) > _5297:
                    mem[_5297 + _3694 + _2045 + _1136 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3694 + _2045 + _1136 + stor253.length.field_1 + 72 len ceil32(_5297) + 32]
            _3695 = mem[_1118]
            mem[_2045 + _1136 + stor253.length.field_1 + 40 len ceil32(mem[_1118])] = mem[_1118 + 32 len ceil32(mem[_1118])]
            if ceil32(_3695) <= _3695:
                _5090 = mem[64]
                mem[64] = _3695 + _2045 + _1136 + stor253.length.field_1 + 40
                mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 40] = 32
                _5298 = mem[_5090]
                mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 72] = mem[_5090]
                mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 104 len ceil32(_5298)] = mem[_5090 + 32 len ceil32(_5298)]
                if ceil32(_5298) > _5298:
                    mem[_5298 + _3695 + _2045 + _1136 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 72 len ceil32(_5298) + 32]
            mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 40] = 0
            _5091 = mem[64]
            mem[64] = _3695 + _2045 + _1136 + stor253.length.field_1 + 40
            mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 40] = 32
            _5299 = mem[_5091]
            mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 72] = mem[_5091]
            mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 104 len ceil32(_5299)] = mem[_5091 + 32 len ceil32(_5299)]
            if ceil32(_5299) > _5299:
                mem[_5299 + _3695 + _2045 + _1136 + stor253.length.field_1 + 104] = 0
            return 32, mem[_3695 + _2045 + _1136 + stor253.length.field_1 + 72 len ceil32(_5299) + 32]
        s = 0
        idx = sub_d14bd096[arg1]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _2042 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = sub_d14bd096[arg1]
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[_2042]:
                    revert with 0, 50
                mem[t + _2042 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3596 = mem[64]
            if bool(stor253.length):
                if bool(stor253.length) == stor253.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor253.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                    _3764 = mem[96]
                    mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_3764 + _3596 + stor253.length.field_1 + 32] = '?typeid='
                    if ceil32(_3764) <= _3764:
                        _5220 = mem[_2042]
                        mem[_3764 + _3596 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                        if ceil32(_5220) <= _5220:
                            _6132 = mem[64]
                            mem[64] = _5220 + _3764 + _3596 + stor253.length.field_1 + 40
                            mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 40] = 32
                            _6340 = mem[_6132]
                            mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 72] = mem[_6132]
                            mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 104 len ceil32(_6340)] = mem[_6132 + 32 len ceil32(_6340)]
                            if ceil32(_6340) > _6340:
                                mem[_6340 + _5220 + _3764 + _3596 + stor253.length.field_1 + 104] = 0
                            return 32, mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 72 len ceil32(_6340) + 32]
                        mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 40] = 0
                        _6133 = mem[64]
                        mem[64] = _5220 + _3764 + _3596 + stor253.length.field_1 + 40
                        mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 40] = 32
                        _6341 = mem[_6133]
                        mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 72] = mem[_6133]
                        mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 104 len ceil32(_6341)] = mem[_6133 + 32 len ceil32(_6341)]
                        if ceil32(_6341) > _6341:
                            mem[_6341 + _5220 + _3764 + _3596 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_5220 + _3764 + _3596 + stor253.length.field_1 + 72 len ceil32(_6341) + 32]
                    _5221 = mem[_2042]
                    mem[_3764 + _3596 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                    if ceil32(_5221) <= _5221:
                        _6134 = mem[64]
                        mem[64] = _5221 + _3764 + _3596 + stor253.length.field_1 + 40
                        mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 40] = 32
                        _6342 = mem[_6134]
                        mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 72] = mem[_6134]
                        mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 104 len ceil32(_6342)] = mem[_6134 + 32 len ceil32(_6342)]
                        if ceil32(_6342) > _6342:
                            mem[_6342 + _5221 + _3764 + _3596 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 72 len ceil32(_6342) + 32]
                    mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 40] = 0
                    _6135 = mem[64]
                    mem[64] = _5221 + _3764 + _3596 + stor253.length.field_1 + 40
                    mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 40] = 32
                    _6343 = mem[_6135]
                    mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 72] = mem[_6135]
                    mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 104 len ceil32(_6343)] = mem[_6135 + 32 len ceil32(_6343)]
                    if ceil32(_6343) > _6343:
                        mem[_6343 + _5221 + _3764 + _3596 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5221 + _3764 + _3596 + stor253.length.field_1 + 72 len ceil32(_6343) + 32]
                if bool(stor253.length) != 1:
                    _3836 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_3836] = '?typeid='
                    if ceil32(_3836) <= _3836:
                        _5223 = mem[_2042]
                        mem[_3836 + 8 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                        if ceil32(_5223) <= _5223:
                            _6136 = mem[64]
                            mem[64] = _5223 + _3836 + 8
                            mem[_5223 + _3836 + 8] = 32
                            _6344 = mem[_6136]
                            mem[_5223 + _3836 + 40] = mem[_6136]
                            mem[_5223 + _3836 + 72 len ceil32(_6344)] = mem[_6136 + 32 len ceil32(_6344)]
                            if ceil32(_6344) > _6344:
                                mem[_6344 + _5223 + _3836 + 72] = 0
                            return 32, mem[_5223 + _3836 + 40 len ceil32(_6344) + 32]
                        mem[_5223 + _3836 + 8] = 0
                        _6137 = mem[64]
                        mem[64] = _5223 + _3836 + 8
                        mem[_5223 + _3836 + 8] = 32
                        _6345 = mem[_6137]
                        mem[_5223 + _3836 + 40] = mem[_6137]
                        mem[_5223 + _3836 + 72 len ceil32(_6345)] = mem[_6137 + 32 len ceil32(_6345)]
                        if ceil32(_6345) > _6345:
                            mem[_6345 + _5223 + _3836 + 72] = 0
                        return 32, mem[_5223 + _3836 + 40 len ceil32(_6345) + 32]
                    _5224 = mem[_2042]
                    mem[_3836 + 8 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                    if ceil32(_5224) <= _5224:
                        _6138 = mem[64]
                        mem[64] = _5224 + _3836 + 8
                        mem[_5224 + _3836 + 8] = 32
                        _6346 = mem[_6138]
                        mem[_5224 + _3836 + 40] = mem[_6138]
                        mem[_5224 + _3836 + 72 len ceil32(_6346)] = mem[_6138 + 32 len ceil32(_6346)]
                        if ceil32(_6346) > _6346:
                            mem[_6346 + _5224 + _3836 + 72] = 0
                        return 32, mem[_5224 + _3836 + 40 len ceil32(_6346) + 32]
                    mem[_5224 + _3836 + 8] = 0
                    _6139 = mem[64]
                    mem[64] = _5224 + _3836 + 8
                    mem[_5224 + _3836 + 8] = 32
                    _6347 = mem[_6139]
                    mem[_5224 + _3836 + 40] = mem[_6139]
                    mem[_5224 + _3836 + 72 len ceil32(_6347)] = mem[_6139 + 32 len ceil32(_6347)]
                    if ceil32(_6347) > _6347:
                        mem[_6347 + _5224 + _3836 + 72] = 0
                    return 32, mem[_5224 + _3836 + 40 len ceil32(_6347) + 32]
                mem[0] = 253
                idx = 0
                s = 0
                while idx < stor253.length.field_1:
                    mem[idx + _3596 + 32] = stor253[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _5052 = mem[96]
                mem[_3596 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_5052 + _3596 + stor253.length.field_1 + 32] = '?typeid='
                if ceil32(_5052) <= _5052:
                    _6264 = mem[_2042]
                    mem[_5052 + _3596 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                    if ceil32(_6264) <= _6264:
                        _6892 = mem[64]
                        mem[64] = _6264 + _5052 + _3596 + stor253.length.field_1 + 40
                        mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 40] = 32
                        _7076 = mem[_6892]
                        mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 72] = mem[_6892]
                        mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 104 len ceil32(_7076)] = mem[_6892 + 32 len ceil32(_7076)]
                        if ceil32(_7076) > _7076:
                            mem[_7076 + _6264 + _5052 + _3596 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 72 len ceil32(_7076) + 32]
                    mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 40] = 0
                    _6893 = mem[64]
                    mem[64] = _6264 + _5052 + _3596 + stor253.length.field_1 + 40
                    mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 40] = 32
                    _7077 = mem[_6893]
                    mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 72] = mem[_6893]
                    mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 104 len ceil32(_7077)] = mem[_6893 + 32 len ceil32(_7077)]
                    if ceil32(_7077) > _7077:
                        mem[_7077 + _6264 + _5052 + _3596 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_6264 + _5052 + _3596 + stor253.length.field_1 + 72 len ceil32(_7077) + 32]
                _6265 = mem[_2042]
                mem[_5052 + _3596 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_6265) <= _6265:
                    _6894 = mem[64]
                    mem[64] = _6265 + _5052 + _3596 + stor253.length.field_1 + 40
                    mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 40] = 32
                    _7078 = mem[_6894]
                    mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 72] = mem[_6894]
                    mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 104 len ceil32(_7078)] = mem[_6894 + 32 len ceil32(_7078)]
                    if ceil32(_7078) > _7078:
                        mem[_7078 + _6265 + _5052 + _3596 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 72 len ceil32(_7078) + 32]
                mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 40] = 0
                _6895 = mem[64]
                mem[64] = _6265 + _5052 + _3596 + stor253.length.field_1 + 40
                mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 40] = 32
                _7079 = mem[_6895]
                mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 72] = mem[_6895]
                mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 104 len ceil32(_7079)] = mem[_6895 + 32 len ceil32(_7079)]
                if ceil32(_7079) > _7079:
                    mem[_7079 + _6265 + _5052 + _3596 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6265 + _5052 + _3596 + stor253.length.field_1 + 72 len ceil32(_7079) + 32]
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor253.length):
                mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                _3837 = mem[96]
                mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + stor253.length.field_1 + 32] = '?typeid='
                if ceil32(mem[96]) <= mem[96]:
                    _5225 = mem[_2042]
                    mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                    if ceil32(_5225) <= _5225:
                        _6140 = mem[64]
                        mem[64] = _5225 + mem[96] + mem[64] + stor253.length.field_1 + 40
                        mem[_5225 + mem[96] + _3596 + stor253.length.field_1 + 40] = 32
                        _6348 = mem[_6140]
                        mem[_5225 + _3837 + _3596 + stor253.length.field_1 + 72] = mem[_6140]
                        mem[_5225 + _3837 + _3596 + stor253.length.field_1 + 104 len ceil32(_6348)] = mem[_6140 + 32 len ceil32(_6348)]
                        if ceil32(_6348) > _6348:
                            mem[_6348 + _5225 + _3837 + _3596 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_5225 + _3837 + _3596 + stor253.length.field_1 + 72 len ceil32(_6348) + 32]
                    mem[_5225 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
                    _6141 = mem[64]
                    mem[64] = _5225 + _3837 + _3596 + stor253.length.field_1 + 40
                    mem[_5225 + _3837 + _3596 + stor253.length.field_1 + 40] = 32
                    _6349 = mem[_6141]
                    mem[_5225 + _3837 + _3596 + stor253.length.field_1 + 72] = mem[_6141]
                    mem[_5225 + _3837 + _3596 + stor253.length.field_1 + 104 len ceil32(_6349)] = mem[_6141 + 32 len ceil32(_6349)]
                    if ceil32(_6349) > _6349:
                        mem[_6349 + _5225 + _3837 + _3596 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5225 + _3837 + _3596 + stor253.length.field_1 + 72 len ceil32(_6349) + 32]
                _5226 = mem[_2042]
                mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_5226) <= _5226:
                    _6142 = mem[64]
                    mem[64] = _5226 + mem[96] + mem[64] + stor253.length.field_1 + 40
                    mem[_5226 + mem[96] + _3596 + stor253.length.field_1 + 40] = 32
                    _6350 = mem[_6142]
                    mem[_5226 + _3837 + _3596 + stor253.length.field_1 + 72] = mem[_6142]
                    mem[_5226 + _3837 + _3596 + stor253.length.field_1 + 104 len ceil32(_6350)] = mem[_6142 + 32 len ceil32(_6350)]
                    if ceil32(_6350) > _6350:
                        mem[_6350 + _5226 + _3837 + _3596 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5226 + _3837 + _3596 + stor253.length.field_1 + 72 len ceil32(_6350) + 32]
                mem[_5226 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
                _6143 = mem[64]
                mem[64] = _5226 + mem[96] + mem[64] + stor253.length.field_1 + 40
                mem[_5226 + mem[96] + _3596 + stor253.length.field_1 + 40] = 32
                _6351 = mem[_6143]
                mem[_5226 + _3837 + _3596 + stor253.length.field_1 + 72] = mem[_6143]
                mem[_5226 + _3837 + _3596 + stor253.length.field_1 + 104 len ceil32(_6351)] = mem[_6143 + 32 len ceil32(_6351)]
                if ceil32(_6351) > _6351:
                    mem[_6351 + _5226 + _3837 + _3596 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5226 + _3837 + _3596 + stor253.length.field_1 + 72 len ceil32(_6351) + 32]
            if bool(stor253.length) != 1:
                _3860 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_3860] = '?typeid='
                if ceil32(_3860) <= _3860:
                    _5228 = mem[_2042]
                    mem[_3860 + 8 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                    if ceil32(_5228) <= _5228:
                        _6144 = mem[64]
                        mem[64] = _5228 + _3860 + 8
                        mem[_5228 + _3860 + 8] = 32
                        _6352 = mem[_6144]
                        mem[_5228 + _3860 + 40] = mem[_6144]
                        mem[_5228 + _3860 + 72 len ceil32(_6352)] = mem[_6144 + 32 len ceil32(_6352)]
                        if ceil32(_6352) > _6352:
                            mem[_6352 + _5228 + _3860 + 72] = 0
                        return 32, mem[_5228 + _3860 + 40 len ceil32(_6352) + 32]
                    mem[_5228 + _3860 + 8] = 0
                    _6145 = mem[64]
                    mem[64] = _5228 + _3860 + 8
                    mem[_5228 + _3860 + 8] = 32
                    _6353 = mem[_6145]
                    mem[_5228 + _3860 + 40] = mem[_6145]
                    mem[_5228 + _3860 + 72 len ceil32(_6353)] = mem[_6145 + 32 len ceil32(_6353)]
                    if ceil32(_6353) > _6353:
                        mem[_6353 + _5228 + _3860 + 72] = 0
                    return 32, mem[_5228 + _3860 + 40 len ceil32(_6353) + 32]
                _5229 = mem[_2042]
                mem[_3860 + 8 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_5229) <= _5229:
                    _6146 = mem[64]
                    mem[64] = _5229 + _3860 + 8
                    mem[_5229 + _3860 + 8] = 32
                    _6354 = mem[_6146]
                    mem[_5229 + _3860 + 40] = mem[_6146]
                    mem[_5229 + _3860 + 72 len ceil32(_6354)] = mem[_6146 + 32 len ceil32(_6354)]
                    if ceil32(_6354) > _6354:
                        mem[_6354 + _5229 + _3860 + 72] = 0
                    return 32, mem[_5229 + _3860 + 40 len ceil32(_6354) + 32]
                mem[_5229 + _3860 + 8] = 0
                _6147 = mem[64]
                mem[64] = _5229 + _3860 + 8
                mem[_5229 + _3860 + 8] = 32
                _6355 = mem[_6147]
                mem[_5229 + _3860 + 40] = mem[_6147]
                mem[_5229 + _3860 + 72 len ceil32(_6355)] = mem[_6147 + 32 len ceil32(_6355)]
                if ceil32(_6355) > _6355:
                    mem[_6355 + _5229 + _3860 + 72] = 0
                return 32, mem[_5229 + _3860 + 40 len ceil32(_6355) + 32]
            mem[0] = 253
            idx = 0
            s = 0
            while idx < stor253.length.field_1:
                mem[idx + _3596 + 32] = stor253[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _5053 = mem[96]
            mem[_3596 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_5053 + _3596 + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(_5053) <= _5053:
                _6274 = mem[_2042]
                mem[_5053 + _3596 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_6274) <= _6274:
                    _6912 = mem[64]
                    mem[64] = _6274 + _5053 + _3596 + stor253.length.field_1 + 40
                    mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 40] = 32
                    _7080 = mem[_6912]
                    mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 72] = mem[_6912]
                    mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 104 len ceil32(_7080)] = mem[_6912 + 32 len ceil32(_7080)]
                    if ceil32(_7080) > _7080:
                        mem[_7080 + _6274 + _5053 + _3596 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 72 len ceil32(_7080) + 32]
                mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 40] = 0
                _6913 = mem[64]
                mem[64] = _6274 + _5053 + _3596 + stor253.length.field_1 + 40
                mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 40] = 32
                _7081 = mem[_6913]
                mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 72] = mem[_6913]
                mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 104 len ceil32(_7081)] = mem[_6913 + 32 len ceil32(_7081)]
                if ceil32(_7081) > _7081:
                    mem[_7081 + _6274 + _5053 + _3596 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6274 + _5053 + _3596 + stor253.length.field_1 + 72 len ceil32(_7081) + 32]
            _6275 = mem[_2042]
            mem[_5053 + _3596 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
            if ceil32(_6275) <= _6275:
                _6914 = mem[64]
                mem[64] = _6275 + _5053 + _3596 + stor253.length.field_1 + 40
                mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 40] = 32
                _7082 = mem[_6914]
                mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 72] = mem[_6914]
                mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 104 len ceil32(_7082)] = mem[_6914 + 32 len ceil32(_7082)]
                if ceil32(_7082) > _7082:
                    mem[_7082 + _6275 + _5053 + _3596 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 72 len ceil32(_7082) + 32]
            mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 40] = 0
            _6915 = mem[64]
            mem[64] = _6275 + _5053 + _3596 + stor253.length.field_1 + 40
            mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 40] = 32
            _7083 = mem[_6915]
            mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 72] = mem[_6915]
            mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 104 len ceil32(_7083)] = mem[_6915 + 32 len ceil32(_7083)]
            if ceil32(_7083) > _7083:
                mem[_7083 + _6275 + _5053 + _3596 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6275 + _5053 + _3596 + stor253.length.field_1 + 72 len ceil32(_7083) + 32]
        mem[_2042 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = sub_d14bd096[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[_2042]:
                revert with 0, 50
            mem[t + _2042 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3597 = mem[64]
        if bool(stor253.length):
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor253.length):
                mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                _3766 = mem[96]
                mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_3766 + _3597 + stor253.length.field_1 + 32] = '?typeid='
                if ceil32(_3766) <= _3766:
                    _5230 = mem[_2042]
                    mem[_3766 + _3597 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                    if ceil32(_5230) <= _5230:
                        _6148 = mem[64]
                        mem[64] = _5230 + _3766 + _3597 + stor253.length.field_1 + 40
                        mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 40] = 32
                        _6356 = mem[_6148]
                        mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 72] = mem[_6148]
                        mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 104 len ceil32(_6356)] = mem[_6148 + 32 len ceil32(_6356)]
                        if ceil32(_6356) > _6356:
                            mem[_6356 + _5230 + _3766 + _3597 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 72 len ceil32(_6356) + 32]
                    mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 40] = 0
                    _6149 = mem[64]
                    mem[64] = _5230 + _3766 + _3597 + stor253.length.field_1 + 40
                    mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 40] = 32
                    _6357 = mem[_6149]
                    mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 72] = mem[_6149]
                    mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 104 len ceil32(_6357)] = mem[_6149 + 32 len ceil32(_6357)]
                    if ceil32(_6357) > _6357:
                        mem[_6357 + _5230 + _3766 + _3597 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5230 + _3766 + _3597 + stor253.length.field_1 + 72 len ceil32(_6357) + 32]
                _5231 = mem[_2042]
                mem[_3766 + _3597 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_5231) <= _5231:
                    _6150 = mem[64]
                    mem[64] = _5231 + _3766 + _3597 + stor253.length.field_1 + 40
                    mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 40] = 32
                    _6358 = mem[_6150]
                    mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 72] = mem[_6150]
                    mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 104 len ceil32(_6358)] = mem[_6150 + 32 len ceil32(_6358)]
                    if ceil32(_6358) > _6358:
                        mem[_6358 + _5231 + _3766 + _3597 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 72 len ceil32(_6358) + 32]
                mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 40] = 0
                _6151 = mem[64]
                mem[64] = _5231 + _3766 + _3597 + stor253.length.field_1 + 40
                mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 40] = 32
                _6359 = mem[_6151]
                mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 72] = mem[_6151]
                mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 104 len ceil32(_6359)] = mem[_6151 + 32 len ceil32(_6359)]
                if ceil32(_6359) > _6359:
                    mem[_6359 + _5231 + _3766 + _3597 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5231 + _3766 + _3597 + stor253.length.field_1 + 72 len ceil32(_6359) + 32]
            if bool(stor253.length) != 1:
                _3838 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_3838] = '?typeid='
                if ceil32(_3838) <= _3838:
                    _5233 = mem[_2042]
                    mem[_3838 + 8 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                    if ceil32(_5233) <= _5233:
                        _6152 = mem[64]
                        mem[64] = _5233 + _3838 + 8
                        mem[_5233 + _3838 + 8] = 32
                        _6360 = mem[_6152]
                        mem[_5233 + _3838 + 40] = mem[_6152]
                        mem[_5233 + _3838 + 72 len ceil32(_6360)] = mem[_6152 + 32 len ceil32(_6360)]
                        if ceil32(_6360) > _6360:
                            mem[_6360 + _5233 + _3838 + 72] = 0
                        return 32, mem[_5233 + _3838 + 40 len ceil32(_6360) + 32]
                    mem[_5233 + _3838 + 8] = 0
                    _6153 = mem[64]
                    mem[64] = _5233 + _3838 + 8
                    mem[_5233 + _3838 + 8] = 32
                    _6361 = mem[_6153]
                    mem[_5233 + _3838 + 40] = mem[_6153]
                    mem[_5233 + _3838 + 72 len ceil32(_6361)] = mem[_6153 + 32 len ceil32(_6361)]
                    if ceil32(_6361) > _6361:
                        mem[_6361 + _5233 + _3838 + 72] = 0
                    return 32, mem[_5233 + _3838 + 40 len ceil32(_6361) + 32]
                _5234 = mem[_2042]
                mem[_3838 + 8 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_5234) <= _5234:
                    _6154 = mem[64]
                    mem[64] = _5234 + _3838 + 8
                    mem[_5234 + _3838 + 8] = 32
                    _6362 = mem[_6154]
                    mem[_5234 + _3838 + 40] = mem[_6154]
                    mem[_5234 + _3838 + 72 len ceil32(_6362)] = mem[_6154 + 32 len ceil32(_6362)]
                    if ceil32(_6362) > _6362:
                        mem[_6362 + _5234 + _3838 + 72] = 0
                    return 32, mem[_5234 + _3838 + 40 len ceil32(_6362) + 32]
                mem[_5234 + _3838 + 8] = 0
                _6155 = mem[64]
                mem[64] = _5234 + _3838 + 8
                mem[_5234 + _3838 + 8] = 32
                _6363 = mem[_6155]
                mem[_5234 + _3838 + 40] = mem[_6155]
                mem[_5234 + _3838 + 72 len ceil32(_6363)] = mem[_6155 + 32 len ceil32(_6363)]
                if ceil32(_6363) > _6363:
                    mem[_6363 + _5234 + _3838 + 72] = 0
                return 32, mem[_5234 + _3838 + 40 len ceil32(_6363) + 32]
            mem[0] = 253
            idx = 0
            s = 0
            while idx < stor253.length.field_1:
                mem[idx + _3597 + 32] = stor253[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _5054 = mem[96]
            mem[_3597 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_5054 + _3597 + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(_5054) <= _5054:
                _6284 = mem[_2042]
                mem[_5054 + _3597 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_6284) <= _6284:
                    _6932 = mem[64]
                    mem[64] = _6284 + _5054 + _3597 + stor253.length.field_1 + 40
                    mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 40] = 32
                    _7084 = mem[_6932]
                    mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 72] = mem[_6932]
                    mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 104 len ceil32(_7084)] = mem[_6932 + 32 len ceil32(_7084)]
                    if ceil32(_7084) > _7084:
                        mem[_7084 + _6284 + _5054 + _3597 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 72 len ceil32(_7084) + 32]
                mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 40] = 0
                _6933 = mem[64]
                mem[64] = _6284 + _5054 + _3597 + stor253.length.field_1 + 40
                mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 40] = 32
                _7085 = mem[_6933]
                mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 72] = mem[_6933]
                mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 104 len ceil32(_7085)] = mem[_6933 + 32 len ceil32(_7085)]
                if ceil32(_7085) > _7085:
                    mem[_7085 + _6284 + _5054 + _3597 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6284 + _5054 + _3597 + stor253.length.field_1 + 72 len ceil32(_7085) + 32]
            _6285 = mem[_2042]
            mem[_5054 + _3597 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
            if ceil32(_6285) <= _6285:
                _6934 = mem[64]
                mem[64] = _6285 + _5054 + _3597 + stor253.length.field_1 + 40
                mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 40] = 32
                _7086 = mem[_6934]
                mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 72] = mem[_6934]
                mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 104 len ceil32(_7086)] = mem[_6934 + 32 len ceil32(_7086)]
                if ceil32(_7086) > _7086:
                    mem[_7086 + _6285 + _5054 + _3597 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 72 len ceil32(_7086) + 32]
            mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 40] = 0
            _6935 = mem[64]
            mem[64] = _6285 + _5054 + _3597 + stor253.length.field_1 + 40
            mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 40] = 32
            _7087 = mem[_6935]
            mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 72] = mem[_6935]
            mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 104 len ceil32(_7087)] = mem[_6935 + 32 len ceil32(_7087)]
            if ceil32(_7087) > _7087:
                mem[_7087 + _6285 + _5054 + _3597 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6285 + _5054 + _3597 + stor253.length.field_1 + 72 len ceil32(_7087) + 32]
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor253.length):
            mem[mem[64] + 32] = Mask(248, 8, stor253.length)
            _3839 = mem[96]
            mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(mem[96]) <= mem[96]:
                _5235 = mem[_2042]
                mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_5235) <= _5235:
                    _6156 = mem[64]
                    mem[64] = _5235 + mem[96] + mem[64] + stor253.length.field_1 + 40
                    mem[_5235 + mem[96] + _3597 + stor253.length.field_1 + 40] = 32
                    _6364 = mem[_6156]
                    mem[_5235 + _3839 + _3597 + stor253.length.field_1 + 72] = mem[_6156]
                    mem[_5235 + _3839 + _3597 + stor253.length.field_1 + 104 len ceil32(_6364)] = mem[_6156 + 32 len ceil32(_6364)]
                    if ceil32(_6364) > _6364:
                        mem[_6364 + _5235 + _3839 + _3597 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5235 + _3839 + _3597 + stor253.length.field_1 + 72 len ceil32(_6364) + 32]
                mem[_5235 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
                _6157 = mem[64]
                mem[64] = _5235 + _3839 + _3597 + stor253.length.field_1 + 40
                mem[_5235 + _3839 + _3597 + stor253.length.field_1 + 40] = 32
                _6365 = mem[_6157]
                mem[_5235 + _3839 + _3597 + stor253.length.field_1 + 72] = mem[_6157]
                mem[_5235 + _3839 + _3597 + stor253.length.field_1 + 104 len ceil32(_6365)] = mem[_6157 + 32 len ceil32(_6365)]
                if ceil32(_6365) > _6365:
                    mem[_6365 + _5235 + _3839 + _3597 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5235 + _3839 + _3597 + stor253.length.field_1 + 72 len ceil32(_6365) + 32]
            _5236 = mem[_2042]
            mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
            if ceil32(_5236) <= _5236:
                _6158 = mem[64]
                mem[64] = _5236 + mem[96] + mem[64] + stor253.length.field_1 + 40
                mem[_5236 + mem[96] + _3597 + stor253.length.field_1 + 40] = 32
                _6366 = mem[_6158]
                mem[_5236 + _3839 + _3597 + stor253.length.field_1 + 72] = mem[_6158]
                mem[_5236 + _3839 + _3597 + stor253.length.field_1 + 104 len ceil32(_6366)] = mem[_6158 + 32 len ceil32(_6366)]
                if ceil32(_6366) > _6366:
                    mem[_6366 + _5236 + _3839 + _3597 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5236 + _3839 + _3597 + stor253.length.field_1 + 72 len ceil32(_6366) + 32]
            mem[_5236 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
            _6159 = mem[64]
            mem[64] = _5236 + mem[96] + mem[64] + stor253.length.field_1 + 40
            mem[_5236 + mem[96] + _3597 + stor253.length.field_1 + 40] = 32
            _6367 = mem[_6159]
            mem[_5236 + _3839 + _3597 + stor253.length.field_1 + 72] = mem[_6159]
            mem[_5236 + _3839 + _3597 + stor253.length.field_1 + 104 len ceil32(_6367)] = mem[_6159 + 32 len ceil32(_6367)]
            if ceil32(_6367) > _6367:
                mem[_6367 + _5236 + _3839 + _3597 + stor253.length.field_1 + 104] = 0
            return 32, mem[_5236 + _3839 + _3597 + stor253.length.field_1 + 72 len ceil32(_6367) + 32]
        if bool(stor253.length) != 1:
            _3862 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_3862] = '?typeid='
            if ceil32(_3862) <= _3862:
                _5238 = mem[_2042]
                mem[_3862 + 8 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
                if ceil32(_5238) <= _5238:
                    _6160 = mem[64]
                    mem[64] = _5238 + _3862 + 8
                    mem[_5238 + _3862 + 8] = 32
                    _6368 = mem[_6160]
                    mem[_5238 + _3862 + 40] = mem[_6160]
                    mem[_5238 + _3862 + 72 len ceil32(_6368)] = mem[_6160 + 32 len ceil32(_6368)]
                    if ceil32(_6368) > _6368:
                        mem[_6368 + _5238 + _3862 + 72] = 0
                    return 32, mem[_5238 + _3862 + 40 len ceil32(_6368) + 32]
                mem[_5238 + _3862 + 8] = 0
                _6161 = mem[64]
                mem[64] = _5238 + _3862 + 8
                mem[_5238 + _3862 + 8] = 32
                _6369 = mem[_6161]
                mem[_5238 + _3862 + 40] = mem[_6161]
                mem[_5238 + _3862 + 72 len ceil32(_6369)] = mem[_6161 + 32 len ceil32(_6369)]
                if ceil32(_6369) > _6369:
                    mem[_6369 + _5238 + _3862 + 72] = 0
                return 32, mem[_5238 + _3862 + 40 len ceil32(_6369) + 32]
            _5239 = mem[_2042]
            mem[_3862 + 8 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
            if ceil32(_5239) <= _5239:
                _6162 = mem[64]
                mem[64] = _5239 + _3862 + 8
                mem[_5239 + _3862 + 8] = 32
                _6370 = mem[_6162]
                mem[_5239 + _3862 + 40] = mem[_6162]
                mem[_5239 + _3862 + 72 len ceil32(_6370)] = mem[_6162 + 32 len ceil32(_6370)]
                if ceil32(_6370) > _6370:
                    mem[_6370 + _5239 + _3862 + 72] = 0
                return 32, mem[_5239 + _3862 + 40 len ceil32(_6370) + 32]
            mem[_5239 + _3862 + 8] = 0
            _6163 = mem[64]
            mem[64] = _5239 + _3862 + 8
            mem[_5239 + _3862 + 8] = 32
            _6371 = mem[_6163]
            mem[_5239 + _3862 + 40] = mem[_6163]
            mem[_5239 + _3862 + 72 len ceil32(_6371)] = mem[_6163 + 32 len ceil32(_6371)]
            if ceil32(_6371) > _6371:
                mem[_6371 + _5239 + _3862 + 72] = 0
            return 32, mem[_5239 + _3862 + 40 len ceil32(_6371) + 32]
        mem[0] = 253
        idx = 0
        s = 0
        while idx < stor253.length.field_1:
            mem[idx + _3597 + 32] = stor253[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _5055 = mem[96]
        mem[_3597 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_5055 + _3597 + stor253.length.field_1 + 32] = '?typeid='
        if ceil32(_5055) <= _5055:
            _6294 = mem[_2042]
            mem[_5055 + _3597 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
            if ceil32(_6294) <= _6294:
                _6952 = mem[64]
                mem[64] = _6294 + _5055 + _3597 + stor253.length.field_1 + 40
                mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 40] = 32
                _7088 = mem[_6952]
                mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 72] = mem[_6952]
                mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 104 len ceil32(_7088)] = mem[_6952 + 32 len ceil32(_7088)]
                if ceil32(_7088) > _7088:
                    mem[_7088 + _6294 + _5055 + _3597 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 72 len ceil32(_7088) + 32]
            mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 40] = 0
            _6953 = mem[64]
            mem[64] = _6294 + _5055 + _3597 + stor253.length.field_1 + 40
            mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 40] = 32
            _7089 = mem[_6953]
            mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 72] = mem[_6953]
            mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 104 len ceil32(_7089)] = mem[_6953 + 32 len ceil32(_7089)]
            if ceil32(_7089) > _7089:
                mem[_7089 + _6294 + _5055 + _3597 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6294 + _5055 + _3597 + stor253.length.field_1 + 72 len ceil32(_7089) + 32]
        _6295 = mem[_2042]
        mem[_5055 + _3597 + stor253.length.field_1 + 40 len ceil32(mem[_2042])] = mem[_2042 + 32 len ceil32(mem[_2042])]
        if ceil32(_6295) <= _6295:
            _6954 = mem[64]
            mem[64] = _6295 + _5055 + _3597 + stor253.length.field_1 + 40
            mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 40] = 32
            _7090 = mem[_6954]
            mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 72] = mem[_6954]
            mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 104 len ceil32(_7090)] = mem[_6954 + 32 len ceil32(_7090)]
            if ceil32(_7090) > _7090:
                mem[_7090 + _6295 + _5055 + _3597 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 72 len ceil32(_7090) + 32]
        mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 40] = 0
        _6955 = mem[64]
        mem[64] = _6295 + _5055 + _3597 + stor253.length.field_1 + 40
        mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 40] = 32
        _7091 = mem[_6955]
        mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 72] = mem[_6955]
        mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 104 len ceil32(_7091)] = mem[_6955 + 32 len ceil32(_7091)]
        if ceil32(_7091) > _7091:
            mem[_7091 + _6295 + _5055 + _3597 + stor253.length.field_1 + 104] = 0
        return 32, mem[_6295 + _5055 + _3597 + stor253.length.field_1 + 72 len ceil32(_7091) + 32]
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
    if not sub_d14bd096[arg1]:
        _1119 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1119] = 1
        mem[_1119 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _1137 = mem[64]
        if bool(stor253.length):
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor253.length):
                mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                _1218 = mem[96]
                mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1218 + _1137 + stor253.length.field_1 + 32] = '?typeid='
                mem[_1218 + _1137 + stor253.length.field_1 + 40] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[_1218 + _1137 + stor253.length.field_1 + 41] = 0
                if ceil32(_1218) <= _1218:
                    _3617 = mem[64]
                    mem[64] = _1218 + _1137 + stor253.length.field_1 + 41
                    mem[_1218 + _1137 + stor253.length.field_1 + 41] = 32
                    _3789 = mem[_3617]
                    mem[_1218 + _1137 + stor253.length.field_1 + 73] = mem[_3617]
                    mem[_1218 + _1137 + stor253.length.field_1 + 105 len ceil32(_3789)] = mem[_3617 + 32 len ceil32(_3789)]
                    if ceil32(_3789) > _3789:
                        mem[_3789 + _1218 + _1137 + stor253.length.field_1 + 105] = 0
                    return 32, mem[_1218 + _1137 + stor253.length.field_1 + 73 len ceil32(_3789) + 32]
                _3619 = mem[64]
                mem[64] = _1218 + _1137 + stor253.length.field_1 + 41
                mem[_1218 + _1137 + stor253.length.field_1 + 41] = 32
                _3791 = mem[_3619]
                mem[_1218 + _1137 + stor253.length.field_1 + 73] = mem[_3619]
                mem[_1218 + _1137 + stor253.length.field_1 + 105 len ceil32(_3791)] = mem[_3619 + 32 len ceil32(_3791)]
                if ceil32(_3791) > _3791:
                    mem[_3791 + _1218 + _1137 + stor253.length.field_1 + 105] = 0
                return 32, mem[_1218 + _1137 + stor253.length.field_1 + 73 len ceil32(_3791) + 32]
            if bool(stor253.length) != 1:
                _1228 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1228] = '?typeid='
                mem[_1228 + 8] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[_1228 + 9] = 0
                if ceil32(_1228) <= _1228:
                    _3621 = mem[64]
                    mem[64] = _1228 + 9
                    mem[_1228 + 9] = 32
                    _3793 = mem[_3621]
                    mem[_1228 + 41] = mem[_3621]
                    mem[_1228 + 73 len ceil32(_3793)] = mem[_3621 + 32 len ceil32(_3793)]
                    if ceil32(_3793) > _3793:
                        mem[_3793 + _1228 + 73] = 0
                    return 32, mem[_1228 + 41 len ceil32(_3793) + 32]
                _3623 = mem[64]
                mem[64] = _1228 + 9
                mem[_1228 + 9] = 32
                _3795 = mem[_3623]
                mem[_1228 + 41] = mem[_3623]
                mem[_1228 + 73 len ceil32(_3795)] = mem[_3623 + 32 len ceil32(_3795)]
                if ceil32(_3795) > _3795:
                    mem[_3795 + _1228 + 73] = 0
                return 32, mem[_1228 + 41 len ceil32(_3795) + 32]
            mem[0] = 253
            idx = 0
            s = 0
            while idx < stor253.length.field_1:
                mem[idx + _1137 + 32] = stor253[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2046 = mem[96]
            mem[_1137 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_2046 + _1137 + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(_2046) <= _2046:
                _3704 = mem[_1119]
                mem[_2046 + _1137 + stor253.length.field_1 + 40 len ceil32(mem[_1119])] = mem[_1119 + 32 len ceil32(mem[_1119])]
                if ceil32(_3704) <= _3704:
                    _5108 = mem[64]
                    mem[64] = _3704 + _2046 + _1137 + stor253.length.field_1 + 40
                    mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 40] = 32
                    _5300 = mem[_5108]
                    mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 72] = mem[_5108]
                    mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 104 len ceil32(_5300)] = mem[_5108 + 32 len ceil32(_5300)]
                    if ceil32(_5300) > _5300:
                        mem[_5300 + _3704 + _2046 + _1137 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 72 len ceil32(_5300) + 32]
                mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 40] = 0
                _5109 = mem[64]
                mem[64] = _3704 + _2046 + _1137 + stor253.length.field_1 + 40
                mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 40] = 32
                _5301 = mem[_5109]
                mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 72] = mem[_5109]
                mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 104 len ceil32(_5301)] = mem[_5109 + 32 len ceil32(_5301)]
                if ceil32(_5301) > _5301:
                    mem[_5301 + _3704 + _2046 + _1137 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3704 + _2046 + _1137 + stor253.length.field_1 + 72 len ceil32(_5301) + 32]
            _3705 = mem[_1119]
            mem[_2046 + _1137 + stor253.length.field_1 + 40 len ceil32(mem[_1119])] = mem[_1119 + 32 len ceil32(mem[_1119])]
            if ceil32(_3705) <= _3705:
                _5110 = mem[64]
                mem[64] = _3705 + _2046 + _1137 + stor253.length.field_1 + 40
                mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 40] = 32
                _5302 = mem[_5110]
                mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 72] = mem[_5110]
                mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 104 len ceil32(_5302)] = mem[_5110 + 32 len ceil32(_5302)]
                if ceil32(_5302) > _5302:
                    mem[_5302 + _3705 + _2046 + _1137 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 72 len ceil32(_5302) + 32]
            mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 40] = 0
            _5111 = mem[64]
            mem[64] = _3705 + _2046 + _1137 + stor253.length.field_1 + 40
            mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 40] = 32
            _5303 = mem[_5111]
            mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 72] = mem[_5111]
            mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 104 len ceil32(_5303)] = mem[_5111 + 32 len ceil32(_5303)]
            if ceil32(_5303) > _5303:
                mem[_5303 + _3705 + _2046 + _1137 + stor253.length.field_1 + 104] = 0
            return 32, mem[_3705 + _2046 + _1137 + stor253.length.field_1 + 72 len ceil32(_5303) + 32]
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor253.length):
            mem[mem[64] + 32] = Mask(248, 8, stor253.length)
            _1229 = mem[96]
            mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor253.length.field_1 + 32] = '?typeid='
            mem[mem[96] + mem[64] + stor253.length.field_1 + 40] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[mem[96] + mem[64] + stor253.length.field_1 + 41] = 0
            if ceil32(mem[96]) <= mem[96]:
                _3625 = mem[64]
                mem[64] = mem[96] + mem[64] + stor253.length.field_1 + 41
                mem[mem[96] + _1137 + stor253.length.field_1 + 41] = 32
                _3797 = mem[_3625]
                mem[_1229 + _1137 + stor253.length.field_1 + 73] = mem[_3625]
                mem[_1229 + _1137 + stor253.length.field_1 + 105 len ceil32(_3797)] = mem[_3625 + 32 len ceil32(_3797)]
                if ceil32(_3797) > _3797:
                    mem[_3797 + _1229 + _1137 + stor253.length.field_1 + 105] = 0
                return 32, mem[_1229 + _1137 + stor253.length.field_1 + 73 len ceil32(_3797) + 32]
            _3627 = mem[64]
            mem[64] = mem[96] + mem[64] + stor253.length.field_1 + 41
            mem[mem[96] + _1137 + stor253.length.field_1 + 41] = 32
            _3799 = mem[_3627]
            mem[_1229 + _1137 + stor253.length.field_1 + 73] = mem[_3627]
            mem[_1229 + _1137 + stor253.length.field_1 + 105 len ceil32(_3799)] = mem[_3627 + 32 len ceil32(_3799)]
            if ceil32(_3799) > _3799:
                mem[_3799 + _1229 + _1137 + stor253.length.field_1 + 105] = 0
            return 32, mem[_1229 + _1137 + stor253.length.field_1 + 73 len ceil32(_3799) + 32]
        if bool(stor253.length) != 1:
            _1241 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1241] = '?typeid='
            mem[_1241 + 8] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[_1241 + 9] = 0
            if ceil32(_1241) <= _1241:
                _3629 = mem[64]
                mem[64] = _1241 + 9
                mem[_1241 + 9] = 32
                _3801 = mem[_3629]
                mem[_1241 + 41] = mem[_3629]
                mem[_1241 + 73 len ceil32(_3801)] = mem[_3629 + 32 len ceil32(_3801)]
                if ceil32(_3801) > _3801:
                    mem[_3801 + _1241 + 73] = 0
                return 32, mem[_1241 + 41 len ceil32(_3801) + 32]
            _3631 = mem[64]
            mem[64] = _1241 + 9
            mem[_1241 + 9] = 32
            _3803 = mem[_3631]
            mem[_1241 + 41] = mem[_3631]
            mem[_1241 + 73 len ceil32(_3803)] = mem[_3631 + 32 len ceil32(_3803)]
            if ceil32(_3803) > _3803:
                mem[_3803 + _1241 + 73] = 0
            return 32, mem[_1241 + 41 len ceil32(_3803) + 32]
        mem[0] = 253
        idx = 0
        s = 0
        while idx < stor253.length.field_1:
            mem[idx + _1137 + 32] = stor253[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2047 = mem[96]
        mem[_1137 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_2047 + _1137 + stor253.length.field_1 + 32] = '?typeid='
        if ceil32(_2047) <= _2047:
            _3714 = mem[_1119]
            mem[_2047 + _1137 + stor253.length.field_1 + 40 len ceil32(mem[_1119])] = mem[_1119 + 32 len ceil32(mem[_1119])]
            if ceil32(_3714) <= _3714:
                _5128 = mem[64]
                mem[64] = _3714 + _2047 + _1137 + stor253.length.field_1 + 40
                mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 40] = 32
                _5304 = mem[_5128]
                mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 72] = mem[_5128]
                mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 104 len ceil32(_5304)] = mem[_5128 + 32 len ceil32(_5304)]
                if ceil32(_5304) > _5304:
                    mem[_5304 + _3714 + _2047 + _1137 + stor253.length.field_1 + 104] = 0
                return 32, mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 72 len ceil32(_5304) + 32]
            mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 40] = 0
            _5129 = mem[64]
            mem[64] = _3714 + _2047 + _1137 + stor253.length.field_1 + 40
            mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 40] = 32
            _5305 = mem[_5129]
            mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 72] = mem[_5129]
            mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 104 len ceil32(_5305)] = mem[_5129 + 32 len ceil32(_5305)]
            if ceil32(_5305) > _5305:
                mem[_5305 + _3714 + _2047 + _1137 + stor253.length.field_1 + 104] = 0
            return 32, mem[_3714 + _2047 + _1137 + stor253.length.field_1 + 72 len ceil32(_5305) + 32]
        _3715 = mem[_1119]
        mem[_2047 + _1137 + stor253.length.field_1 + 40 len ceil32(mem[_1119])] = mem[_1119 + 32 len ceil32(mem[_1119])]
        if ceil32(_3715) <= _3715:
            _5130 = mem[64]
            mem[64] = _3715 + _2047 + _1137 + stor253.length.field_1 + 40
            mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 40] = 32
            _5306 = mem[_5130]
            mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 72] = mem[_5130]
            mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 104 len ceil32(_5306)] = mem[_5130 + 32 len ceil32(_5306)]
            if ceil32(_5306) > _5306:
                mem[_5306 + _3715 + _2047 + _1137 + stor253.length.field_1 + 104] = 0
            return 32, mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 72 len ceil32(_5306) + 32]
        mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 40] = 0
        _5131 = mem[64]
        mem[64] = _3715 + _2047 + _1137 + stor253.length.field_1 + 40
        mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 40] = 32
        _5307 = mem[_5131]
        mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 72] = mem[_5131]
        mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 104 len ceil32(_5307)] = mem[_5131 + 32 len ceil32(_5307)]
        if ceil32(_5307) > _5307:
            mem[_5307 + _3715 + _2047 + _1137 + stor253.length.field_1 + 104] = 0
        return 32, mem[_3715 + _2047 + _1137 + stor253.length.field_1 + 72 len ceil32(_5307) + 32]
    s = 0
    idx = sub_d14bd096[arg1]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _2043 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = sub_d14bd096[arg1]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[_2043]:
                revert with 0, 50
            mem[t + _2043 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3598 = mem[64]
        if bool(stor253.length):
            if bool(stor253.length) == stor253.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor253.length):
                mem[mem[64] + 32] = Mask(248, 8, stor253.length)
                _3784 = mem[96]
                mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_3784 + _3598 + stor253.length.field_1 + 32] = '?typeid='
                if ceil32(_3784) <= _3784:
                    _5248 = mem[_2043]
                    mem[_3784 + _3598 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                    if ceil32(_5248) <= _5248:
                        _6180 = mem[64]
                        mem[64] = _5248 + _3784 + _3598 + stor253.length.field_1 + 40
                        mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 40] = 32
                        _6372 = mem[_6180]
                        mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 72] = mem[_6180]
                        mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 104 len ceil32(_6372)] = mem[_6180 + 32 len ceil32(_6372)]
                        if ceil32(_6372) > _6372:
                            mem[_6372 + _5248 + _3784 + _3598 + stor253.length.field_1 + 104] = 0
                        return 32, mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 72 len ceil32(_6372) + 32]
                    mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 40] = 0
                    _6181 = mem[64]
                    mem[64] = _5248 + _3784 + _3598 + stor253.length.field_1 + 40
                    mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 40] = 32
                    _6373 = mem[_6181]
                    mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 72] = mem[_6181]
                    mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 104 len ceil32(_6373)] = mem[_6181 + 32 len ceil32(_6373)]
                    if ceil32(_6373) > _6373:
                        mem[_6373 + _5248 + _3784 + _3598 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5248 + _3784 + _3598 + stor253.length.field_1 + 72 len ceil32(_6373) + 32]
                _5249 = mem[_2043]
                mem[_3784 + _3598 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                if ceil32(_5249) <= _5249:
                    _6182 = mem[64]
                    mem[64] = _5249 + _3784 + _3598 + stor253.length.field_1 + 40
                    mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 40] = 32
                    _6374 = mem[_6182]
                    mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 72] = mem[_6182]
                    mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 104 len ceil32(_6374)] = mem[_6182 + 32 len ceil32(_6374)]
                    if ceil32(_6374) > _6374:
                        mem[_6374 + _5249 + _3784 + _3598 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 72 len ceil32(_6374) + 32]
                mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 40] = 0
                _6183 = mem[64]
                mem[64] = _5249 + _3784 + _3598 + stor253.length.field_1 + 40
                mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 40] = 32
                _6375 = mem[_6183]
                mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 72] = mem[_6183]
                mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 104 len ceil32(_6375)] = mem[_6183 + 32 len ceil32(_6375)]
                if ceil32(_6375) > _6375:
                    mem[_6375 + _5249 + _3784 + _3598 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5249 + _3784 + _3598 + stor253.length.field_1 + 72 len ceil32(_6375) + 32]
            if bool(stor253.length) != 1:
                _3844 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_3844] = '?typeid='
                if ceil32(_3844) <= _3844:
                    _5251 = mem[_2043]
                    mem[_3844 + 8 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                    if ceil32(_5251) <= _5251:
                        _6184 = mem[64]
                        mem[64] = _5251 + _3844 + 8
                        mem[_5251 + _3844 + 8] = 32
                        _6376 = mem[_6184]
                        mem[_5251 + _3844 + 40] = mem[_6184]
                        mem[_5251 + _3844 + 72 len ceil32(_6376)] = mem[_6184 + 32 len ceil32(_6376)]
                        if ceil32(_6376) > _6376:
                            mem[_6376 + _5251 + _3844 + 72] = 0
                        return 32, mem[_5251 + _3844 + 40 len ceil32(_6376) + 32]
                    mem[_5251 + _3844 + 8] = 0
                    _6185 = mem[64]
                    mem[64] = _5251 + _3844 + 8
                    mem[_5251 + _3844 + 8] = 32
                    _6377 = mem[_6185]
                    mem[_5251 + _3844 + 40] = mem[_6185]
                    mem[_5251 + _3844 + 72 len ceil32(_6377)] = mem[_6185 + 32 len ceil32(_6377)]
                    if ceil32(_6377) > _6377:
                        mem[_6377 + _5251 + _3844 + 72] = 0
                    return 32, mem[_5251 + _3844 + 40 len ceil32(_6377) + 32]
                _5252 = mem[_2043]
                mem[_3844 + 8 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                if ceil32(_5252) <= _5252:
                    _6186 = mem[64]
                    mem[64] = _5252 + _3844 + 8
                    mem[_5252 + _3844 + 8] = 32
                    _6378 = mem[_6186]
                    mem[_5252 + _3844 + 40] = mem[_6186]
                    mem[_5252 + _3844 + 72 len ceil32(_6378)] = mem[_6186 + 32 len ceil32(_6378)]
                    if ceil32(_6378) > _6378:
                        mem[_6378 + _5252 + _3844 + 72] = 0
                    return 32, mem[_5252 + _3844 + 40 len ceil32(_6378) + 32]
                mem[_5252 + _3844 + 8] = 0
                _6187 = mem[64]
                mem[64] = _5252 + _3844 + 8
                mem[_5252 + _3844 + 8] = 32
                _6379 = mem[_6187]
                mem[_5252 + _3844 + 40] = mem[_6187]
                mem[_5252 + _3844 + 72 len ceil32(_6379)] = mem[_6187 + 32 len ceil32(_6379)]
                if ceil32(_6379) > _6379:
                    mem[_6379 + _5252 + _3844 + 72] = 0
                return 32, mem[_5252 + _3844 + 40 len ceil32(_6379) + 32]
            mem[0] = 253
            idx = 0
            s = 0
            while idx < stor253.length.field_1:
                mem[idx + _3598 + 32] = stor253[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _5056 = mem[96]
            mem[_3598 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_5056 + _3598 + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(_5056) <= _5056:
                _6304 = mem[_2043]
                mem[_5056 + _3598 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                if ceil32(_6304) <= _6304:
                    _6972 = mem[64]
                    mem[64] = _6304 + _5056 + _3598 + stor253.length.field_1 + 40
                    mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 40] = 32
                    _7092 = mem[_6972]
                    mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 72] = mem[_6972]
                    mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 104 len ceil32(_7092)] = mem[_6972 + 32 len ceil32(_7092)]
                    if ceil32(_7092) > _7092:
                        mem[_7092 + _6304 + _5056 + _3598 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 72 len ceil32(_7092) + 32]
                mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 40] = 0
                _6973 = mem[64]
                mem[64] = _6304 + _5056 + _3598 + stor253.length.field_1 + 40
                mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 40] = 32
                _7093 = mem[_6973]
                mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 72] = mem[_6973]
                mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 104 len ceil32(_7093)] = mem[_6973 + 32 len ceil32(_7093)]
                if ceil32(_7093) > _7093:
                    mem[_7093 + _6304 + _5056 + _3598 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6304 + _5056 + _3598 + stor253.length.field_1 + 72 len ceil32(_7093) + 32]
            _6305 = mem[_2043]
            mem[_5056 + _3598 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_6305) <= _6305:
                _6974 = mem[64]
                mem[64] = _6305 + _5056 + _3598 + stor253.length.field_1 + 40
                mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 40] = 32
                _7094 = mem[_6974]
                mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 72] = mem[_6974]
                mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 104 len ceil32(_7094)] = mem[_6974 + 32 len ceil32(_7094)]
                if ceil32(_7094) > _7094:
                    mem[_7094 + _6305 + _5056 + _3598 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 72 len ceil32(_7094) + 32]
            mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 40] = 0
            _6975 = mem[64]
            mem[64] = _6305 + _5056 + _3598 + stor253.length.field_1 + 40
            mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 40] = 32
            _7095 = mem[_6975]
            mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 72] = mem[_6975]
            mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 104 len ceil32(_7095)] = mem[_6975 + 32 len ceil32(_7095)]
            if ceil32(_7095) > _7095:
                mem[_7095 + _6305 + _5056 + _3598 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6305 + _5056 + _3598 + stor253.length.field_1 + 72 len ceil32(_7095) + 32]
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor253.length):
            mem[mem[64] + 32] = Mask(248, 8, stor253.length)
            _3845 = mem[96]
            mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(mem[96]) <= mem[96]:
                _5253 = mem[_2043]
                mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                if ceil32(_5253) <= _5253:
                    _6188 = mem[64]
                    mem[64] = _5253 + mem[96] + mem[64] + stor253.length.field_1 + 40
                    mem[_5253 + mem[96] + _3598 + stor253.length.field_1 + 40] = 32
                    _6380 = mem[_6188]
                    mem[_5253 + _3845 + _3598 + stor253.length.field_1 + 72] = mem[_6188]
                    mem[_5253 + _3845 + _3598 + stor253.length.field_1 + 104 len ceil32(_6380)] = mem[_6188 + 32 len ceil32(_6380)]
                    if ceil32(_6380) > _6380:
                        mem[_6380 + _5253 + _3845 + _3598 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5253 + _3845 + _3598 + stor253.length.field_1 + 72 len ceil32(_6380) + 32]
                mem[_5253 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
                _6189 = mem[64]
                mem[64] = _5253 + mem[96] + mem[64] + stor253.length.field_1 + 40
                mem[_5253 + mem[96] + _3598 + stor253.length.field_1 + 40] = 32
                _6381 = mem[_6189]
                mem[_5253 + _3845 + _3598 + stor253.length.field_1 + 72] = mem[_6189]
                mem[_5253 + _3845 + _3598 + stor253.length.field_1 + 104 len ceil32(_6381)] = mem[_6189 + 32 len ceil32(_6381)]
                if ceil32(_6381) > _6381:
                    mem[_6381 + _5253 + _3845 + _3598 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5253 + _3845 + _3598 + stor253.length.field_1 + 72 len ceil32(_6381) + 32]
            _5254 = mem[_2043]
            mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_5254) <= _5254:
                _6190 = mem[64]
                mem[64] = _5254 + mem[96] + mem[64] + stor253.length.field_1 + 40
                mem[_5254 + mem[96] + _3598 + stor253.length.field_1 + 40] = 32
                _6382 = mem[_6190]
                mem[_5254 + _3845 + _3598 + stor253.length.field_1 + 72] = mem[_6190]
                mem[_5254 + _3845 + _3598 + stor253.length.field_1 + 104 len ceil32(_6382)] = mem[_6190 + 32 len ceil32(_6382)]
                if ceil32(_6382) > _6382:
                    mem[_6382 + _5254 + _3845 + _3598 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5254 + _3845 + _3598 + stor253.length.field_1 + 72 len ceil32(_6382) + 32]
            mem[_5254 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
            _6191 = mem[64]
            mem[64] = _5254 + mem[96] + mem[64] + stor253.length.field_1 + 40
            mem[_5254 + mem[96] + _3598 + stor253.length.field_1 + 40] = 32
            _6383 = mem[_6191]
            mem[_5254 + _3845 + _3598 + stor253.length.field_1 + 72] = mem[_6191]
            mem[_5254 + _3845 + _3598 + stor253.length.field_1 + 104 len ceil32(_6383)] = mem[_6191 + 32 len ceil32(_6383)]
            if ceil32(_6383) > _6383:
                mem[_6383 + _5254 + _3845 + _3598 + stor253.length.field_1 + 104] = 0
            return 32, mem[_5254 + _3845 + _3598 + stor253.length.field_1 + 72 len ceil32(_6383) + 32]
        if bool(stor253.length) != 1:
            _3864 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_3864] = '?typeid='
            if ceil32(_3864) <= _3864:
                _5256 = mem[_2043]
                mem[_3864 + 8 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                if ceil32(_5256) <= _5256:
                    _6192 = mem[64]
                    mem[64] = _5256 + _3864 + 8
                    mem[_5256 + _3864 + 8] = 32
                    _6384 = mem[_6192]
                    mem[_5256 + _3864 + 40] = mem[_6192]
                    mem[_5256 + _3864 + 72 len ceil32(_6384)] = mem[_6192 + 32 len ceil32(_6384)]
                    if ceil32(_6384) > _6384:
                        mem[_6384 + _5256 + _3864 + 72] = 0
                    return 32, mem[_5256 + _3864 + 40 len ceil32(_6384) + 32]
                mem[_5256 + _3864 + 8] = 0
                _6193 = mem[64]
                mem[64] = _5256 + _3864 + 8
                mem[_5256 + _3864 + 8] = 32
                _6385 = mem[_6193]
                mem[_5256 + _3864 + 40] = mem[_6193]
                mem[_5256 + _3864 + 72 len ceil32(_6385)] = mem[_6193 + 32 len ceil32(_6385)]
                if ceil32(_6385) > _6385:
                    mem[_6385 + _5256 + _3864 + 72] = 0
                return 32, mem[_5256 + _3864 + 40 len ceil32(_6385) + 32]
            _5257 = mem[_2043]
            mem[_3864 + 8 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_5257) <= _5257:
                _6194 = mem[64]
                mem[64] = _5257 + _3864 + 8
                mem[_5257 + _3864 + 8] = 32
                _6386 = mem[_6194]
                mem[_5257 + _3864 + 40] = mem[_6194]
                mem[_5257 + _3864 + 72 len ceil32(_6386)] = mem[_6194 + 32 len ceil32(_6386)]
                if ceil32(_6386) > _6386:
                    mem[_6386 + _5257 + _3864 + 72] = 0
                return 32, mem[_5257 + _3864 + 40 len ceil32(_6386) + 32]
            mem[_5257 + _3864 + 8] = 0
            _6195 = mem[64]
            mem[64] = _5257 + _3864 + 8
            mem[_5257 + _3864 + 8] = 32
            _6387 = mem[_6195]
            mem[_5257 + _3864 + 40] = mem[_6195]
            mem[_5257 + _3864 + 72 len ceil32(_6387)] = mem[_6195 + 32 len ceil32(_6387)]
            if ceil32(_6387) > _6387:
                mem[_6387 + _5257 + _3864 + 72] = 0
            return 32, mem[_5257 + _3864 + 40 len ceil32(_6387) + 32]
        mem[0] = 253
        idx = 0
        s = 0
        while idx < stor253.length.field_1:
            mem[idx + _3598 + 32] = stor253[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _5057 = mem[96]
        mem[_3598 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_5057 + _3598 + stor253.length.field_1 + 32] = '?typeid='
        if ceil32(_5057) <= _5057:
            _6314 = mem[_2043]
            mem[_5057 + _3598 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_6314) <= _6314:
                _6992 = mem[64]
                mem[64] = _6314 + _5057 + _3598 + stor253.length.field_1 + 40
                mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 40] = 32
                _7096 = mem[_6992]
                mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 72] = mem[_6992]
                mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 104 len ceil32(_7096)] = mem[_6992 + 32 len ceil32(_7096)]
                if ceil32(_7096) > _7096:
                    mem[_7096 + _6314 + _5057 + _3598 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 72 len ceil32(_7096) + 32]
            mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 40] = 0
            _6993 = mem[64]
            mem[64] = _6314 + _5057 + _3598 + stor253.length.field_1 + 40
            mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 40] = 32
            _7097 = mem[_6993]
            mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 72] = mem[_6993]
            mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 104 len ceil32(_7097)] = mem[_6993 + 32 len ceil32(_7097)]
            if ceil32(_7097) > _7097:
                mem[_7097 + _6314 + _5057 + _3598 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6314 + _5057 + _3598 + stor253.length.field_1 + 72 len ceil32(_7097) + 32]
        _6315 = mem[_2043]
        mem[_5057 + _3598 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
        if ceil32(_6315) <= _6315:
            _6994 = mem[64]
            mem[64] = _6315 + _5057 + _3598 + stor253.length.field_1 + 40
            mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 40] = 32
            _7098 = mem[_6994]
            mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 72] = mem[_6994]
            mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 104 len ceil32(_7098)] = mem[_6994 + 32 len ceil32(_7098)]
            if ceil32(_7098) > _7098:
                mem[_7098 + _6315 + _5057 + _3598 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 72 len ceil32(_7098) + 32]
        mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 40] = 0
        _6995 = mem[64]
        mem[64] = _6315 + _5057 + _3598 + stor253.length.field_1 + 40
        mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 40] = 32
        _7099 = mem[_6995]
        mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 72] = mem[_6995]
        mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 104 len ceil32(_7099)] = mem[_6995 + 32 len ceil32(_7099)]
        if ceil32(_7099) > _7099:
            mem[_7099 + _6315 + _5057 + _3598 + stor253.length.field_1 + 104] = 0
        return 32, mem[_6315 + _5057 + _3598 + stor253.length.field_1 + 72 len ceil32(_7099) + 32]
    mem[_2043 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = sub_d14bd096[arg1]
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[_2043]:
            revert with 0, 50
        mem[t + _2043 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _3599 = mem[64]
    if bool(stor253.length):
        if bool(stor253.length) == stor253.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor253.length):
            mem[mem[64] + 32] = Mask(248, 8, stor253.length)
            _3786 = mem[96]
            mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_3786 + _3599 + stor253.length.field_1 + 32] = '?typeid='
            if ceil32(_3786) <= _3786:
                _5258 = mem[_2043]
                mem[_3786 + _3599 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                if ceil32(_5258) <= _5258:
                    _6196 = mem[64]
                    mem[64] = _5258 + _3786 + _3599 + stor253.length.field_1 + 40
                    mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 40] = 32
                    _6388 = mem[_6196]
                    mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 72] = mem[_6196]
                    mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 104 len ceil32(_6388)] = mem[_6196 + 32 len ceil32(_6388)]
                    if ceil32(_6388) > _6388:
                        mem[_6388 + _5258 + _3786 + _3599 + stor253.length.field_1 + 104] = 0
                    return 32, mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 72 len ceil32(_6388) + 32]
                mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 40] = 0
                _6197 = mem[64]
                mem[64] = _5258 + _3786 + _3599 + stor253.length.field_1 + 40
                mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 40] = 32
                _6389 = mem[_6197]
                mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 72] = mem[_6197]
                mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 104 len ceil32(_6389)] = mem[_6197 + 32 len ceil32(_6389)]
                if ceil32(_6389) > _6389:
                    mem[_6389 + _5258 + _3786 + _3599 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5258 + _3786 + _3599 + stor253.length.field_1 + 72 len ceil32(_6389) + 32]
            _5259 = mem[_2043]
            mem[_3786 + _3599 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_5259) <= _5259:
                _6198 = mem[64]
                mem[64] = _5259 + _3786 + _3599 + stor253.length.field_1 + 40
                mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 40] = 32
                _6390 = mem[_6198]
                mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 72] = mem[_6198]
                mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 104 len ceil32(_6390)] = mem[_6198 + 32 len ceil32(_6390)]
                if ceil32(_6390) > _6390:
                    mem[_6390 + _5259 + _3786 + _3599 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 72 len ceil32(_6390) + 32]
            mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 40] = 0
            _6199 = mem[64]
            mem[64] = _5259 + _3786 + _3599 + stor253.length.field_1 + 40
            mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 40] = 32
            _6391 = mem[_6199]
            mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 72] = mem[_6199]
            mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 104 len ceil32(_6391)] = mem[_6199 + 32 len ceil32(_6391)]
            if ceil32(_6391) > _6391:
                mem[_6391 + _5259 + _3786 + _3599 + stor253.length.field_1 + 104] = 0
            return 32, mem[_5259 + _3786 + _3599 + stor253.length.field_1 + 72 len ceil32(_6391) + 32]
        if bool(stor253.length) != 1:
            _3846 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_3846] = '?typeid='
            if ceil32(_3846) <= _3846:
                _5261 = mem[_2043]
                mem[_3846 + 8 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
                if ceil32(_5261) <= _5261:
                    _6200 = mem[64]
                    mem[64] = _5261 + _3846 + 8
                    mem[_5261 + _3846 + 8] = 32
                    _6392 = mem[_6200]
                    mem[_5261 + _3846 + 40] = mem[_6200]
                    mem[_5261 + _3846 + 72 len ceil32(_6392)] = mem[_6200 + 32 len ceil32(_6392)]
                    if ceil32(_6392) > _6392:
                        mem[_6392 + _5261 + _3846 + 72] = 0
                    return 32, mem[_5261 + _3846 + 40 len ceil32(_6392) + 32]
                mem[_5261 + _3846 + 8] = 0
                _6201 = mem[64]
                mem[64] = _5261 + _3846 + 8
                mem[_5261 + _3846 + 8] = 32
                _6393 = mem[_6201]
                mem[_5261 + _3846 + 40] = mem[_6201]
                mem[_5261 + _3846 + 72 len ceil32(_6393)] = mem[_6201 + 32 len ceil32(_6393)]
                if ceil32(_6393) > _6393:
                    mem[_6393 + _5261 + _3846 + 72] = 0
                return 32, mem[_5261 + _3846 + 40 len ceil32(_6393) + 32]
            _5262 = mem[_2043]
            mem[_3846 + 8 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_5262) <= _5262:
                _6202 = mem[64]
                mem[64] = _5262 + _3846 + 8
                mem[_5262 + _3846 + 8] = 32
                _6394 = mem[_6202]
                mem[_5262 + _3846 + 40] = mem[_6202]
                mem[_5262 + _3846 + 72 len ceil32(_6394)] = mem[_6202 + 32 len ceil32(_6394)]
                if ceil32(_6394) > _6394:
                    mem[_6394 + _5262 + _3846 + 72] = 0
                return 32, mem[_5262 + _3846 + 40 len ceil32(_6394) + 32]
            mem[_5262 + _3846 + 8] = 0
            _6203 = mem[64]
            mem[64] = _5262 + _3846 + 8
            mem[_5262 + _3846 + 8] = 32
            _6395 = mem[_6203]
            mem[_5262 + _3846 + 40] = mem[_6203]
            mem[_5262 + _3846 + 72 len ceil32(_6395)] = mem[_6203 + 32 len ceil32(_6395)]
            if ceil32(_6395) > _6395:
                mem[_6395 + _5262 + _3846 + 72] = 0
            return 32, mem[_5262 + _3846 + 40 len ceil32(_6395) + 32]
        mem[0] = 253
        idx = 0
        s = 0
        while idx < stor253.length.field_1:
            mem[idx + _3599 + 32] = stor253[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _5058 = mem[96]
        mem[_3599 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_5058 + _3599 + stor253.length.field_1 + 32] = '?typeid='
        if ceil32(_5058) <= _5058:
            _6324 = mem[_2043]
            mem[_5058 + _3599 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_6324) <= _6324:
                _7012 = mem[64]
                mem[64] = _6324 + _5058 + _3599 + stor253.length.field_1 + 40
                mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 40] = 32
                _7100 = mem[_7012]
                mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 72] = mem[_7012]
                mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 104 len ceil32(_7100)] = mem[_7012 + 32 len ceil32(_7100)]
                if ceil32(_7100) > _7100:
                    mem[_7100 + _6324 + _5058 + _3599 + stor253.length.field_1 + 104] = 0
                return 32, mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 72 len ceil32(_7100) + 32]
            mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 40] = 0
            _7013 = mem[64]
            mem[64] = _6324 + _5058 + _3599 + stor253.length.field_1 + 40
            mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 40] = 32
            _7101 = mem[_7013]
            mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 72] = mem[_7013]
            mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 104 len ceil32(_7101)] = mem[_7013 + 32 len ceil32(_7101)]
            if ceil32(_7101) > _7101:
                mem[_7101 + _6324 + _5058 + _3599 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6324 + _5058 + _3599 + stor253.length.field_1 + 72 len ceil32(_7101) + 32]
        _6325 = mem[_2043]
        mem[_5058 + _3599 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
        if ceil32(_6325) <= _6325:
            _7014 = mem[64]
            mem[64] = _6325 + _5058 + _3599 + stor253.length.field_1 + 40
            mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 40] = 32
            _7102 = mem[_7014]
            mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 72] = mem[_7014]
            mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 104 len ceil32(_7102)] = mem[_7014 + 32 len ceil32(_7102)]
            if ceil32(_7102) > _7102:
                mem[_7102 + _6325 + _5058 + _3599 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 72 len ceil32(_7102) + 32]
        mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 40] = 0
        _7015 = mem[64]
        mem[64] = _6325 + _5058 + _3599 + stor253.length.field_1 + 40
        mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 40] = 32
        _7103 = mem[_7015]
        mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 72] = mem[_7015]
        mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 104 len ceil32(_7103)] = mem[_7015 + 32 len ceil32(_7103)]
        if ceil32(_7103) > _7103:
            mem[_7103 + _6325 + _5058 + _3599 + stor253.length.field_1 + 104] = 0
        return 32, mem[_6325 + _5058 + _3599 + stor253.length.field_1 + 72 len ceil32(_7103) + 32]
    if bool(stor253.length) == stor253.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor253.length):
        mem[mem[64] + 32] = Mask(248, 8, stor253.length)
        _3847 = mem[96]
        mem[mem[64] + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor253.length.field_1 + 32] = '?typeid='
        if ceil32(mem[96]) <= mem[96]:
            _5263 = mem[_2043]
            mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_5263) <= _5263:
                _6204 = mem[64]
                mem[64] = _5263 + mem[96] + mem[64] + stor253.length.field_1 + 40
                mem[_5263 + mem[96] + _3599 + stor253.length.field_1 + 40] = 32
                _6396 = mem[_6204]
                mem[_5263 + _3847 + _3599 + stor253.length.field_1 + 72] = mem[_6204]
                mem[_5263 + _3847 + _3599 + stor253.length.field_1 + 104 len ceil32(_6396)] = mem[_6204 + 32 len ceil32(_6396)]
                if ceil32(_6396) > _6396:
                    mem[_6396 + _5263 + _3847 + _3599 + stor253.length.field_1 + 104] = 0
                return 32, mem[_5263 + _3847 + _3599 + stor253.length.field_1 + 72 len ceil32(_6396) + 32]
            mem[_5263 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
            _6205 = mem[64]
            mem[64] = _5263 + mem[96] + mem[64] + stor253.length.field_1 + 40
            mem[_5263 + mem[96] + _3599 + stor253.length.field_1 + 40] = 32
            _6397 = mem[_6205]
            mem[_5263 + _3847 + _3599 + stor253.length.field_1 + 72] = mem[_6205]
            mem[_5263 + _3847 + _3599 + stor253.length.field_1 + 104 len ceil32(_6397)] = mem[_6205 + 32 len ceil32(_6397)]
            if ceil32(_6397) > _6397:
                mem[_6397 + _5263 + _3847 + _3599 + stor253.length.field_1 + 104] = 0
            return 32, mem[_5263 + _3847 + _3599 + stor253.length.field_1 + 72 len ceil32(_6397) + 32]
        _5264 = mem[_2043]
        mem[mem[96] + mem[64] + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
        if ceil32(_5264) <= _5264:
            _6206 = mem[64]
            mem[64] = _5264 + mem[96] + mem[64] + stor253.length.field_1 + 40
            mem[_5264 + mem[96] + _3599 + stor253.length.field_1 + 40] = 32
            _6398 = mem[_6206]
            mem[_5264 + _3847 + _3599 + stor253.length.field_1 + 72] = mem[_6206]
            mem[_5264 + _3847 + _3599 + stor253.length.field_1 + 104 len ceil32(_6398)] = mem[_6206 + 32 len ceil32(_6398)]
            if ceil32(_6398) > _6398:
                mem[_6398 + _5264 + _3847 + _3599 + stor253.length.field_1 + 104] = 0
            return 32, mem[_5264 + _3847 + _3599 + stor253.length.field_1 + 72 len ceil32(_6398) + 32]
        mem[_5264 + mem[96] + mem[64] + stor253.length.field_1 + 40] = 0
        _6207 = mem[64]
        mem[64] = _5264 + _3847 + _3599 + stor253.length.field_1 + 40
        mem[_5264 + _3847 + _3599 + stor253.length.field_1 + 40] = 32
        _6399 = mem[_6207]
        mem[_5264 + _3847 + _3599 + stor253.length.field_1 + 72] = mem[_6207]
        mem[_5264 + _3847 + _3599 + stor253.length.field_1 + 104 len ceil32(_6399)] = mem[_6207 + 32 len ceil32(_6399)]
        if ceil32(_6399) > _6399:
            mem[_6399 + _5264 + _3847 + _3599 + stor253.length.field_1 + 104] = 0
        return 32, mem[_5264 + _3847 + _3599 + stor253.length.field_1 + 72 len ceil32(_6399) + 32]
    if bool(stor253.length) != 1:
        _3866 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_3866] = '?typeid='
        if ceil32(_3866) <= _3866:
            _5266 = mem[_2043]
            mem[_3866 + 8 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
            if ceil32(_5266) <= _5266:
                _6208 = mem[64]
                mem[64] = _5266 + _3866 + 8
                mem[_5266 + _3866 + 8] = 32
                _6400 = mem[_6208]
                mem[_5266 + _3866 + 40] = mem[_6208]
                mem[_5266 + _3866 + 72 len ceil32(_6400)] = mem[_6208 + 32 len ceil32(_6400)]
                if ceil32(_6400) > _6400:
                    mem[_6400 + _5266 + _3866 + 72] = 0
                return 32, mem[_5266 + _3866 + 40 len ceil32(_6400) + 32]
            mem[_5266 + _3866 + 8] = 0
            _6209 = mem[64]
            mem[64] = _5266 + _3866 + 8
            mem[_5266 + _3866 + 8] = 32
            _6401 = mem[_6209]
            mem[_5266 + _3866 + 40] = mem[_6209]
            mem[_5266 + _3866 + 72 len ceil32(_6401)] = mem[_6209 + 32 len ceil32(_6401)]
            if ceil32(_6401) > _6401:
                mem[_6401 + _5266 + _3866 + 72] = 0
            return 32, mem[_5266 + _3866 + 40 len ceil32(_6401) + 32]
        _5267 = mem[_2043]
        mem[_3866 + 8 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
        if ceil32(_5267) <= _5267:
            _6210 = mem[64]
            mem[64] = _5267 + _3866 + 8
            mem[_5267 + _3866 + 8] = 32
            _6402 = mem[_6210]
            mem[_5267 + _3866 + 40] = mem[_6210]
            mem[_5267 + _3866 + 72 len ceil32(_6402)] = mem[_6210 + 32 len ceil32(_6402)]
            if ceil32(_6402) > _6402:
                mem[_6402 + _5267 + _3866 + 72] = 0
            return 32, mem[_5267 + _3866 + 40 len ceil32(_6402) + 32]
        mem[_5267 + _3866 + 8] = 0
        _6211 = mem[64]
        mem[64] = _5267 + _3866 + 8
        mem[_5267 + _3866 + 8] = 32
        _6403 = mem[_6211]
        mem[_5267 + _3866 + 40] = mem[_6211]
        mem[_5267 + _3866 + 72 len ceil32(_6403)] = mem[_6211 + 32 len ceil32(_6403)]
        if ceil32(_6403) > _6403:
            mem[_6403 + _5267 + _3866 + 72] = 0
        return 32, mem[_5267 + _3866 + 40 len ceil32(_6403) + 32]
    mem[0] = 253
    idx = 0
    s = 0
    while idx < stor253.length.field_1:
        mem[idx + _3599 + 32] = stor253[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _5059 = mem[96]
    mem[_3599 + stor253.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_5059 + _3599 + stor253.length.field_1 + 32] = '?typeid='
    if ceil32(_5059) <= _5059:
        _6334 = mem[_2043]
        mem[_5059 + _3599 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
        if ceil32(_6334) <= _6334:
            _7032 = mem[64]
            mem[64] = _6334 + _5059 + _3599 + stor253.length.field_1 + 40
            mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 40] = 32
            _7104 = mem[_7032]
            mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 72] = mem[_7032]
            mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 104 len ceil32(_7104)] = mem[_7032 + 32 len ceil32(_7104)]
            if ceil32(_7104) > _7104:
                mem[_7104 + _6334 + _5059 + _3599 + stor253.length.field_1 + 104] = 0
            return 32, mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 72 len ceil32(_7104) + 32]
        mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 40] = 0
        _7033 = mem[64]
        mem[64] = _6334 + _5059 + _3599 + stor253.length.field_1 + 40
        mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 40] = 32
        _7105 = mem[_7033]
        mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 72] = mem[_7033]
        mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 104 len ceil32(_7105)] = mem[_7033 + 32 len ceil32(_7105)]
        if ceil32(_7105) > _7105:
            mem[_7105 + _6334 + _5059 + _3599 + stor253.length.field_1 + 104] = 0
        return 32, mem[_6334 + _5059 + _3599 + stor253.length.field_1 + 72 len ceil32(_7105) + 32]
    _6335 = mem[_2043]
    mem[_5059 + _3599 + stor253.length.field_1 + 40 len ceil32(mem[_2043])] = mem[_2043 + 32 len ceil32(mem[_2043])]
    if ceil32(_6335) <= _6335:
        _7034 = mem[64]
        mem[64] = _6335 + _5059 + _3599 + stor253.length.field_1 + 40
        mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 40] = 32
        _7106 = mem[_7034]
        mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 72] = mem[_7034]
        mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 104 len ceil32(_7106)] = mem[_7034 + 32 len ceil32(_7106)]
        if ceil32(_7106) > _7106:
            mem[_7106 + _6335 + _5059 + _3599 + stor253.length.field_1 + 104] = 0
        return 32, mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 72 len ceil32(_7106) + 32]
    mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 40] = 0
    _7035 = mem[64]
    mem[64] = _6335 + _5059 + _3599 + stor253.length.field_1 + 40
    mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 40] = 32
    _7107 = mem[_7035]
    mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 72] = mem[_7035]
    mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 104 len ceil32(_7107)] = mem[_7035 + 32 len ceil32(_7107)]
    if ceil32(_7107) > _7107:
        mem[_7107 + _6335 + _5059 + _3599 + stor253.length.field_1 + 104] = 0
    return 32, mem[_6335 + _5059 + _3599 + stor253.length.field_1 + 72 len ceil32(_7107) + 32]
}



}
