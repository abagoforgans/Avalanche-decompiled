contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
const URI_SETTER_ROLE = 0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of uint256 stor2;
mapping of struct roleAdmin;
mapping of uint256 totalSupply;
array of struct stor5;
mapping of uint8 stor6;
mapping of struct sub_1a44f22d;
mapping of uint128 stor8;
mapping of uint256 sub_b895393b;
mapping of struct stor99;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_1a44f22d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(totalSupply[arg1])
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_ad794538(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)][arg2])
}

function sub_b895393b(?) {
    require calldata.size - 4 >= 32
    return sub_b895393b[arg1]
}

function totalSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function getAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(arg1)
}

function getId(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function addReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value <= 0:
        revert with 0, 'DropperToken: reward cannot be 0'
    if totalSupply[address(arg1)] > !sub_b895393b[address(arg1)]:
        revert with 'NH{q', 17
    if totalSupply[address(arg1)] + sub_b895393b[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DropperToken: no reward recipients'
    if not totalSupply[address(arg1)] + sub_b895393b[address(arg1)]:
        revert with 'NH{q', 18
    if uint256(stor8[address(arg1)]) > !(msg.value / totalSupply[address(arg1)] + sub_b895393b[address(arg1)]):
        revert with 'NH{q', 17
    uint256(stor8[address(arg1)]) += msg.value / totalSupply[address(arg1)] + sub_b895393b[address(arg1)]
}

function sub_f9d23002(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 9
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = sub_b895393b[cd[((32 * idx) + cd[4] + 36)]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
}

function sub_37da401e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
}

function totalSupplyBatch(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 4
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = totalSupply[cd[((32 * idx) + arg1 + 36)]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = 32
    mem[(32 * arg1.length) + 160] = arg1.length
    s = 0
    s = 128
    t = mem[64] + 64
    while arg1.length < arg1.length:
        mem[t] = mem[s]
        s = arg1.length + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_4e0ce0f5(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 128] = 32
    mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * ('cd', 4).length) + -mem[64] + 192
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_02276d23(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DropperToken: owners and ids length mismatch'
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ('cd', 36).length:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 7)
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length])
}

function sub_8062d026(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'ERC1155: balance query for the zero address'
    if balanceOf[arg2][address(arg1)] > !sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776:
        revert with 'NH{q', 17
    if not balanceOf[arg2][address(arg1)] + sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776:
        return Mask(120, 0, sub_1a44f22d[arg2][address(arg1)].field_0)
    if uint256(stor8[arg2]) < Mask(96, 0, sub_1a44f22d[arg2][address(arg1)].field_0):
        revert with 'NH{q', 17
    if balanceOf[arg2][address(arg1)] + sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776 and uint256(stor8[arg2]) - Mask(96, 0, sub_1a44f22d[arg2][address(arg1)].field_0) > -1 / balanceOf[arg2][address(arg1)] + sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776:
        revert with 'NH{q', 17
    if Mask(120, 0, sub_1a44f22d[arg2][address(arg1)].field_0) > !((uint256(stor8[arg2]) * balanceOf[arg2][address(arg1)]) - (Mask(96, 0, sub_1a44f22d[arg2][address(arg1)].field_0) * balanceOf[arg2][address(arg1)]) + (uint256(stor8[arg2]) * sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[arg2][address(arg1)].field_0) * sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776)):
        revert with 'NH{q', 17
    return (Mask(120, 0, sub_1a44f22d[arg2][address(arg1)].field_0) + (uint256(stor8[arg2]) * balanceOf[arg2][address(arg1)]) - (Mask(96, 0, sub_1a44f22d[arg2][address(arg1)].field_0) * balanceOf[arg2][address(arg1)]) + (uint256(stor8[arg2]) * sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[arg2][address(arg1)].field_0) * sub_1a44f22d[arg2][address(arg1)].field_96 % 1099511627776))
}

function sub_adbd72cb(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DropperToken: tokenAddresses and tokenIds length mismatch'
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if ('cd', 36).length:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6)
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = bool(stor6[address(cd[((32 * idx) + cd[4] + 36)])][cd[((32 * idx) + cd[36] + 36)]])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 128] = 32
    mem[(32 * ('cd', 36).length) + 160] = ('cd', 36).length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < ('cd', 36).length:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * ('cd', 36).length) + -mem[64] + 192
}

function setURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not uint8(roleAdmin[0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c][address(msg.sender)].field_0):
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor2[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while (uint255(stor2.length) * 0.5) + 31 / 32 > idx:
                uint256(stor2[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor2[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor2[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307() or ceil32(32 * arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not uint8(roleAdmin[0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c][address(msg.sender)].field_0):
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor5[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                uint256(stor5[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor5[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor5[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint256(stor8[arg1]) != Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0):
        if not msg.sender:
            revert with 0, 'ERC1155: balance query for the zero address'
        if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
            revert with 'NH{q', 17
        if balanceOf[arg1][address(msg.sender)] + sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
            if uint256(stor8[arg1]) < Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0):
                revert with 'NH{q', 17
            if balanceOf[arg1][address(msg.sender)] + sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776 and uint256(stor8[arg1]) - Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) > -1 / balanceOf[arg1][address(msg.sender)] + sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            if Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_0) > !((uint256(stor8[arg1]) * balanceOf[arg1][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * balanceOf[arg1][address(msg.sender)]) + (uint256(stor8[arg1]) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776)):
                revert with 'NH{q', 17
            if Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_0) + (uint256(stor8[arg1]) * balanceOf[arg1][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * balanceOf[arg1][address(msg.sender)]) + (uint256(stor8[arg1]) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776) != Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136):
                Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136) = Mask(120, 0, Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_0) + (uint256(stor8[arg1]) * balanceOf[arg1][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * balanceOf[arg1][address(msg.sender)]) + (uint256(stor8[arg1]) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776))
        Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) = Mask(96, 0, stor8[arg1])
    if not Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136):
        revert with 0, 'DropperToken: nothing to claim'
    uint256(sub_1a44f22d[arg1][msg.sender].field_0) = Mask(136, 0, sub_1a44f22d[arg1][msg.sender].field_0)
    call msg.sender with:
       value Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RewardClaimed(Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136), msg.sender, arg1);
}

function contractURI() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor5[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
        else:
            if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1 % 128:
                if 31 < stor5.length.field_1 % 128:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor5[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor5[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
    else:
        if bool(stor5.length) == stor5.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1 % 128:
            if 31 < stor5.length.field_1 % 128:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor5[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5.length.field_8)
    mem[ceil32(stor5.length.field_1 % 128) + 192 len ceil32(stor5.length.field_1 % 128)] = mem[128 len ceil32(stor5.length.field_1 % 128)]
    if ceil32(stor5.length.field_1 % 128) > stor5.length.field_1 % 128:
        mem[stor5.length.field_1 % 128 + ceil32(stor5.length.field_1 % 128) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1 % 128)], mem[(2 * ceil32(stor5.length.field_1 % 128)) + 192 len 2 * ceil32(stor5.length.field_1 % 128)]), 
}

function sub_5794bd8e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        if uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) != Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0):
            _31 = mem[64]
            mem[64] = mem[64] + 96
            mem[_31] = Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0)
            mem[_31 + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776
            mem[_31 + 64] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_136)
            if not msg.sender:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = msg.sender
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
            if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776:
                revert with 'NH{q', 17
            if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] + sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776:
                if uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) < Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0):
                    revert with 'NH{q', 17
                if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] + sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776 and uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) - Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) > -1 / balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] + sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) > !((uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776)):
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_136):
                    Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_96 % 1099511627776))
            Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) = Mask(96, 0, stor8[cd[((32 * idx) + cd[4] + 36)]])
        if not Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_136):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        uint256(sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0) = Mask(136, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_0)
        if s > !Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_136):
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64]] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_136)
        emit RewardClaimed(Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_136), msg.sender, cd[((32 * idx) + cd[4] + 36)]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)].field_136)
        continue 
    if s <= 0:
        revert with 0, 'DropperToken: nothing to claim'
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0e4c6ea3(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == address(cd[68])
    if uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
        if bool(stor6[address(cd[68])][cd[100]]) != 1:
            stor6[address(cd[68])][cd[100]] = 1
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _123 = sha3(mem[(32 * idx) + 140 len 20], sha3(address(cd[68]), 7))
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _127 = mem[(32 * idx) + 128]
                mem[0] = address(cd[68])
                mem[32] = 8
                if uint256(stor8[address(cd[68])]) == Mask(96, 0, sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_0):
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] and 1 > -1 / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 17
                    if sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_96 % 1099511627776 > -mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 156 len 5] + test266151307():
                        revert with 'NH{q', 17
                    sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_96 % 1099511627776 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 156 len 5] + sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_96 % 1099511627776 % 1099511627776
                else:
                    _130 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_130] = Mask(96, 0, sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_0)
                    mem[_130 + 32] = stor[_123].field_96 % 1099511627776
                    mem[_130 + 64] = Mask(120, 0, stor[_123].field_136)
                    if not address(_127):
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = address(_127)
                    mem[32] = sha3(address(cd[68]), 0)
                    if balanceOf[address(cd[68])][address(_127)] > !stor[_123].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[address(cd[68])][address(_127)] + stor[_123].field_96 % 1099511627776:
                        if uint256(stor8[address(cd[68])]) < Mask(96, 0, stor[_123].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[address(cd[68])][address(_127)] + stor[_123].field_96 % 1099511627776 and uint256(stor8[address(cd[68])]) - Mask(96, 0, stor[_123].field_0) > -1 / balanceOf[address(cd[68])][address(_127)] + stor[_123].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_123].field_0) > !((uint256(stor8[address(cd[68])]) * balanceOf[address(cd[68])][address(_127)]) - (Mask(96, 0, stor[_123].field_0) * balanceOf[address(cd[68])][address(_127)]) + (uint256(stor8[address(cd[68])]) * stor[_123].field_96 % 1099511627776) - (Mask(96, 0, stor[_123].field_0) * stor[_123].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_123].field_0) + (uint256(stor8[address(cd[68])]) * balanceOf[address(cd[68])][address(_127)]) - (Mask(96, 0, stor[_123].field_0) * balanceOf[address(cd[68])][address(_127)]) + (uint256(stor8[address(cd[68])]) * stor[_123].field_96 % 1099511627776) - (Mask(96, 0, stor[_123].field_0) * stor[_123].field_96 % 1099511627776) != Mask(120, 0, stor[_123].field_136):
                            Mask(120, 0, stor[_123].field_136) = Mask(120, 0, Mask(120, 0, stor[_123].field_0) + (uint256(stor8[address(cd[68])]) * balanceOf[address(cd[68])][address(_127)]) - (Mask(96, 0, stor[_123].field_0) * balanceOf[address(cd[68])][address(_127)]) + (uint256(stor8[address(cd[68])]) * stor[_123].field_96 % 1099511627776) - (Mask(96, 0, stor[_123].field_0) * stor[_123].field_96 % 1099511627776))
                    Mask(96, 0, stor[_123].field_0) = Mask(96, 0, stor8[address(cd[68])])
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] and 1 > -1 / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 17
                    if stor[_123].field_96 % 1099511627776 > -mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 156 len 5] + test266151307():
                        revert with 'NH{q', 17
                    stor[_123].field_96 % 1099511627776 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 156 len 5] + stor[_123].field_96 % 1099511627776 % 1099511627776
                if s > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 156 len 5]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 156 len 5]
                continue 
            if sub_b895393b[address(cd[68])] > !s:
                revert with 'NH{q', 17
            sub_b895393b[address(cd[68])] += s
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162 len 42], ' is missing role ', mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 290 len 66], 0, 0 >> 928,
                0
}

function sub_86580bef(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DropperToken: owners and ids length mismatch'
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 7)
            _50 = mem[64]
            mem[64] = mem[64] + 96
            mem[_50] = Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0)
            mem[_50 + 32] = sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776
            mem[_50 + 64] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_136)
            if not address(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
            if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])] > !sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776:
                revert with 'NH{q', 17
            if not balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])] + sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_136)
            else:
                if uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) < Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0):
                    revert with 'NH{q', 17
                if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])] + sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776 and uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) - Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) > -1 / balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])] + sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) > !((uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) * balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) * balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])]) + (uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776)):
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) + (uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) * balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) * balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])]) + (uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 7)
            _54 = mem[64]
            mem[64] = mem[64] + 96
            mem[_54] = Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0)
            mem[_54 + 32] = sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776
            mem[_54 + 64] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_136)
            if not address(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
            if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])] > !sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776:
                revert with 'NH{q', 17
            if not balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])] + sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_136)
            else:
                if uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) < Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0):
                    revert with 'NH{q', 17
                if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])] + sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776 and uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) - Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) > -1 / balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])] + sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) > !((uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) * balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) * balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])]) + (uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776)):
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) + (uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) * balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) * balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])]) + (uint256(stor8[cd[((32 * idx) + cd[36] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[4] + 36)])].field_96 % 1099511627776)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_3bb68dc4(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307() or ceil32(32 * ('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
        idx = 0
        s = 0
        while idx < ('cd', 100).length:
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            mem[32] = sha3(address(cd[68]), 6)
            if stor6[address(cd[68])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
            mem[32] = sha3(address(cd[68]), 6)
            stor6[address(cd[68])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]] = 1
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if s:
            idx = 0
            t = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _116 = sha3(mem[(32 * idx) + 140 len 20], sha3(address(cd[68]), 7))
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _120 = mem[(32 * idx) + 128]
                mem[0] = address(cd[68])
                mem[32] = 8
                if uint256(stor8[address(cd[68])]) == Mask(96, 0, sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_0):
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] and s > -1 / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 17
                    if sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_96 % 1099511627776 > -(mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] * s % 1099511627776) + test266151307():
                        revert with 'NH{q', 17
                    sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_96 % 1099511627776 = (mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] * s % 1099511627776) + sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_96 % 1099511627776 % 1099511627776
                else:
                    _125 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_125] = Mask(96, 0, sub_1a44f22d[address(cd[68])][mem[(32 * idx) + 140 len 20]].field_0)
                    mem[_125 + 32] = stor[_116].field_96 % 1099511627776
                    mem[_125 + 64] = Mask(120, 0, stor[_116].field_136)
                    if not address(_120):
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = address(_120)
                    mem[32] = sha3(address(cd[68]), 0)
                    if balanceOf[address(cd[68])][address(_120)] > !stor[_116].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[address(cd[68])][address(_120)] + stor[_116].field_96 % 1099511627776:
                        if uint256(stor8[address(cd[68])]) < Mask(96, 0, stor[_116].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[address(cd[68])][address(_120)] + stor[_116].field_96 % 1099511627776 and uint256(stor8[address(cd[68])]) - Mask(96, 0, stor[_116].field_0) > -1 / balanceOf[address(cd[68])][address(_120)] + stor[_116].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_116].field_0) > !((uint256(stor8[address(cd[68])]) * balanceOf[address(cd[68])][address(_120)]) - (Mask(96, 0, stor[_116].field_0) * balanceOf[address(cd[68])][address(_120)]) + (uint256(stor8[address(cd[68])]) * stor[_116].field_96 % 1099511627776) - (Mask(96, 0, stor[_116].field_0) * stor[_116].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_116].field_0) + (uint256(stor8[address(cd[68])]) * balanceOf[address(cd[68])][address(_120)]) - (Mask(96, 0, stor[_116].field_0) * balanceOf[address(cd[68])][address(_120)]) + (uint256(stor8[address(cd[68])]) * stor[_116].field_96 % 1099511627776) - (Mask(96, 0, stor[_116].field_0) * stor[_116].field_96 % 1099511627776) != Mask(120, 0, stor[_116].field_136):
                            Mask(120, 0, stor[_116].field_136) = Mask(120, 0, Mask(120, 0, stor[_116].field_0) + (uint256(stor8[address(cd[68])]) * balanceOf[address(cd[68])][address(_120)]) - (Mask(96, 0, stor[_116].field_0) * balanceOf[address(cd[68])][address(_120)]) + (uint256(stor8[address(cd[68])]) * stor[_116].field_96 % 1099511627776) - (Mask(96, 0, stor[_116].field_0) * stor[_116].field_96 % 1099511627776))
                    Mask(96, 0, stor[_116].field_0) = Mask(96, 0, stor8[address(cd[68])])
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] and s > -1 / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 17
                    if stor[_116].field_96 % 1099511627776 > -(mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] * s % 1099511627776) + test266151307():
                        revert with 'NH{q', 17
                    stor[_116].field_96 % 1099511627776 = (mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] * s % 1099511627776) + stor[_116].field_96 % 1099511627776 % 1099511627776
                if t > !(mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] * s % 1099511627776):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + (mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] * s % 1099511627776)
                continue 
            if sub_b895393b[address(cd[68])] > !t:
                revert with 'NH{q', 17
            sub_b895393b[address(cd[68])] += t
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163 len 42], ' is missing role ', mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291 len 66], 0, 0 >> 928,
                0
}

function claimTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint256(stor8[arg1]) == Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0):
        if not sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
            revert with 0, 'DropperToken: nothing to claim'
        sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776 = 0
        if sub_b895393b[arg1] < sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
            revert with 'NH{q', 17
        sub_b895393b[arg1] -= sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
        mem[96] = 0
        if not msg.sender:
            revert with 0, 'ERC1155: mint to the zero address'
        mem[128] = 1
        mem[160] = arg1
        mem[192] = 1
        mem[64] = 256
        mem[224] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 160]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + 160]] > !mem[(32 * idx) + 224]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 160]] += mem[(32 * idx) + 224]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if msg.sender:
            idx = 0
            while idx < 1:
                if idx >= mem[128]:
                    revert with 'NH{q', 50
                _1958 = sha3(mem[(32 * idx) + 160], 7)
                if idx >= mem[128]:
                    revert with 'NH{q', 50
                _1975 = mem[(32 * idx) + 160]
                mem[0] = mem[(32 * idx) + 160]
                mem[32] = 8
                _1986 = sha3(mem[(32 * idx) + 160], 8)
                if uint256(stor8[mem[(32 * idx) + 160]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 160]][address(msg.sender)].field_0):
                    _2006 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2006] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 160]][address(msg.sender)].field_0)
                    mem[_2006 + 32] = stor[_1958][address(msg.sender)].field_96 % 1099511627776
                    mem[_2006 + 64] = Mask(120, 0, stor[_1958][address(msg.sender)].field_136)
                    if not msg.sender:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = msg.sender
                    mem[32] = sha3(_1975, 0)
                    if balanceOf[_1975][address(msg.sender)] > !stor[_1958][address(msg.sender)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_1975][address(msg.sender)] + stor[_1958][address(msg.sender)].field_96 % 1099511627776:
                        if uint256(stor[_1986].field_0) < Mask(96, 0, stor[_1958][address(msg.sender)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_1975][address(msg.sender)] + stor[_1958][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_1986].field_0) - Mask(96, 0, stor[_1958][address(msg.sender)].field_0) > -1 / balanceOf[_1975][address(msg.sender)] + stor[_1958][address(msg.sender)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_1958][address(msg.sender)].field_0) > !((uint256(stor[_1986].field_0) * balanceOf[_1975][address(msg.sender)]) - (Mask(96, 0, stor[_1958][address(msg.sender)].field_0) * balanceOf[_1975][address(msg.sender)]) + (uint256(stor[_1986].field_0) * stor[_1958][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1958][address(msg.sender)].field_0) * stor[_1958][address(msg.sender)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_1958][address(msg.sender)].field_0) + (uint256(stor[_1986].field_0) * balanceOf[_1975][address(msg.sender)]) - (Mask(96, 0, stor[_1958][address(msg.sender)].field_0) * balanceOf[_1975][address(msg.sender)]) + (uint256(stor[_1986].field_0) * stor[_1958][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1958][address(msg.sender)].field_0) * stor[_1958][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_1958][address(msg.sender)].field_136):
                            Mask(120, 0, stor[_1958][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1958][address(msg.sender)].field_0) + (uint256(stor[_1986].field_0) * balanceOf[_1975][address(msg.sender)]) - (Mask(96, 0, stor[_1958][address(msg.sender)].field_0) * balanceOf[_1975][address(msg.sender)]) + (uint256(stor[_1986].field_0) * stor[_1958][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1958][address(msg.sender)].field_0) * stor[_1958][address(msg.sender)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_1958][address(msg.sender)].field_0) = Mask(96, 0, stor[_1986].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            mem[32] = sha3(arg1, 0)
            if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
            emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = arg1
                mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    call msg.sender.0xf23a6e61 with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[96], mem[mem[64] + 196 len ceil32(mem[96])]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _2885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2885] == Mask(32, 224, mem[_2885])
                    if Mask(32, 224, mem[_2885]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[mem[96] + mem[64] + 196] = 0
                    call msg.sender.0xf23a6e61 with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _2886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2886] == Mask(32, 224, mem[_2886])
                    if Mask(32, 224, mem[_2886]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                if idx >= 1:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 160]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 160]] < mem[(32 * idx) + 224]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 160]] -= mem[(32 * idx) + 224]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < 1:
                if idx >= mem[128]:
                    revert with 'NH{q', 50
                _2835 = sha3(mem[(32 * idx) + 160], 7)
                if idx >= mem[128]:
                    revert with 'NH{q', 50
                _2842 = mem[(32 * idx) + 160]
                mem[0] = mem[(32 * idx) + 160]
                mem[32] = 8
                _2847 = sha3(mem[(32 * idx) + 160], 8)
                if uint256(stor8[mem[(32 * idx) + 160]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 160]][address(msg.sender)].field_0):
                    _2872 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2872] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 160]][address(msg.sender)].field_0)
                    mem[_2872 + 32] = stor[_2835][address(msg.sender)].field_96 % 1099511627776
                    mem[_2872 + 64] = Mask(120, 0, stor[_2835][address(msg.sender)].field_136)
                    if not msg.sender:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = msg.sender
                    mem[32] = sha3(_2842, 0)
                    if balanceOf[_2842][address(msg.sender)] > !stor[_2835][address(msg.sender)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_2842][address(msg.sender)] + stor[_2835][address(msg.sender)].field_96 % 1099511627776:
                        if uint256(stor[_2847].field_0) < Mask(96, 0, stor[_2835][address(msg.sender)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_2842][address(msg.sender)] + stor[_2835][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2847].field_0) - Mask(96, 0, stor[_2835][address(msg.sender)].field_0) > -1 / balanceOf[_2842][address(msg.sender)] + stor[_2835][address(msg.sender)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_2835][address(msg.sender)].field_0) > !((uint256(stor[_2847].field_0) * balanceOf[_2842][address(msg.sender)]) - (Mask(96, 0, stor[_2835][address(msg.sender)].field_0) * balanceOf[_2842][address(msg.sender)]) + (uint256(stor[_2847].field_0) * stor[_2835][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2835][address(msg.sender)].field_0) * stor[_2835][address(msg.sender)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_2835][address(msg.sender)].field_0) + (uint256(stor[_2847].field_0) * balanceOf[_2842][address(msg.sender)]) - (Mask(96, 0, stor[_2835][address(msg.sender)].field_0) * balanceOf[_2842][address(msg.sender)]) + (uint256(stor[_2847].field_0) * stor[_2835][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2835][address(msg.sender)].field_0) * stor[_2835][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2835][address(msg.sender)].field_136):
                            Mask(120, 0, stor[_2835][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2835][address(msg.sender)].field_0) + (uint256(stor[_2847].field_0) * balanceOf[_2842][address(msg.sender)]) - (Mask(96, 0, stor[_2835][address(msg.sender)].field_0) * balanceOf[_2842][address(msg.sender)]) + (uint256(stor[_2847].field_0) * stor[_2835][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2835][address(msg.sender)].field_0) * stor[_2835][address(msg.sender)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_2835][address(msg.sender)].field_0) = Mask(96, 0, stor[_2847].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[0] = msg.sender
            mem[32] = sha3(arg1, 0)
            if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
            emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = arg1
                mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    call msg.sender.0xf23a6e61 with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[96], mem[mem[64] + 196 len ceil32(mem[96])]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _3581 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3581] == Mask(32, 224, mem[_3581])
                    if Mask(32, 224, mem[_3581]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[mem[96] + mem[64] + 196] = 0
                    call msg.sender.0xf23a6e61 with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _3582 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3582] == Mask(32, 224, mem[_3582])
                    if Mask(32, 224, mem[_3582]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        mem[96] = Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0)
        mem[128] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
        mem[160] = Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136)
        if not msg.sender:
            revert with 0, 'ERC1155: balance query for the zero address'
        if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
            revert with 'NH{q', 17
        if not balanceOf[arg1][address(msg.sender)] + sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
            Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) = Mask(96, 0, stor8[arg1])
            if not sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                revert with 0, 'DropperToken: nothing to claim'
            sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776 = 0
            if sub_b895393b[arg1] < sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            sub_b895393b[arg1] -= sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
            mem[192] = 0
            if not msg.sender:
                revert with 0, 'ERC1155: mint to the zero address'
            mem[224] = 1
            mem[256] = arg1
            mem[288] = 1
            mem[64] = 352
            mem[320] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                if idx >= 1:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 256]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 256]] > !mem[(32 * idx) + 320]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 256]] += mem[(32 * idx) + 320]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136) == Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136):
                if msg.sender:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _1926 = sha3(mem[(32 * idx) + 256], 7)
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _1963 = mem[(32 * idx) + 256]
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 8
                        _1978 = sha3(mem[(32 * idx) + 256], 8)
                        if uint256(stor8[mem[(32 * idx) + 256]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0):
                            _1990 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1990] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0)
                            mem[_1990 + 32] = stor[_1926][address(msg.sender)].field_96 % 1099511627776
                            mem[_1990 + 64] = Mask(120, 0, stor[_1926][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_1963, 0)
                            if balanceOf[_1963][address(msg.sender)] > !stor[_1926][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_1963][address(msg.sender)] + stor[_1926][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_1978].field_0) < Mask(96, 0, stor[_1926][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_1963][address(msg.sender)] + stor[_1926][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_1978].field_0) - Mask(96, 0, stor[_1926][address(msg.sender)].field_0) > -1 / balanceOf[_1963][address(msg.sender)] + stor[_1926][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1926][address(msg.sender)].field_0) > !((uint256(stor[_1978].field_0) * balanceOf[_1963][address(msg.sender)]) - (Mask(96, 0, stor[_1926][address(msg.sender)].field_0) * balanceOf[_1963][address(msg.sender)]) + (uint256(stor[_1978].field_0) * stor[_1926][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1926][address(msg.sender)].field_0) * stor[_1926][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1926][address(msg.sender)].field_0) + (uint256(stor[_1978].field_0) * balanceOf[_1963][address(msg.sender)]) - (Mask(96, 0, stor[_1926][address(msg.sender)].field_0) * balanceOf[_1963][address(msg.sender)]) + (uint256(stor[_1978].field_0) * stor[_1926][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1926][address(msg.sender)].field_0) * stor[_1926][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_1926][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_1926][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1926][address(msg.sender)].field_0) + (uint256(stor[_1978].field_0) * balanceOf[_1963][address(msg.sender)]) - (Mask(96, 0, stor[_1926][address(msg.sender)].field_0) * balanceOf[_1963][address(msg.sender)]) + (uint256(stor[_1978].field_0) * stor[_1926][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1926][address(msg.sender)].field_0) * stor[_1926][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_1926][address(msg.sender)].field_0) = Mask(96, 0, stor[_1978].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(arg1, 0)
                    if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _2073 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        mem[mem[64] + 196 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if ceil32(mem[192]) <= mem[192]:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[192], mem[mem[64] + 196 len ceil32(mem[192])]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _2873 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2873] == Mask(32, 224, mem[_2873])
                            if Mask(32, 224, mem[_2873]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[192] + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_2073) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _2874 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2874] == Mask(32, 224, mem[_2874])
                            if Mask(32, 224, mem[_2874]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 'NH{q', 50
                        if idx >= 1:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 4
                        if totalSupply[mem[(32 * idx) + 256]] < mem[(32 * idx) + 320]:
                            revert with 'NH{q', 17
                        totalSupply[mem[(32 * idx) + 256]] -= mem[(32 * idx) + 320]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < 1:
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _2811 = sha3(mem[(32 * idx) + 256], 7)
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _2838 = mem[(32 * idx) + 256]
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 8
                        _2843 = sha3(mem[(32 * idx) + 256], 8)
                        if uint256(stor8[mem[(32 * idx) + 256]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0):
                            _2852 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2852] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0)
                            mem[_2852 + 32] = stor[_2811][address(msg.sender)].field_96 % 1099511627776
                            mem[_2852 + 64] = Mask(120, 0, stor[_2811][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_2838, 0)
                            if balanceOf[_2838][address(msg.sender)] > !stor[_2811][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_2838][address(msg.sender)] + stor[_2811][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_2843].field_0) < Mask(96, 0, stor[_2811][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_2838][address(msg.sender)] + stor[_2811][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2843].field_0) - Mask(96, 0, stor[_2811][address(msg.sender)].field_0) > -1 / balanceOf[_2838][address(msg.sender)] + stor[_2811][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2811][address(msg.sender)].field_0) > !((uint256(stor[_2843].field_0) * balanceOf[_2838][address(msg.sender)]) - (Mask(96, 0, stor[_2811][address(msg.sender)].field_0) * balanceOf[_2838][address(msg.sender)]) + (uint256(stor[_2843].field_0) * stor[_2811][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2811][address(msg.sender)].field_0) * stor[_2811][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2811][address(msg.sender)].field_0) + (uint256(stor[_2843].field_0) * balanceOf[_2838][address(msg.sender)]) - (Mask(96, 0, stor[_2811][address(msg.sender)].field_0) * balanceOf[_2838][address(msg.sender)]) + (uint256(stor[_2843].field_0) * stor[_2811][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2811][address(msg.sender)].field_0) * stor[_2811][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2811][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_2811][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2811][address(msg.sender)].field_0) + (uint256(stor[_2843].field_0) * balanceOf[_2838][address(msg.sender)]) - (Mask(96, 0, stor[_2811][address(msg.sender)].field_0) * balanceOf[_2838][address(msg.sender)]) + (uint256(stor[_2843].field_0) * stor[_2811][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2811][address(msg.sender)].field_0) * stor[_2811][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_2811][address(msg.sender)].field_0) = Mask(96, 0, stor[_2843].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(arg1, 0)
                    if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _2920 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        mem[mem[64] + 196 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if ceil32(mem[192]) <= mem[192]:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[192], mem[mem[64] + 196 len ceil32(mem[192])]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3573 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3573] == Mask(32, 224, mem[_3573])
                            if Mask(32, 224, mem[_3573]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[192] + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_2920) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3574 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3574] == Mask(32, 224, mem[_3574])
                            if Mask(32, 224, mem[_3574]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                if msg.sender:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _1934 = sha3(mem[(32 * idx) + 256], 7)
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _1966 = mem[(32 * idx) + 256]
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 8
                        _1980 = sha3(mem[(32 * idx) + 256], 8)
                        if uint256(stor8[mem[(32 * idx) + 256]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0):
                            _1994 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1994] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0)
                            mem[_1994 + 32] = stor[_1934][address(msg.sender)].field_96 % 1099511627776
                            mem[_1994 + 64] = Mask(120, 0, stor[_1934][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_1966, 0)
                            if balanceOf[_1966][address(msg.sender)] > !stor[_1934][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_1966][address(msg.sender)] + stor[_1934][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_1980].field_0) < Mask(96, 0, stor[_1934][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_1966][address(msg.sender)] + stor[_1934][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_1980].field_0) - Mask(96, 0, stor[_1934][address(msg.sender)].field_0) > -1 / balanceOf[_1966][address(msg.sender)] + stor[_1934][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1934][address(msg.sender)].field_0) > !((uint256(stor[_1980].field_0) * balanceOf[_1966][address(msg.sender)]) - (Mask(96, 0, stor[_1934][address(msg.sender)].field_0) * balanceOf[_1966][address(msg.sender)]) + (uint256(stor[_1980].field_0) * stor[_1934][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1934][address(msg.sender)].field_0) * stor[_1934][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1934][address(msg.sender)].field_0) + (uint256(stor[_1980].field_0) * balanceOf[_1966][address(msg.sender)]) - (Mask(96, 0, stor[_1934][address(msg.sender)].field_0) * balanceOf[_1966][address(msg.sender)]) + (uint256(stor[_1980].field_0) * stor[_1934][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1934][address(msg.sender)].field_0) * stor[_1934][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_1934][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_1934][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1934][address(msg.sender)].field_0) + (uint256(stor[_1980].field_0) * balanceOf[_1966][address(msg.sender)]) - (Mask(96, 0, stor[_1934][address(msg.sender)].field_0) * balanceOf[_1966][address(msg.sender)]) + (uint256(stor[_1980].field_0) * stor[_1934][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1934][address(msg.sender)].field_0) * stor[_1934][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_1934][address(msg.sender)].field_0) = Mask(96, 0, stor[_1980].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(arg1, 0)
                    if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _2078 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        mem[mem[64] + 196 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if ceil32(mem[192]) <= mem[192]:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[192], mem[mem[64] + 196 len ceil32(mem[192])]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _2876 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2876] == Mask(32, 224, mem[_2876])
                            if Mask(32, 224, mem[_2876]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[192] + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_2078) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _2877 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2877] == Mask(32, 224, mem[_2877])
                            if Mask(32, 224, mem[_2877]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 'NH{q', 50
                        if idx >= 1:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 4
                        if totalSupply[mem[(32 * idx) + 256]] < mem[(32 * idx) + 320]:
                            revert with 'NH{q', 17
                        totalSupply[mem[(32 * idx) + 256]] -= mem[(32 * idx) + 320]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < 1:
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _2817 = sha3(mem[(32 * idx) + 256], 7)
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _2839 = mem[(32 * idx) + 256]
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 8
                        _2844 = sha3(mem[(32 * idx) + 256], 8)
                        if uint256(stor8[mem[(32 * idx) + 256]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0):
                            _2857 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2857] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0)
                            mem[_2857 + 32] = stor[_2817][address(msg.sender)].field_96 % 1099511627776
                            mem[_2857 + 64] = Mask(120, 0, stor[_2817][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_2839, 0)
                            if balanceOf[_2839][address(msg.sender)] > !stor[_2817][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_2839][address(msg.sender)] + stor[_2817][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_2844].field_0) < Mask(96, 0, stor[_2817][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_2839][address(msg.sender)] + stor[_2817][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2844].field_0) - Mask(96, 0, stor[_2817][address(msg.sender)].field_0) > -1 / balanceOf[_2839][address(msg.sender)] + stor[_2817][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2817][address(msg.sender)].field_0) > !((uint256(stor[_2844].field_0) * balanceOf[_2839][address(msg.sender)]) - (Mask(96, 0, stor[_2817][address(msg.sender)].field_0) * balanceOf[_2839][address(msg.sender)]) + (uint256(stor[_2844].field_0) * stor[_2817][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2817][address(msg.sender)].field_0) * stor[_2817][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2817][address(msg.sender)].field_0) + (uint256(stor[_2844].field_0) * balanceOf[_2839][address(msg.sender)]) - (Mask(96, 0, stor[_2817][address(msg.sender)].field_0) * balanceOf[_2839][address(msg.sender)]) + (uint256(stor[_2844].field_0) * stor[_2817][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2817][address(msg.sender)].field_0) * stor[_2817][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2817][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_2817][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2817][address(msg.sender)].field_0) + (uint256(stor[_2844].field_0) * balanceOf[_2839][address(msg.sender)]) - (Mask(96, 0, stor[_2817][address(msg.sender)].field_0) * balanceOf[_2839][address(msg.sender)]) + (uint256(stor[_2844].field_0) * stor[_2817][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2817][address(msg.sender)].field_0) * stor[_2817][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_2817][address(msg.sender)].field_0) = Mask(96, 0, stor[_2844].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(arg1, 0)
                    if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _2924 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        mem[mem[64] + 196 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if ceil32(mem[192]) <= mem[192]:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[192], mem[mem[64] + 196 len ceil32(mem[192])]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3575 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3575] == Mask(32, 224, mem[_3575])
                            if Mask(32, 224, mem[_3575]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[192] + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_2924) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3576 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3576] == Mask(32, 224, mem[_3576])
                            if Mask(32, 224, mem[_3576]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            if uint256(stor8[arg1]) < Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0):
                revert with 'NH{q', 17
            if balanceOf[arg1][address(msg.sender)] + sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776 and uint256(stor8[arg1]) - Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) > -1 / balanceOf[arg1][address(msg.sender)] + sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            if Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_0) > !((uint256(stor8[arg1]) * balanceOf[arg1][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * balanceOf[arg1][address(msg.sender)]) + (uint256(stor8[arg1]) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776)):
                revert with 'NH{q', 17
            if Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_0) + (uint256(stor8[arg1]) * balanceOf[arg1][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * balanceOf[arg1][address(msg.sender)]) + (uint256(stor8[arg1]) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776) == Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136):
                Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) = Mask(96, 0, stor8[arg1])
                if not sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                    revert with 0, 'DropperToken: nothing to claim'
                sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776 = 0
                if sub_b895393b[arg1] < sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                sub_b895393b[arg1] -= sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                mem[192] = 0
                if not msg.sender:
                    revert with 0, 'ERC1155: mint to the zero address'
                mem[224] = 1
                mem[256] = arg1
                mem[288] = 1
                mem[64] = 352
                mem[320] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if idx >= 1:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 256]
                    mem[32] = 4
                    if totalSupply[mem[(32 * idx) + 256]] > !mem[(32 * idx) + 320]:
                        revert with 'NH{q', 17
                    totalSupply[mem[(32 * idx) + 256]] += mem[(32 * idx) + 320]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if msg.sender:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _1942 = sha3(mem[(32 * idx) + 256], 7)
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _1969 = mem[(32 * idx) + 256]
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 8
                        _1982 = sha3(mem[(32 * idx) + 256], 8)
                        if uint256(stor8[mem[(32 * idx) + 256]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0):
                            _1998 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1998] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0)
                            mem[_1998 + 32] = stor[_1942][address(msg.sender)].field_96 % 1099511627776
                            mem[_1998 + 64] = Mask(120, 0, stor[_1942][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_1969, 0)
                            if balanceOf[_1969][address(msg.sender)] > !stor[_1942][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_1969][address(msg.sender)] + stor[_1942][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_1982].field_0) < Mask(96, 0, stor[_1942][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_1969][address(msg.sender)] + stor[_1942][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_1982].field_0) - Mask(96, 0, stor[_1942][address(msg.sender)].field_0) > -1 / balanceOf[_1969][address(msg.sender)] + stor[_1942][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1942][address(msg.sender)].field_0) > !((uint256(stor[_1982].field_0) * balanceOf[_1969][address(msg.sender)]) - (Mask(96, 0, stor[_1942][address(msg.sender)].field_0) * balanceOf[_1969][address(msg.sender)]) + (uint256(stor[_1982].field_0) * stor[_1942][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1942][address(msg.sender)].field_0) * stor[_1942][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1942][address(msg.sender)].field_0) + (uint256(stor[_1982].field_0) * balanceOf[_1969][address(msg.sender)]) - (Mask(96, 0, stor[_1942][address(msg.sender)].field_0) * balanceOf[_1969][address(msg.sender)]) + (uint256(stor[_1982].field_0) * stor[_1942][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1942][address(msg.sender)].field_0) * stor[_1942][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_1942][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_1942][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1942][address(msg.sender)].field_0) + (uint256(stor[_1982].field_0) * balanceOf[_1969][address(msg.sender)]) - (Mask(96, 0, stor[_1942][address(msg.sender)].field_0) * balanceOf[_1969][address(msg.sender)]) + (uint256(stor[_1982].field_0) * stor[_1942][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1942][address(msg.sender)].field_0) * stor[_1942][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_1942][address(msg.sender)].field_0) = Mask(96, 0, stor[_1982].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(arg1, 0)
                    if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _2083 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        mem[mem[64] + 196 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if ceil32(mem[192]) <= mem[192]:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[192], mem[mem[64] + 196 len ceil32(mem[192])]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _2879 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2879] == Mask(32, 224, mem[_2879])
                            if Mask(32, 224, mem[_2879]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[192] + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_2083) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _2880 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2880] == Mask(32, 224, mem[_2880])
                            if Mask(32, 224, mem[_2880]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 'NH{q', 50
                        if idx >= 1:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 4
                        if totalSupply[mem[(32 * idx) + 256]] < mem[(32 * idx) + 320]:
                            revert with 'NH{q', 17
                        totalSupply[mem[(32 * idx) + 256]] -= mem[(32 * idx) + 320]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < 1:
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _2823 = sha3(mem[(32 * idx) + 256], 7)
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _2840 = mem[(32 * idx) + 256]
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 8
                        _2845 = sha3(mem[(32 * idx) + 256], 8)
                        if uint256(stor8[mem[(32 * idx) + 256]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0):
                            _2862 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2862] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0)
                            mem[_2862 + 32] = stor[_2823][address(msg.sender)].field_96 % 1099511627776
                            mem[_2862 + 64] = Mask(120, 0, stor[_2823][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_2840, 0)
                            if balanceOf[_2840][address(msg.sender)] > !stor[_2823][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_2840][address(msg.sender)] + stor[_2823][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_2845].field_0) < Mask(96, 0, stor[_2823][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_2840][address(msg.sender)] + stor[_2823][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2845].field_0) - Mask(96, 0, stor[_2823][address(msg.sender)].field_0) > -1 / balanceOf[_2840][address(msg.sender)] + stor[_2823][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2823][address(msg.sender)].field_0) > !((uint256(stor[_2845].field_0) * balanceOf[_2840][address(msg.sender)]) - (Mask(96, 0, stor[_2823][address(msg.sender)].field_0) * balanceOf[_2840][address(msg.sender)]) + (uint256(stor[_2845].field_0) * stor[_2823][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2823][address(msg.sender)].field_0) * stor[_2823][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2823][address(msg.sender)].field_0) + (uint256(stor[_2845].field_0) * balanceOf[_2840][address(msg.sender)]) - (Mask(96, 0, stor[_2823][address(msg.sender)].field_0) * balanceOf[_2840][address(msg.sender)]) + (uint256(stor[_2845].field_0) * stor[_2823][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2823][address(msg.sender)].field_0) * stor[_2823][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2823][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_2823][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2823][address(msg.sender)].field_0) + (uint256(stor[_2845].field_0) * balanceOf[_2840][address(msg.sender)]) - (Mask(96, 0, stor[_2823][address(msg.sender)].field_0) * balanceOf[_2840][address(msg.sender)]) + (uint256(stor[_2845].field_0) * stor[_2823][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2823][address(msg.sender)].field_0) * stor[_2823][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_2823][address(msg.sender)].field_0) = Mask(96, 0, stor[_2845].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(arg1, 0)
                    if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _2928 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        mem[mem[64] + 196 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if ceil32(mem[192]) <= mem[192]:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[192], mem[mem[64] + 196 len ceil32(mem[192])]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3577] == Mask(32, 224, mem[_3577])
                            if Mask(32, 224, mem[_3577]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[192] + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_2928) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3578 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3578] == Mask(32, 224, mem[_3578])
                            if Mask(32, 224, mem[_3578]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_136) = Mask(120, 0, Mask(120, 0, sub_1a44f22d[arg1][msg.sender].field_0) + (uint256(stor8[arg1]) * balanceOf[arg1][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * balanceOf[arg1][address(msg.sender)]) + (uint256(stor8[arg1]) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) * sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776))
                Mask(96, 0, sub_1a44f22d[arg1][msg.sender].field_0) = Mask(96, 0, stor8[arg1])
                if not sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                    revert with 0, 'DropperToken: nothing to claim'
                sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776 = 0
                if sub_b895393b[arg1] < sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                sub_b895393b[arg1] -= sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                mem[192] = 0
                if not msg.sender:
                    revert with 0, 'ERC1155: mint to the zero address'
                mem[224] = 1
                mem[256] = arg1
                mem[288] = 1
                mem[64] = 352
                mem[320] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if idx >= 1:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 256]
                    mem[32] = 4
                    if totalSupply[mem[(32 * idx) + 256]] > !mem[(32 * idx) + 320]:
                        revert with 'NH{q', 17
                    totalSupply[mem[(32 * idx) + 256]] += mem[(32 * idx) + 320]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if msg.sender:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _1950 = sha3(mem[(32 * idx) + 256], 7)
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _1972 = mem[(32 * idx) + 256]
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 8
                        _1984 = sha3(mem[(32 * idx) + 256], 8)
                        if uint256(stor8[mem[(32 * idx) + 256]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0):
                            _2002 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2002] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0)
                            mem[_2002 + 32] = stor[_1950][address(msg.sender)].field_96 % 1099511627776
                            mem[_2002 + 64] = Mask(120, 0, stor[_1950][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_1972, 0)
                            if balanceOf[_1972][address(msg.sender)] > !stor[_1950][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_1972][address(msg.sender)] + stor[_1950][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_1984].field_0) < Mask(96, 0, stor[_1950][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_1972][address(msg.sender)] + stor[_1950][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_1984].field_0) - Mask(96, 0, stor[_1950][address(msg.sender)].field_0) > -1 / balanceOf[_1972][address(msg.sender)] + stor[_1950][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1950][address(msg.sender)].field_0) > !((uint256(stor[_1984].field_0) * balanceOf[_1972][address(msg.sender)]) - (Mask(96, 0, stor[_1950][address(msg.sender)].field_0) * balanceOf[_1972][address(msg.sender)]) + (uint256(stor[_1984].field_0) * stor[_1950][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1950][address(msg.sender)].field_0) * stor[_1950][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1950][address(msg.sender)].field_0) + (uint256(stor[_1984].field_0) * balanceOf[_1972][address(msg.sender)]) - (Mask(96, 0, stor[_1950][address(msg.sender)].field_0) * balanceOf[_1972][address(msg.sender)]) + (uint256(stor[_1984].field_0) * stor[_1950][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1950][address(msg.sender)].field_0) * stor[_1950][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_1950][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_1950][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1950][address(msg.sender)].field_0) + (uint256(stor[_1984].field_0) * balanceOf[_1972][address(msg.sender)]) - (Mask(96, 0, stor[_1950][address(msg.sender)].field_0) * balanceOf[_1972][address(msg.sender)]) + (uint256(stor[_1984].field_0) * stor[_1950][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1950][address(msg.sender)].field_0) * stor[_1950][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_1950][address(msg.sender)].field_0) = Mask(96, 0, stor[_1984].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(arg1, 0)
                    if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _2088 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        mem[mem[64] + 196 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if ceil32(mem[192]) <= mem[192]:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[192], mem[mem[64] + 196 len ceil32(mem[192])]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _2882 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2882] == Mask(32, 224, mem[_2882])
                            if Mask(32, 224, mem[_2882]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[192] + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_2088) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _2883 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2883] == Mask(32, 224, mem[_2883])
                            if Mask(32, 224, mem[_2883]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= 1:
                            revert with 'NH{q', 50
                        if idx >= 1:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 4
                        if totalSupply[mem[(32 * idx) + 256]] < mem[(32 * idx) + 320]:
                            revert with 'NH{q', 17
                        totalSupply[mem[(32 * idx) + 256]] -= mem[(32 * idx) + 320]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < 1:
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _2829 = sha3(mem[(32 * idx) + 256], 7)
                        if idx >= mem[224]:
                            revert with 'NH{q', 50
                        _2841 = mem[(32 * idx) + 256]
                        mem[0] = mem[(32 * idx) + 256]
                        mem[32] = 8
                        _2846 = sha3(mem[(32 * idx) + 256], 8)
                        if uint256(stor8[mem[(32 * idx) + 256]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0):
                            _2867 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2867] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 256]][address(msg.sender)].field_0)
                            mem[_2867 + 32] = stor[_2829][address(msg.sender)].field_96 % 1099511627776
                            mem[_2867 + 64] = Mask(120, 0, stor[_2829][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_2841, 0)
                            if balanceOf[_2841][address(msg.sender)] > !stor[_2829][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_2841][address(msg.sender)] + stor[_2829][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_2846].field_0) < Mask(96, 0, stor[_2829][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_2841][address(msg.sender)] + stor[_2829][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2846].field_0) - Mask(96, 0, stor[_2829][address(msg.sender)].field_0) > -1 / balanceOf[_2841][address(msg.sender)] + stor[_2829][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2829][address(msg.sender)].field_0) > !((uint256(stor[_2846].field_0) * balanceOf[_2841][address(msg.sender)]) - (Mask(96, 0, stor[_2829][address(msg.sender)].field_0) * balanceOf[_2841][address(msg.sender)]) + (uint256(stor[_2846].field_0) * stor[_2829][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2829][address(msg.sender)].field_0) * stor[_2829][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2829][address(msg.sender)].field_0) + (uint256(stor[_2846].field_0) * balanceOf[_2841][address(msg.sender)]) - (Mask(96, 0, stor[_2829][address(msg.sender)].field_0) * balanceOf[_2841][address(msg.sender)]) + (uint256(stor[_2846].field_0) * stor[_2829][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2829][address(msg.sender)].field_0) * stor[_2829][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2829][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_2829][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2829][address(msg.sender)].field_0) + (uint256(stor[_2846].field_0) * balanceOf[_2841][address(msg.sender)]) - (Mask(96, 0, stor[_2829][address(msg.sender)].field_0) * balanceOf[_2841][address(msg.sender)]) + (uint256(stor[_2846].field_0) * stor[_2829][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2829][address(msg.sender)].field_0) * stor[_2829][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_2829][address(msg.sender)].field_0) = Mask(96, 0, stor[_2846].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(arg1, 0)
                    if balanceOf[arg1][address(msg.sender)] > !sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[arg1][address(msg.sender)] += sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(arg1, sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = arg1
                        mem[mem[64] + 100] = sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _2932 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        mem[mem[64] + 196 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                        if ceil32(mem[192]) <= mem[192]:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[192], mem[mem[64] + 196 len ceil32(mem[192])]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3579 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3579] == Mask(32, 224, mem[_3579])
                            if Mask(32, 224, mem[_3579]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[192] + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, sub_1a44f22d[arg1][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_2932) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3580] == Mask(32, 224, mem[_3580])
                            if Mask(32, 224, mem[_3580]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    emit TokensClaimed(sub_1a44f22d[arg1][msg.sender].field_96 % 1099511627776, msg.sender, arg1);
}

function sub_41243d6b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        if uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) == Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0):
            if not sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                revert with 0, 'DropperToken: nothing to claim'
            sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776 = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 9
            if sub_b895393b[cd[((32 * idx) + cd[4] + 36)]] < sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            sub_b895393b[cd[((32 * idx) + cd[4] + 36)]] -= sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            _995 = mem[64]
            mem[64] = mem[64] + 32
            mem[_995] = 0
            if not msg.sender:
                revert with 0, 'ERC1155: mint to the zero address'
            _999 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_999]:
                revert with 'NH{q', 50
            mem[_999 + 32] = cd[((32 * idx) + cd[4] + 36)]
            mem[_999 + 64] = 1
            mem[64] = _999 + 128
            mem[_999 + 96] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            _1969 = mem[_999]
            s = 0
            while s < _1969:
                if s >= 1:
                    revert with 'NH{q', 50
                if s >= mem[_999]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * s) + _999 + 32]
                mem[32] = 4
                if totalSupply[mem[0]] > !mem[(32 * s) + _999 + 96]:
                    revert with 'NH{q', 17
                totalSupply[mem[0]] += mem[(32 * s) + _999 + 96]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if msg.sender:
                _2893 = mem[_999]
                s = 0
                while s < _2893:
                    if s >= mem[_999]:
                        revert with 'NH{q', 50
                    _2940 = sha3(mem[(32 * s) + _999 + 32], 7)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * s) + _999 + 32], 7)
                    if s >= mem[_999]:
                        revert with 'NH{q', 50
                    _2957 = mem[(32 * s) + _999 + 32]
                    mem[0] = mem[(32 * s) + _999 + 32]
                    mem[32] = 8
                    _2968 = sha3(mem[0], 8)
                    if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_2940][address(msg.sender)].field_0):
                        _2988 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2988] = Mask(96, 0, stor[_2940][address(msg.sender)].field_0)
                        mem[_2988 + 32] = stor[_2940][address(msg.sender)].field_96 % 1099511627776
                        mem[_2988 + 64] = Mask(120, 0, stor[_2940][address(msg.sender)].field_136)
                        if not msg.sender:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = msg.sender
                        mem[32] = sha3(_2957, 0)
                        if balanceOf[_2957][address(msg.sender)] > !stor[_2940][address(msg.sender)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_2957][address(msg.sender)] + stor[_2940][address(msg.sender)].field_96 % 1099511627776:
                            if uint256(stor[_2968].field_0) < Mask(96, 0, stor[_2940][address(msg.sender)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_2957][address(msg.sender)] + stor[_2940][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2968].field_0) - Mask(96, 0, stor[_2940][address(msg.sender)].field_0) > -1 / balanceOf[_2957][address(msg.sender)] + stor[_2940][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_2940][address(msg.sender)].field_0) > !((uint256(stor[_2968].field_0) * balanceOf[_2957][address(msg.sender)]) - (Mask(96, 0, stor[_2940][address(msg.sender)].field_0) * balanceOf[_2957][address(msg.sender)]) + (uint256(stor[_2968].field_0) * stor[_2940][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2940][address(msg.sender)].field_0) * stor[_2940][address(msg.sender)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_2940][address(msg.sender)].field_0) + (uint256(stor[_2968].field_0) * balanceOf[_2957][address(msg.sender)]) - (Mask(96, 0, stor[_2940][address(msg.sender)].field_0) * balanceOf[_2957][address(msg.sender)]) + (uint256(stor[_2968].field_0) * stor[_2940][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2940][address(msg.sender)].field_0) * stor[_2940][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2940][address(msg.sender)].field_136):
                                Mask(120, 0, stor[_2940][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2940][address(msg.sender)].field_0) + (uint256(stor[_2968].field_0) * balanceOf[_2957][address(msg.sender)]) - (Mask(96, 0, stor[_2940][address(msg.sender)].field_0) * balanceOf[_2957][address(msg.sender)]) + (uint256(stor[_2968].field_0) * stor[_2940][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2940][address(msg.sender)].field_0) * stor[_2940][address(msg.sender)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_2940][address(msg.sender)].field_0) = Mask(96, 0, stor[_2968].field_0)
                    if s == -1:
                        revert with 'NH{q', 17
                    _2893 = mem[_999]
                    s = s + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
                if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                if ext_code.size(msg.sender):
                    _3033 = mem[64]
                    mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    mem[mem[64] + 132] = 160
                    _3075 = mem[_995]
                    mem[mem[64] + 164] = mem[_995]
                    s = 0
                    while s < _3075:
                        mem[s + mem[64] + 196] = mem[s + _995 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3075) <= _3075:
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_3075) + _3033 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _3867 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3867] == Mask(32, 224, mem[_3867])
                        if Mask(32, 224, mem[_3867]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        mem[_3075 + _3033 + 196] = 0
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_3075) + _3033 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _3868 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3868] == Mask(32, 224, mem[_3868])
                        if Mask(32, 224, mem[_3868]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _2894 = mem[_999]
                s = 0
                while s < _2894:
                    if s >= 1:
                        revert with 'NH{q', 50
                    if s >= mem[_999]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * s) + _999 + 32]
                    mem[32] = 4
                    if totalSupply[mem[0]] < mem[(32 * s) + _999 + 96]:
                        revert with 'NH{q', 17
                    totalSupply[mem[0]] -= mem[(32 * s) + _999 + 96]
                    if s == -1:
                        revert with 'NH{q', 17
                    _2894 = mem[_999]
                    s = s + 1
                    continue 
                _3779 = mem[_999]
                s = 0
                while s < _3779:
                    if s >= mem[_999]:
                        revert with 'NH{q', 50
                    _3817 = sha3(mem[(32 * s) + _999 + 32], 7)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * s) + _999 + 32], 7)
                    if s >= mem[_999]:
                        revert with 'NH{q', 50
                    _3824 = mem[(32 * s) + _999 + 32]
                    mem[0] = mem[(32 * s) + _999 + 32]
                    mem[32] = 8
                    _3829 = sha3(mem[0], 8)
                    if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_3817][address(msg.sender)].field_0):
                        _3854 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3854] = Mask(96, 0, stor[_3817][address(msg.sender)].field_0)
                        mem[_3854 + 32] = stor[_3817][address(msg.sender)].field_96 % 1099511627776
                        mem[_3854 + 64] = Mask(120, 0, stor[_3817][address(msg.sender)].field_136)
                        if not msg.sender:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = msg.sender
                        mem[32] = sha3(_3824, 0)
                        if balanceOf[_3824][address(msg.sender)] > !stor[_3817][address(msg.sender)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_3824][address(msg.sender)] + stor[_3817][address(msg.sender)].field_96 % 1099511627776:
                            if uint256(stor[_3829].field_0) < Mask(96, 0, stor[_3817][address(msg.sender)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_3824][address(msg.sender)] + stor[_3817][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_3829].field_0) - Mask(96, 0, stor[_3817][address(msg.sender)].field_0) > -1 / balanceOf[_3824][address(msg.sender)] + stor[_3817][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_3817][address(msg.sender)].field_0) > !((uint256(stor[_3829].field_0) * balanceOf[_3824][address(msg.sender)]) - (Mask(96, 0, stor[_3817][address(msg.sender)].field_0) * balanceOf[_3824][address(msg.sender)]) + (uint256(stor[_3829].field_0) * stor[_3817][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3817][address(msg.sender)].field_0) * stor[_3817][address(msg.sender)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_3817][address(msg.sender)].field_0) + (uint256(stor[_3829].field_0) * balanceOf[_3824][address(msg.sender)]) - (Mask(96, 0, stor[_3817][address(msg.sender)].field_0) * balanceOf[_3824][address(msg.sender)]) + (uint256(stor[_3829].field_0) * stor[_3817][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3817][address(msg.sender)].field_0) * stor[_3817][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_3817][address(msg.sender)].field_136):
                                Mask(120, 0, stor[_3817][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3817][address(msg.sender)].field_0) + (uint256(stor[_3829].field_0) * balanceOf[_3824][address(msg.sender)]) - (Mask(96, 0, stor[_3817][address(msg.sender)].field_0) * balanceOf[_3824][address(msg.sender)]) + (uint256(stor[_3829].field_0) * stor[_3817][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3817][address(msg.sender)].field_0) * stor[_3817][address(msg.sender)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_3817][address(msg.sender)].field_0) = Mask(96, 0, stor[_3829].field_0)
                    if s == -1:
                        revert with 'NH{q', 17
                    _3779 = mem[_999]
                    s = s + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
                if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                if ext_code.size(msg.sender):
                    _3874 = mem[64]
                    mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    mem[mem[64] + 132] = 160
                    _3918 = mem[_995]
                    mem[mem[64] + 164] = mem[_995]
                    s = 0
                    while s < _3918:
                        mem[s + mem[64] + 196] = mem[s + _995 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3918) <= _3918:
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_3918) + _3874 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _4563 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4563] == Mask(32, 224, mem[_4563])
                        if Mask(32, 224, mem[_4563]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        mem[_3918 + _3874 + 196] = 0
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_3918) + _3874 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _4564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4564] == Mask(32, 224, mem[_4564])
                        if Mask(32, 224, mem[_4564]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            mem[mem[64]] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            emit TokensClaimed(sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _986 = mem[64]
        mem[64] = mem[64] + 96
        mem[_986] = Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0)
        mem[_986 + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
        mem[_986 + 64] = Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_136)
        if not msg.sender:
            revert with 0, 'ERC1155: balance query for the zero address'
        if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
            revert with 'NH{q', 17
        if not balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] + sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
            Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) = Mask(96, 0, stor8[cd[((32 * idx) + cd[4] + 36)]])
            if not sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                revert with 0, 'DropperToken: nothing to claim'
            sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776 = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 9
            if sub_b895393b[cd[((32 * idx) + cd[4] + 36)]] < sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            sub_b895393b[cd[((32 * idx) + cd[4] + 36)]] -= sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            if Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_136) != Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_136):
                _1012 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1012] = 0
                if not msg.sender:
                    revert with 0, 'ERC1155: mint to the zero address'
                _1018 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_1018]:
                    revert with 'NH{q', 50
                mem[_1018 + 32] = cd[((32 * idx) + cd[4] + 36)]
                mem[_1018 + 64] = 1
                mem[64] = _1018 + 128
                mem[_1018 + 96] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                _1966 = mem[_1018]
                s = 0
                while s < _1966:
                    if s >= 1:
                        revert with 'NH{q', 50
                    if s >= mem[_1018]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * s) + _1018 + 32]
                    mem[32] = 4
                    if totalSupply[mem[0]] > !mem[(32 * s) + _1018 + 96]:
                        revert with 'NH{q', 17
                    totalSupply[mem[0]] += mem[(32 * s) + _1018 + 96]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if msg.sender:
                    _2887 = mem[_1018]
                    s = 0
                    while s < _2887:
                        if s >= mem[_1018]:
                            revert with 'NH{q', 50
                        _2916 = sha3(mem[(32 * s) + _1018 + 32], 7)
                        mem[0] = msg.sender
                        mem[32] = sha3(mem[(32 * s) + _1018 + 32], 7)
                        if s >= mem[_1018]:
                            revert with 'NH{q', 50
                        _2948 = mem[(32 * s) + _1018 + 32]
                        mem[0] = mem[(32 * s) + _1018 + 32]
                        mem[32] = 8
                        _2962 = sha3(mem[0], 8)
                        if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_2916][address(msg.sender)].field_0):
                            _2976 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2976] = Mask(96, 0, stor[_2916][address(msg.sender)].field_0)
                            mem[_2976 + 32] = stor[_2916][address(msg.sender)].field_96 % 1099511627776
                            mem[_2976 + 64] = Mask(120, 0, stor[_2916][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_2948, 0)
                            if balanceOf[_2948][address(msg.sender)] > !stor[_2916][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_2948][address(msg.sender)] + stor[_2916][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_2962].field_0) < Mask(96, 0, stor[_2916][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_2948][address(msg.sender)] + stor[_2916][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2962].field_0) - Mask(96, 0, stor[_2916][address(msg.sender)].field_0) > -1 / balanceOf[_2948][address(msg.sender)] + stor[_2916][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2916][address(msg.sender)].field_0) > !((uint256(stor[_2962].field_0) * balanceOf[_2948][address(msg.sender)]) - (Mask(96, 0, stor[_2916][address(msg.sender)].field_0) * balanceOf[_2948][address(msg.sender)]) + (uint256(stor[_2962].field_0) * stor[_2916][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2916][address(msg.sender)].field_0) * stor[_2916][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2916][address(msg.sender)].field_0) + (uint256(stor[_2962].field_0) * balanceOf[_2948][address(msg.sender)]) - (Mask(96, 0, stor[_2916][address(msg.sender)].field_0) * balanceOf[_2948][address(msg.sender)]) + (uint256(stor[_2962].field_0) * stor[_2916][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2916][address(msg.sender)].field_0) * stor[_2916][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2916][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_2916][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2916][address(msg.sender)].field_0) + (uint256(stor[_2962].field_0) * balanceOf[_2948][address(msg.sender)]) - (Mask(96, 0, stor[_2916][address(msg.sender)].field_0) * balanceOf[_2948][address(msg.sender)]) + (uint256(stor[_2962].field_0) * stor[_2916][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2916][address(msg.sender)].field_0) * stor[_2916][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_2916][address(msg.sender)].field_0) = Mask(96, 0, stor[_2962].field_0)
                        if s == -1:
                            revert with 'NH{q', 17
                        _2887 = mem[_1018]
                        s = s + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        _3027 = mem[64]
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _3060 = mem[_1012]
                        mem[mem[64] + 164] = mem[_1012]
                        s = 0
                        while s < _3060:
                            mem[s + mem[64] + 196] = mem[s + _1012 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3060) <= _3060:
                            call msg.sender.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3060) + _3027 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3858 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3858] == Mask(32, 224, mem[_3858])
                            if Mask(32, 224, mem[_3858]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[_3060 + _3027 + 196] = 0
                            call msg.sender.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3060) + _3027 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3859] == Mask(32, 224, mem[_3859])
                            if Mask(32, 224, mem[_3859]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    _2888 = mem[_1018]
                    s = 0
                    while s < _2888:
                        if s >= 1:
                            revert with 'NH{q', 50
                        if s >= mem[_1018]:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * s) + _1018 + 32]
                        mem[32] = 4
                        if totalSupply[mem[0]] < mem[(32 * s) + _1018 + 96]:
                            revert with 'NH{q', 17
                        totalSupply[mem[0]] -= mem[(32 * s) + _1018 + 96]
                        if s == -1:
                            revert with 'NH{q', 17
                        _2888 = mem[_1018]
                        s = s + 1
                        continue 
                    _3776 = mem[_1018]
                    s = 0
                    while s < _3776:
                        if s >= mem[_1018]:
                            revert with 'NH{q', 50
                        _3799 = sha3(mem[(32 * s) + _1018 + 32], 7)
                        mem[0] = msg.sender
                        mem[32] = sha3(mem[(32 * s) + _1018 + 32], 7)
                        if s >= mem[_1018]:
                            revert with 'NH{q', 50
                        _3821 = mem[(32 * s) + _1018 + 32]
                        mem[0] = mem[(32 * s) + _1018 + 32]
                        mem[32] = 8
                        _3826 = sha3(mem[0], 8)
                        if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_3799][address(msg.sender)].field_0):
                            _3839 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3839] = Mask(96, 0, stor[_3799][address(msg.sender)].field_0)
                            mem[_3839 + 32] = stor[_3799][address(msg.sender)].field_96 % 1099511627776
                            mem[_3839 + 64] = Mask(120, 0, stor[_3799][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_3821, 0)
                            if balanceOf[_3821][address(msg.sender)] > !stor[_3799][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3821][address(msg.sender)] + stor[_3799][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_3826].field_0) < Mask(96, 0, stor[_3799][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3821][address(msg.sender)] + stor[_3799][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_3826].field_0) - Mask(96, 0, stor[_3799][address(msg.sender)].field_0) > -1 / balanceOf[_3821][address(msg.sender)] + stor[_3799][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3799][address(msg.sender)].field_0) > !((uint256(stor[_3826].field_0) * balanceOf[_3821][address(msg.sender)]) - (Mask(96, 0, stor[_3799][address(msg.sender)].field_0) * balanceOf[_3821][address(msg.sender)]) + (uint256(stor[_3826].field_0) * stor[_3799][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3799][address(msg.sender)].field_0) * stor[_3799][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3799][address(msg.sender)].field_0) + (uint256(stor[_3826].field_0) * balanceOf[_3821][address(msg.sender)]) - (Mask(96, 0, stor[_3799][address(msg.sender)].field_0) * balanceOf[_3821][address(msg.sender)]) + (uint256(stor[_3826].field_0) * stor[_3799][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3799][address(msg.sender)].field_0) * stor[_3799][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_3799][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_3799][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3799][address(msg.sender)].field_0) + (uint256(stor[_3826].field_0) * balanceOf[_3821][address(msg.sender)]) - (Mask(96, 0, stor[_3799][address(msg.sender)].field_0) * balanceOf[_3821][address(msg.sender)]) + (uint256(stor[_3826].field_0) * stor[_3799][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3799][address(msg.sender)].field_0) * stor[_3799][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3799][address(msg.sender)].field_0) = Mask(96, 0, stor[_3826].field_0)
                        if s == -1:
                            revert with 'NH{q', 17
                        _3776 = mem[_1018]
                        s = s + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _3906 = mem[_1012]
                        mem[mem[64] + 164] = mem[_1012]
                        s = 0
                        while s < _3906:
                            mem[s + mem[64] + 196] = mem[s + _1012 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3906) <= _3906:
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_3906) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4557 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4557] == Mask(32, 224, mem[_4557])
                            if Mask(32, 224, mem[_4557]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[_3906 + mem[64] + 196] = 0
                            call msg.sender.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0 % 1099511627776, 160, mem[mem[64] + 164 len ceil32(_3906) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4558 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4558] == Mask(32, 224, mem[_4558])
                            if Mask(32, 224, mem[_4558]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _1011 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1011] = 0
                if not msg.sender:
                    revert with 0, 'ERC1155: mint to the zero address'
                _1014 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_1014]:
                    revert with 'NH{q', 50
                mem[_1014 + 32] = cd[((32 * idx) + cd[4] + 36)]
                mem[_1014 + 64] = 1
                mem[64] = _1014 + 128
                mem[_1014 + 96] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                _1965 = mem[_1014]
                s = 0
                while s < _1965:
                    if s >= 1:
                        revert with 'NH{q', 50
                    if s >= mem[_1014]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * s) + _1014 + 32]
                    mem[32] = 4
                    if totalSupply[mem[0]] > !mem[(32 * s) + _1014 + 96]:
                        revert with 'NH{q', 17
                    totalSupply[mem[0]] += mem[(32 * s) + _1014 + 96]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if msg.sender:
                    _2885 = mem[_1014]
                    s = 0
                    while s < _2885:
                        if s >= mem[_1014]:
                            revert with 'NH{q', 50
                        _2908 = sha3(mem[(32 * s) + _1014 + 32], 7)
                        mem[0] = msg.sender
                        mem[32] = sha3(mem[(32 * s) + _1014 + 32], 7)
                        if s >= mem[_1014]:
                            revert with 'NH{q', 50
                        _2945 = mem[(32 * s) + _1014 + 32]
                        mem[0] = mem[(32 * s) + _1014 + 32]
                        mem[32] = 8
                        _2960 = sha3(mem[0], 8)
                        if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_2908][address(msg.sender)].field_0):
                            _2972 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_2972] = Mask(96, 0, stor[_2908][address(msg.sender)].field_0)
                            mem[_2972 + 32] = stor[_2908][address(msg.sender)].field_96 % 1099511627776
                            mem[_2972 + 64] = Mask(120, 0, stor[_2908][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_2945, 0)
                            if balanceOf[_2945][address(msg.sender)] > !stor[_2908][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_2945][address(msg.sender)] + stor[_2908][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_2960].field_0) < Mask(96, 0, stor[_2908][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_2945][address(msg.sender)] + stor[_2908][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2960].field_0) - Mask(96, 0, stor[_2908][address(msg.sender)].field_0) > -1 / balanceOf[_2945][address(msg.sender)] + stor[_2908][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2908][address(msg.sender)].field_0) > !((uint256(stor[_2960].field_0) * balanceOf[_2945][address(msg.sender)]) - (Mask(96, 0, stor[_2908][address(msg.sender)].field_0) * balanceOf[_2945][address(msg.sender)]) + (uint256(stor[_2960].field_0) * stor[_2908][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2908][address(msg.sender)].field_0) * stor[_2908][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_2908][address(msg.sender)].field_0) + (uint256(stor[_2960].field_0) * balanceOf[_2945][address(msg.sender)]) - (Mask(96, 0, stor[_2908][address(msg.sender)].field_0) * balanceOf[_2945][address(msg.sender)]) + (uint256(stor[_2960].field_0) * stor[_2908][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2908][address(msg.sender)].field_0) * stor[_2908][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2908][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_2908][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2908][address(msg.sender)].field_0) + (uint256(stor[_2960].field_0) * balanceOf[_2945][address(msg.sender)]) - (Mask(96, 0, stor[_2908][address(msg.sender)].field_0) * balanceOf[_2945][address(msg.sender)]) + (uint256(stor[_2960].field_0) * stor[_2908][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2908][address(msg.sender)].field_0) * stor[_2908][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_2908][address(msg.sender)].field_0) = Mask(96, 0, stor[_2960].field_0)
                        if s == -1:
                            revert with 'NH{q', 17
                        _2885 = mem[_1014]
                        s = s + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        _3025 = mem[64]
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _3055 = mem[_1011]
                        mem[mem[64] + 164] = mem[_1011]
                        s = 0
                        while s < _3055:
                            mem[s + mem[64] + 196] = mem[s + _1011 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3055) <= _3055:
                            call msg.sender.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3055) + _3025 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3855 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3855] == Mask(32, 224, mem[_3855])
                            if Mask(32, 224, mem[_3855]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[_3055 + _3025 + 196] = 0
                            call msg.sender.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3055) + _3025 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3856 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3856] == Mask(32, 224, mem[_3856])
                            if Mask(32, 224, mem[_3856]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    _2886 = mem[_1014]
                    s = 0
                    while s < _2886:
                        if s >= 1:
                            revert with 'NH{q', 50
                        if s >= mem[_1014]:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * s) + _1014 + 32]
                        mem[32] = 4
                        if totalSupply[mem[0]] < mem[(32 * s) + _1014 + 96]:
                            revert with 'NH{q', 17
                        totalSupply[mem[0]] -= mem[(32 * s) + _1014 + 96]
                        if s == -1:
                            revert with 'NH{q', 17
                        _2886 = mem[_1014]
                        s = s + 1
                        continue 
                    _3775 = mem[_1014]
                    s = 0
                    while s < _3775:
                        if s >= mem[_1014]:
                            revert with 'NH{q', 50
                        _3793 = sha3(mem[(32 * s) + _1014 + 32], 7)
                        mem[0] = msg.sender
                        mem[32] = sha3(mem[(32 * s) + _1014 + 32], 7)
                        if s >= mem[_1014]:
                            revert with 'NH{q', 50
                        _3820 = mem[(32 * s) + _1014 + 32]
                        mem[0] = mem[(32 * s) + _1014 + 32]
                        mem[32] = 8
                        _3825 = sha3(mem[0], 8)
                        if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_3793][address(msg.sender)].field_0):
                            _3834 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3834] = Mask(96, 0, stor[_3793][address(msg.sender)].field_0)
                            mem[_3834 + 32] = stor[_3793][address(msg.sender)].field_96 % 1099511627776
                            mem[_3834 + 64] = Mask(120, 0, stor[_3793][address(msg.sender)].field_136)
                            if not msg.sender:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = msg.sender
                            mem[32] = sha3(_3820, 0)
                            if balanceOf[_3820][address(msg.sender)] > !stor[_3793][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3820][address(msg.sender)] + stor[_3793][address(msg.sender)].field_96 % 1099511627776:
                                if uint256(stor[_3825].field_0) < Mask(96, 0, stor[_3793][address(msg.sender)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3820][address(msg.sender)] + stor[_3793][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_3825].field_0) - Mask(96, 0, stor[_3793][address(msg.sender)].field_0) > -1 / balanceOf[_3820][address(msg.sender)] + stor[_3793][address(msg.sender)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3793][address(msg.sender)].field_0) > !((uint256(stor[_3825].field_0) * balanceOf[_3820][address(msg.sender)]) - (Mask(96, 0, stor[_3793][address(msg.sender)].field_0) * balanceOf[_3820][address(msg.sender)]) + (uint256(stor[_3825].field_0) * stor[_3793][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3793][address(msg.sender)].field_0) * stor[_3793][address(msg.sender)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3793][address(msg.sender)].field_0) + (uint256(stor[_3825].field_0) * balanceOf[_3820][address(msg.sender)]) - (Mask(96, 0, stor[_3793][address(msg.sender)].field_0) * balanceOf[_3820][address(msg.sender)]) + (uint256(stor[_3825].field_0) * stor[_3793][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3793][address(msg.sender)].field_0) * stor[_3793][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_3793][address(msg.sender)].field_136):
                                    Mask(120, 0, stor[_3793][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3793][address(msg.sender)].field_0) + (uint256(stor[_3825].field_0) * balanceOf[_3820][address(msg.sender)]) - (Mask(96, 0, stor[_3793][address(msg.sender)].field_0) * balanceOf[_3820][address(msg.sender)]) + (uint256(stor[_3825].field_0) * stor[_3793][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3793][address(msg.sender)].field_0) * stor[_3793][address(msg.sender)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3793][address(msg.sender)].field_0) = Mask(96, 0, stor[_3825].field_0)
                        if s == -1:
                            revert with 'NH{q', 17
                        _3775 = mem[_1014]
                        s = s + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                    if ext_code.size(msg.sender):
                        _3870 = mem[64]
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                        mem[mem[64] + 132] = 160
                        _3902 = mem[_1011]
                        mem[mem[64] + 164] = mem[_1011]
                        s = 0
                        while s < _3902:
                            mem[s + mem[64] + 196] = mem[s + _1011 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3902) <= _3902:
                            call msg.sender.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3902) + _3870 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4555 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4555] == Mask(32, 224, mem[_4555])
                            if Mask(32, 224, mem[_4555]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[_3902 + _3870 + 196] = 0
                            call msg.sender.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3902) + _3870 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4556 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4556] == Mask(32, 224, mem[_4556])
                            if Mask(32, 224, mem[_4556]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            mem[mem[64]] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            emit TokensClaimed(sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) < Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0):
            revert with 'NH{q', 17
        if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] + sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776 and uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) - Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) > -1 / balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] + sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
            revert with 'NH{q', 17
        if Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) > !((uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776)):
            revert with 'NH{q', 17
        if Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776) == Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_136):
            Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) = Mask(96, 0, stor8[cd[((32 * idx) + cd[4] + 36)]])
            if not sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                revert with 0, 'DropperToken: nothing to claim'
            sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776 = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 9
            if sub_b895393b[cd[((32 * idx) + cd[4] + 36)]] < sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            sub_b895393b[cd[((32 * idx) + cd[4] + 36)]] -= sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            _1038 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1038] = 0
            if not msg.sender:
                revert with 0, 'ERC1155: mint to the zero address'
            _1047 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_1047]:
                revert with 'NH{q', 50
            mem[_1047 + 32] = cd[((32 * idx) + cd[4] + 36)]
            mem[_1047 + 64] = 1
            mem[64] = _1047 + 128
            mem[_1047 + 96] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            _1967 = mem[_1047]
            s = 0
            while s < _1967:
                if s >= 1:
                    revert with 'NH{q', 50
                if s >= mem[_1047]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * s) + _1047 + 32]
                mem[32] = 4
                if totalSupply[mem[0]] > !mem[(32 * s) + _1047 + 96]:
                    revert with 'NH{q', 17
                totalSupply[mem[0]] += mem[(32 * s) + _1047 + 96]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if msg.sender:
                _2889 = mem[_1047]
                s = 0
                while s < _2889:
                    if s >= mem[_1047]:
                        revert with 'NH{q', 50
                    _2924 = sha3(mem[(32 * s) + _1047 + 32], 7)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * s) + _1047 + 32], 7)
                    if s >= mem[_1047]:
                        revert with 'NH{q', 50
                    _2951 = mem[(32 * s) + _1047 + 32]
                    mem[0] = mem[(32 * s) + _1047 + 32]
                    mem[32] = 8
                    _2964 = sha3(mem[0], 8)
                    if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_2924][address(msg.sender)].field_0):
                        _2980 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_2980] = Mask(96, 0, stor[_2924][address(msg.sender)].field_0)
                        mem[_2980 + 32] = stor[_2924][address(msg.sender)].field_96 % 1099511627776
                        mem[_2980 + 64] = Mask(120, 0, stor[_2924][address(msg.sender)].field_136)
                        if not msg.sender:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = msg.sender
                        mem[32] = sha3(_2951, 0)
                        if balanceOf[_2951][address(msg.sender)] > !stor[_2924][address(msg.sender)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_2951][address(msg.sender)] + stor[_2924][address(msg.sender)].field_96 % 1099511627776:
                            if uint256(stor[_2964].field_0) < Mask(96, 0, stor[_2924][address(msg.sender)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_2951][address(msg.sender)] + stor[_2924][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2964].field_0) - Mask(96, 0, stor[_2924][address(msg.sender)].field_0) > -1 / balanceOf[_2951][address(msg.sender)] + stor[_2924][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_2924][address(msg.sender)].field_0) > !((uint256(stor[_2964].field_0) * balanceOf[_2951][address(msg.sender)]) - (Mask(96, 0, stor[_2924][address(msg.sender)].field_0) * balanceOf[_2951][address(msg.sender)]) + (uint256(stor[_2964].field_0) * stor[_2924][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2924][address(msg.sender)].field_0) * stor[_2924][address(msg.sender)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_2924][address(msg.sender)].field_0) + (uint256(stor[_2964].field_0) * balanceOf[_2951][address(msg.sender)]) - (Mask(96, 0, stor[_2924][address(msg.sender)].field_0) * balanceOf[_2951][address(msg.sender)]) + (uint256(stor[_2964].field_0) * stor[_2924][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2924][address(msg.sender)].field_0) * stor[_2924][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2924][address(msg.sender)].field_136):
                                Mask(120, 0, stor[_2924][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2924][address(msg.sender)].field_0) + (uint256(stor[_2964].field_0) * balanceOf[_2951][address(msg.sender)]) - (Mask(96, 0, stor[_2924][address(msg.sender)].field_0) * balanceOf[_2951][address(msg.sender)]) + (uint256(stor[_2964].field_0) * stor[_2924][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2924][address(msg.sender)].field_0) * stor[_2924][address(msg.sender)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_2924][address(msg.sender)].field_0) = Mask(96, 0, stor[_2964].field_0)
                    if s == -1:
                        revert with 'NH{q', 17
                    _2889 = mem[_1047]
                    s = s + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
                if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                if ext_code.size(msg.sender):
                    _3029 = mem[64]
                    mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    mem[mem[64] + 132] = 160
                    _3065 = mem[_1038]
                    mem[mem[64] + 164] = mem[_1038]
                    s = 0
                    while s < _3065:
                        mem[s + mem[64] + 196] = mem[s + _1038 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3065) <= _3065:
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_3065) + _3029 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _3861 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3861] == Mask(32, 224, mem[_3861])
                        if Mask(32, 224, mem[_3861]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        mem[_3065 + _3029 + 196] = 0
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_3065) + _3029 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _3862 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3862] == Mask(32, 224, mem[_3862])
                        if Mask(32, 224, mem[_3862]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _2890 = mem[_1047]
                s = 0
                while s < _2890:
                    if s >= 1:
                        revert with 'NH{q', 50
                    if s >= mem[_1047]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * s) + _1047 + 32]
                    mem[32] = 4
                    if totalSupply[mem[0]] < mem[(32 * s) + _1047 + 96]:
                        revert with 'NH{q', 17
                    totalSupply[mem[0]] -= mem[(32 * s) + _1047 + 96]
                    if s == -1:
                        revert with 'NH{q', 17
                    _2890 = mem[_1047]
                    s = s + 1
                    continue 
                _3777 = mem[_1047]
                s = 0
                while s < _3777:
                    if s >= mem[_1047]:
                        revert with 'NH{q', 50
                    _3805 = sha3(mem[(32 * s) + _1047 + 32], 7)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * s) + _1047 + 32], 7)
                    if s >= mem[_1047]:
                        revert with 'NH{q', 50
                    _3822 = mem[(32 * s) + _1047 + 32]
                    mem[0] = mem[(32 * s) + _1047 + 32]
                    mem[32] = 8
                    _3827 = sha3(mem[0], 8)
                    if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_3805][address(msg.sender)].field_0):
                        _3844 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3844] = Mask(96, 0, stor[_3805][address(msg.sender)].field_0)
                        mem[_3844 + 32] = stor[_3805][address(msg.sender)].field_96 % 1099511627776
                        mem[_3844 + 64] = Mask(120, 0, stor[_3805][address(msg.sender)].field_136)
                        if not msg.sender:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = msg.sender
                        mem[32] = sha3(_3822, 0)
                        if balanceOf[_3822][address(msg.sender)] > !stor[_3805][address(msg.sender)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_3822][address(msg.sender)] + stor[_3805][address(msg.sender)].field_96 % 1099511627776:
                            if uint256(stor[_3827].field_0) < Mask(96, 0, stor[_3805][address(msg.sender)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_3822][address(msg.sender)] + stor[_3805][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_3827].field_0) - Mask(96, 0, stor[_3805][address(msg.sender)].field_0) > -1 / balanceOf[_3822][address(msg.sender)] + stor[_3805][address(msg.sender)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_3805][address(msg.sender)].field_0) > !((uint256(stor[_3827].field_0) * balanceOf[_3822][address(msg.sender)]) - (Mask(96, 0, stor[_3805][address(msg.sender)].field_0) * balanceOf[_3822][address(msg.sender)]) + (uint256(stor[_3827].field_0) * stor[_3805][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3805][address(msg.sender)].field_0) * stor[_3805][address(msg.sender)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_3805][address(msg.sender)].field_0) + (uint256(stor[_3827].field_0) * balanceOf[_3822][address(msg.sender)]) - (Mask(96, 0, stor[_3805][address(msg.sender)].field_0) * balanceOf[_3822][address(msg.sender)]) + (uint256(stor[_3827].field_0) * stor[_3805][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3805][address(msg.sender)].field_0) * stor[_3805][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_3805][address(msg.sender)].field_136):
                                Mask(120, 0, stor[_3805][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3805][address(msg.sender)].field_0) + (uint256(stor[_3827].field_0) * balanceOf[_3822][address(msg.sender)]) - (Mask(96, 0, stor[_3805][address(msg.sender)].field_0) * balanceOf[_3822][address(msg.sender)]) + (uint256(stor[_3827].field_0) * stor[_3805][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3805][address(msg.sender)].field_0) * stor[_3805][address(msg.sender)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_3805][address(msg.sender)].field_0) = Mask(96, 0, stor[_3827].field_0)
                    if s == -1:
                        revert with 'NH{q', 17
                    _3777 = mem[_1047]
                    s = s + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
                if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
                if ext_code.size(msg.sender):
                    _3872 = mem[64]
                    mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                    mem[mem[64] + 132] = 160
                    _3910 = mem[_1038]
                    mem[mem[64] + 164] = mem[_1038]
                    s = 0
                    while s < _3910:
                        mem[s + mem[64] + 196] = mem[s + _1038 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3910) <= _3910:
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_3910) + _3872 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _4559 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4559] == Mask(32, 224, mem[_4559])
                        if Mask(32, 224, mem[_4559]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    else:
                        mem[_3910 + _3872 + 196] = 0
                        call msg.sender.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(_3910) + _3872 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _4560 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4560] == Mask(32, 224, mem[_4560])
                        if Mask(32, 224, mem[_4560]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            mem[mem[64]] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            emit TokensClaimed(sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_136) = Mask(120, 0, Mask(120, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) * balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)]) + (uint256(stor8[cd[((32 * idx) + cd[4] + 36)]]) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776) - (Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) * sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776))
        Mask(96, 0, sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_0) = Mask(96, 0, stor8[cd[((32 * idx) + cd[4] + 36)]])
        if not sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
            revert with 0, 'DropperToken: nothing to claim'
        sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776 = 0
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 9
        if sub_b895393b[cd[((32 * idx) + cd[4] + 36)]] < sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
            revert with 'NH{q', 17
        sub_b895393b[cd[((32 * idx) + cd[4] + 36)]] -= sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
        _1040 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1040] = 0
        if not msg.sender:
            revert with 0, 'ERC1155: mint to the zero address'
        _1053 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_1053]:
            revert with 'NH{q', 50
        mem[_1053 + 32] = cd[((32 * idx) + cd[4] + 36)]
        mem[_1053 + 64] = 1
        mem[64] = _1053 + 128
        mem[_1053 + 96] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
        _1968 = mem[_1053]
        s = 0
        while s < _1968:
            if s >= 1:
                revert with 'NH{q', 50
            if s >= mem[_1053]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * s) + _1053 + 32]
            mem[32] = 4
            if totalSupply[mem[0]] > !mem[(32 * s) + _1053 + 96]:
                revert with 'NH{q', 17
            totalSupply[mem[0]] += mem[(32 * s) + _1053 + 96]
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if msg.sender:
            _2891 = mem[_1053]
            s = 0
            while s < _2891:
                if s >= mem[_1053]:
                    revert with 'NH{q', 50
                _2932 = sha3(mem[(32 * s) + _1053 + 32], 7)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * s) + _1053 + 32], 7)
                if s >= mem[_1053]:
                    revert with 'NH{q', 50
                _2954 = mem[(32 * s) + _1053 + 32]
                mem[0] = mem[(32 * s) + _1053 + 32]
                mem[32] = 8
                _2966 = sha3(mem[0], 8)
                if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_2932][address(msg.sender)].field_0):
                    _2984 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2984] = Mask(96, 0, stor[_2932][address(msg.sender)].field_0)
                    mem[_2984 + 32] = stor[_2932][address(msg.sender)].field_96 % 1099511627776
                    mem[_2984 + 64] = Mask(120, 0, stor[_2932][address(msg.sender)].field_136)
                    if not msg.sender:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = msg.sender
                    mem[32] = sha3(_2954, 0)
                    if balanceOf[_2954][address(msg.sender)] > !stor[_2932][address(msg.sender)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_2954][address(msg.sender)] + stor[_2932][address(msg.sender)].field_96 % 1099511627776:
                        if uint256(stor[_2966].field_0) < Mask(96, 0, stor[_2932][address(msg.sender)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_2954][address(msg.sender)] + stor[_2932][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_2966].field_0) - Mask(96, 0, stor[_2932][address(msg.sender)].field_0) > -1 / balanceOf[_2954][address(msg.sender)] + stor[_2932][address(msg.sender)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_2932][address(msg.sender)].field_0) > !((uint256(stor[_2966].field_0) * balanceOf[_2954][address(msg.sender)]) - (Mask(96, 0, stor[_2932][address(msg.sender)].field_0) * balanceOf[_2954][address(msg.sender)]) + (uint256(stor[_2966].field_0) * stor[_2932][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2932][address(msg.sender)].field_0) * stor[_2932][address(msg.sender)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_2932][address(msg.sender)].field_0) + (uint256(stor[_2966].field_0) * balanceOf[_2954][address(msg.sender)]) - (Mask(96, 0, stor[_2932][address(msg.sender)].field_0) * balanceOf[_2954][address(msg.sender)]) + (uint256(stor[_2966].field_0) * stor[_2932][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2932][address(msg.sender)].field_0) * stor[_2932][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_2932][address(msg.sender)].field_136):
                            Mask(120, 0, stor[_2932][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_2932][address(msg.sender)].field_0) + (uint256(stor[_2966].field_0) * balanceOf[_2954][address(msg.sender)]) - (Mask(96, 0, stor[_2932][address(msg.sender)].field_0) * balanceOf[_2954][address(msg.sender)]) + (uint256(stor[_2966].field_0) * stor[_2932][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_2932][address(msg.sender)].field_0) * stor[_2932][address(msg.sender)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_2932][address(msg.sender)].field_0) = Mask(96, 0, stor[_2966].field_0)
                if s == -1:
                    revert with 'NH{q', 17
                _2891 = mem[_1053]
                s = s + 1
                continue 
            mem[0] = msg.sender
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 0)
            if balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
                revert with 'NH{q', 17
            balanceOf[cd[((32 * idx) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            emit TransferSingle(cd[((32 * idx) + cd[4] + 36)], sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
            if ext_code.size(msg.sender):
                _3031 = mem[64]
                mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
                mem[mem[64] + 132] = 160
                _3070 = mem[_1040]
                mem[mem[64] + 164] = mem[_1040]
                s = 0
                while s < _3070:
                    mem[s + mem[64] + 196] = mem[s + _1040 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3070) <= _3070:
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_3070) + _3031 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _3864 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3864] == Mask(32, 224, mem[_3864])
                    if Mask(32, 224, mem[_3864]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[_3070 + _3031 + 196] = 0
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_3070) + _3031 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _3865 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3865] == Mask(32, 224, mem[_3865])
                    if Mask(32, 224, mem[_3865]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            mem[mem[64]] = sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            emit TokensClaimed(sub_1a44f22d[cd[((32 * idx) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _2892 = mem[_1053]
        s = 0
        while s < _2892:
            if s >= 1:
                revert with 'NH{q', 50
            if s >= mem[_1053]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * s) + _1053 + 32]
            mem[32] = 4
            if totalSupply[mem[0]] < mem[(32 * s) + _1053 + 96]:
                revert with 'NH{q', 17
            totalSupply[mem[0]] -= mem[(32 * s) + _1053 + 96]
            if s == -1:
                revert with 'NH{q', 17
            _2892 = mem[_1053]
            s = s + 1
            continue 
        _3778 = mem[_1053]
        s = 0
        while s < _3778:
            if s >= mem[_1053]:
                revert with 'NH{q', 50
            _3811 = sha3(mem[(32 * s) + _1053 + 32], 7)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * s) + _1053 + 32], 7)
            if s >= mem[_1053]:
                revert with 'NH{q', 50
            _3823 = mem[(32 * s) + _1053 + 32]
            mem[0] = mem[(32 * s) + _1053 + 32]
            mem[32] = 8
            _3828 = sha3(mem[0], 8)
            if uint256(stor8[mem[0]]) != Mask(96, 0, stor[_3811][address(msg.sender)].field_0):
                _3849 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3849] = Mask(96, 0, stor[_3811][address(msg.sender)].field_0)
                mem[_3849 + 32] = stor[_3811][address(msg.sender)].field_96 % 1099511627776
                mem[_3849 + 64] = Mask(120, 0, stor[_3811][address(msg.sender)].field_136)
                if not msg.sender:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = msg.sender
                mem[32] = sha3(_3823, 0)
                if balanceOf[_3823][address(msg.sender)] > !stor[_3811][address(msg.sender)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if balanceOf[_3823][address(msg.sender)] + stor[_3811][address(msg.sender)].field_96 % 1099511627776:
                    if uint256(stor[_3828].field_0) < Mask(96, 0, stor[_3811][address(msg.sender)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[_3823][address(msg.sender)] + stor[_3811][address(msg.sender)].field_96 % 1099511627776 and uint256(stor[_3828].field_0) - Mask(96, 0, stor[_3811][address(msg.sender)].field_0) > -1 / balanceOf[_3823][address(msg.sender)] + stor[_3811][address(msg.sender)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_3811][address(msg.sender)].field_0) > !((uint256(stor[_3828].field_0) * balanceOf[_3823][address(msg.sender)]) - (Mask(96, 0, stor[_3811][address(msg.sender)].field_0) * balanceOf[_3823][address(msg.sender)]) + (uint256(stor[_3828].field_0) * stor[_3811][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3811][address(msg.sender)].field_0) * stor[_3811][address(msg.sender)].field_96 % 1099511627776)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_3811][address(msg.sender)].field_0) + (uint256(stor[_3828].field_0) * balanceOf[_3823][address(msg.sender)]) - (Mask(96, 0, stor[_3811][address(msg.sender)].field_0) * balanceOf[_3823][address(msg.sender)]) + (uint256(stor[_3828].field_0) * stor[_3811][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3811][address(msg.sender)].field_0) * stor[_3811][address(msg.sender)].field_96 % 1099511627776) != Mask(120, 0, stor[_3811][address(msg.sender)].field_136):
                        Mask(120, 0, stor[_3811][address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3811][address(msg.sender)].field_0) + (uint256(stor[_3828].field_0) * balanceOf[_3823][address(msg.sender)]) - (Mask(96, 0, stor[_3811][address(msg.sender)].field_0) * balanceOf[_3823][address(msg.sender)]) + (uint256(stor[_3828].field_0) * stor[_3811][address(msg.sender)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3811][address(msg.sender)].field_0) * stor[_3811][address(msg.sender)].field_96 % 1099511627776))
                Mask(96, 0, stor[_3811][address(msg.sender)].field_0) = Mask(96, 0, stor[_3828].field_0)
            if s == -1:
                revert with 'NH{q', 17
            _3778 = mem[_1053]
            s = s + 1
            continue 
        mem[0] = msg.sender
        mem[32] = sha3(cd[((32 * s) + cd[4] + 36)], 0)
        if balanceOf[cd[((32 * s) + cd[4] + 36)]][address(msg.sender)] > !sub_1a44f22d[cd[((32 * s) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776:
            revert with 'NH{q', 17
        balanceOf[cd[((32 * s) + cd[4] + 36)]][address(msg.sender)] += sub_1a44f22d[cd[((32 * s) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
        mem[mem[64] + 32] = sub_1a44f22d[cd[((32 * s) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
        emit TransferSingle(cd[((32 * s) + cd[4] + 36)], sub_1a44f22d[cd[((32 * s) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, 0, msg.sender);
        if ext_code.size(msg.sender):
            _3873 = mem[64]
            mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = cd[((32 * s) + cd[4] + 36)]
            mem[mem[64] + 100] = sub_1a44f22d[cd[((32 * s) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
            mem[mem[64] + 132] = 160
            _3914 = mem[_1040]
            mem[mem[64] + 164] = mem[_1040]
            idx = 0
            while idx < _3914:
                mem[idx + mem[64] + 196] = mem[idx + _1040 + 32]
                idx = idx + 32
                continue 
            if ceil32(_3914) <= _3914:
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_3914) + _3873 + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _4561 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4561] == Mask(32, 224, mem[_4561])
                if Mask(32, 224, mem[_4561]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[_3914 + _3873 + 196] = 0
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_3914) + _3873 + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _4562 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4562] == Mask(32, 224, mem[_4562])
                if Mask(32, 224, mem[_4562]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        mem[mem[64]] = sub_1a44f22d[cd[((32 * s) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776
        emit TokensClaimed(sub_1a44f22d[cd[((32 * s) + cd[4] + 36)]][msg.sender].field_96 % 1099511627776, msg.sender, cd[((32 * s) + cd[4] + 36)]);
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    if msg.sender == arg1:
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[64] = ceil32(ceil32(arg5.length)) + 225
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if arg1:
            if arg2:
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _1569 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _1598 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _1617 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _1630 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1630] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_1630 + 32] = stor[_1569][address(arg2)].field_96 % 1099511627776
                            mem[_1630 + 64] = Mask(120, 0, stor[_1569][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_1598, 0)
                            if balanceOf[_1598][address(arg2)] > !stor[_1569][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_1598][address(arg2)] + stor[_1569][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_1617].field_0) < Mask(96, 0, stor[_1569][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_1598][address(arg2)] + stor[_1569][address(arg2)].field_96 % 1099511627776 and uint256(stor[_1617].field_0) - Mask(96, 0, stor[_1569][address(arg2)].field_0) > -1 / balanceOf[_1598][address(arg2)] + stor[_1569][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1569][address(arg2)].field_0) > !((uint256(stor[_1617].field_0) * balanceOf[_1598][address(arg2)]) - (Mask(96, 0, stor[_1569][address(arg2)].field_0) * balanceOf[_1598][address(arg2)]) + (uint256(stor[_1617].field_0) * stor[_1569][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1569][address(arg2)].field_0) * stor[_1569][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1569][address(arg2)].field_0) + (uint256(stor[_1617].field_0) * balanceOf[_1598][address(arg2)]) - (Mask(96, 0, stor[_1569][address(arg2)].field_0) * balanceOf[_1598][address(arg2)]) + (uint256(stor[_1617].field_0) * stor[_1569][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1569][address(arg2)].field_0) * stor[_1569][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_1569][address(arg2)].field_136):
                                    Mask(120, 0, stor[_1569][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1569][address(arg2)].field_0) + (uint256(stor[_1617].field_0) * balanceOf[_1598][address(arg2)]) - (Mask(96, 0, stor[_1569][address(arg2)].field_0) * balanceOf[_1598][address(arg2)]) + (uint256(stor[_1617].field_0) * stor[_1569][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1569][address(arg2)].field_0) * stor[_1569][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_1569][address(arg2)].field_0) = Mask(96, 0, stor[_1617].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3272 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3272] == Mask(32, 224, mem[_3272])
                            if Mask(32, 224, mem[_3272]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3273 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3273] == Mask(32, 224, mem[_3273])
                            if Mask(32, 224, mem[_3273]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _1573 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _1600 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _1619 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0):
                            _1637 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1637] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0)
                            mem[_1637 + 32] = stor[_1573][address(arg1)].field_96 % 1099511627776
                            mem[_1637 + 64] = Mask(120, 0, stor[_1573][address(arg1)].field_136)
                            if not arg1:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg1
                            mem[32] = sha3(_1600, 0)
                            if balanceOf[_1600][address(arg1)] > !stor[_1573][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_1600][address(arg1)] + stor[_1573][address(arg1)].field_96 % 1099511627776:
                                if uint256(stor[_1619].field_0) < Mask(96, 0, stor[_1573][address(arg1)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_1600][address(arg1)] + stor[_1573][address(arg1)].field_96 % 1099511627776 and uint256(stor[_1619].field_0) - Mask(96, 0, stor[_1573][address(arg1)].field_0) > -1 / balanceOf[_1600][address(arg1)] + stor[_1573][address(arg1)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1573][address(arg1)].field_0) > !((uint256(stor[_1619].field_0) * balanceOf[_1600][address(arg1)]) - (Mask(96, 0, stor[_1573][address(arg1)].field_0) * balanceOf[_1600][address(arg1)]) + (uint256(stor[_1619].field_0) * stor[_1573][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1573][address(arg1)].field_0) * stor[_1573][address(arg1)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1573][address(arg1)].field_0) + (uint256(stor[_1619].field_0) * balanceOf[_1600][address(arg1)]) - (Mask(96, 0, stor[_1573][address(arg1)].field_0) * balanceOf[_1600][address(arg1)]) + (uint256(stor[_1619].field_0) * stor[_1573][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1573][address(arg1)].field_0) * stor[_1573][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_1573][address(arg1)].field_136):
                                    Mask(120, 0, stor[_1573][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1573][address(arg1)].field_0) + (uint256(stor[_1619].field_0) * balanceOf[_1600][address(arg1)]) - (Mask(96, 0, stor[_1573][address(arg1)].field_0) * balanceOf[_1600][address(arg1)]) + (uint256(stor[_1619].field_0) * stor[_1573][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1573][address(arg1)].field_0) * stor[_1573][address(arg1)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_1573][address(arg1)].field_0) = Mask(96, 0, stor[_1619].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _3082 = mem[ceil32(ceil32(arg5.length)) + 97]
                    idx = 0
                    while idx < _3082:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3111 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3168 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3207 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _3232 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3232] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_3232 + 32] = stor[_3111][address(arg2)].field_96 % 1099511627776
                            mem[_3232 + 64] = Mask(120, 0, stor[_3111][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_3168, 0)
                            if balanceOf[_3168][address(arg2)] > !stor[_3111][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3168][address(arg2)] + stor[_3111][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_3207].field_0) < Mask(96, 0, stor[_3111][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3168][address(arg2)] + stor[_3111][address(arg2)].field_96 % 1099511627776 and uint256(stor[_3207].field_0) - Mask(96, 0, stor[_3111][address(arg2)].field_0) > -1 / balanceOf[_3168][address(arg2)] + stor[_3111][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3111][address(arg2)].field_0) > !((uint256(stor[_3207].field_0) * balanceOf[_3168][address(arg2)]) - (Mask(96, 0, stor[_3111][address(arg2)].field_0) * balanceOf[_3168][address(arg2)]) + (uint256(stor[_3207].field_0) * stor[_3111][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3111][address(arg2)].field_0) * stor[_3111][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3111][address(arg2)].field_0) + (uint256(stor[_3207].field_0) * balanceOf[_3168][address(arg2)]) - (Mask(96, 0, stor[_3111][address(arg2)].field_0) * balanceOf[_3168][address(arg2)]) + (uint256(stor[_3207].field_0) * stor[_3111][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3111][address(arg2)].field_0) * stor[_3111][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_3111][address(arg2)].field_136):
                                    Mask(120, 0, stor[_3111][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3111][address(arg2)].field_0) + (uint256(stor[_3207].field_0) * balanceOf[_3168][address(arg2)]) - (Mask(96, 0, stor[_3111][address(arg2)].field_0) * balanceOf[_3168][address(arg2)]) + (uint256(stor[_3207].field_0) * stor[_3111][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3111][address(arg2)].field_0) * stor[_3111][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3111][address(arg2)].field_0) = Mask(96, 0, stor[_3207].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4660 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4660] == Mask(32, 224, mem[_4660])
                            if Mask(32, 224, mem[_4660]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4661 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4661] == Mask(32, 224, mem[_4661])
                            if Mask(32, 224, mem[_4661]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if idx >= 1:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                    mem[32] = 4
                    if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 'NH{q', 17
                    totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3117 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3173 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3209 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _3233 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3233] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_3233 + 32] = stor[_3117][address(arg2)].field_96 % 1099511627776
                            mem[_3233 + 64] = Mask(120, 0, stor[_3117][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_3173, 0)
                            if balanceOf[_3173][address(arg2)] > !stor[_3117][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3173][address(arg2)] + stor[_3117][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_3209].field_0) < Mask(96, 0, stor[_3117][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3173][address(arg2)] + stor[_3117][address(arg2)].field_96 % 1099511627776 and uint256(stor[_3209].field_0) - Mask(96, 0, stor[_3117][address(arg2)].field_0) > -1 / balanceOf[_3173][address(arg2)] + stor[_3117][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3117][address(arg2)].field_0) > !((uint256(stor[_3209].field_0) * balanceOf[_3173][address(arg2)]) - (Mask(96, 0, stor[_3117][address(arg2)].field_0) * balanceOf[_3173][address(arg2)]) + (uint256(stor[_3209].field_0) * stor[_3117][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3117][address(arg2)].field_0) * stor[_3117][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3117][address(arg2)].field_0) + (uint256(stor[_3209].field_0) * balanceOf[_3173][address(arg2)]) - (Mask(96, 0, stor[_3117][address(arg2)].field_0) * balanceOf[_3173][address(arg2)]) + (uint256(stor[_3209].field_0) * stor[_3117][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3117][address(arg2)].field_0) * stor[_3117][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_3117][address(arg2)].field_136):
                                    Mask(120, 0, stor[_3117][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3117][address(arg2)].field_0) + (uint256(stor[_3209].field_0) * balanceOf[_3173][address(arg2)]) - (Mask(96, 0, stor[_3117][address(arg2)].field_0) * balanceOf[_3173][address(arg2)]) + (uint256(stor[_3209].field_0) * stor[_3117][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3117][address(arg2)].field_0) * stor[_3117][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3117][address(arg2)].field_0) = Mask(96, 0, stor[_3209].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4662 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4662] == Mask(32, 224, mem[_4662])
                            if Mask(32, 224, mem[_4662]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4663 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4663] == Mask(32, 224, mem[_4663])
                            if Mask(32, 224, mem[_4663]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3121 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3175 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3211 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0):
                            _3240 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3240] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0)
                            mem[_3240 + 32] = stor[_3121][address(arg1)].field_96 % 1099511627776
                            mem[_3240 + 64] = Mask(120, 0, stor[_3121][address(arg1)].field_136)
                            if not arg1:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg1
                            mem[32] = sha3(_3175, 0)
                            if balanceOf[_3175][address(arg1)] > !stor[_3121][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3175][address(arg1)] + stor[_3121][address(arg1)].field_96 % 1099511627776:
                                if uint256(stor[_3211].field_0) < Mask(96, 0, stor[_3121][address(arg1)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3175][address(arg1)] + stor[_3121][address(arg1)].field_96 % 1099511627776 and uint256(stor[_3211].field_0) - Mask(96, 0, stor[_3121][address(arg1)].field_0) > -1 / balanceOf[_3175][address(arg1)] + stor[_3121][address(arg1)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3121][address(arg1)].field_0) > !((uint256(stor[_3211].field_0) * balanceOf[_3175][address(arg1)]) - (Mask(96, 0, stor[_3121][address(arg1)].field_0) * balanceOf[_3175][address(arg1)]) + (uint256(stor[_3211].field_0) * stor[_3121][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3121][address(arg1)].field_0) * stor[_3121][address(arg1)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3121][address(arg1)].field_0) + (uint256(stor[_3211].field_0) * balanceOf[_3175][address(arg1)]) - (Mask(96, 0, stor[_3121][address(arg1)].field_0) * balanceOf[_3175][address(arg1)]) + (uint256(stor[_3211].field_0) * stor[_3121][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3121][address(arg1)].field_0) * stor[_3121][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_3121][address(arg1)].field_136):
                                    Mask(120, 0, stor[_3121][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3121][address(arg1)].field_0) + (uint256(stor[_3211].field_0) * balanceOf[_3175][address(arg1)]) - (Mask(96, 0, stor[_3121][address(arg1)].field_0) * balanceOf[_3175][address(arg1)]) + (uint256(stor[_3211].field_0) * stor[_3121][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3121][address(arg1)].field_0) * stor[_3121][address(arg1)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3121][address(arg1)].field_0) = Mask(96, 0, stor[_3211].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4500 = mem[ceil32(ceil32(arg5.length)) + 97]
                    idx = 0
                    while idx < _4500:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4529 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4574 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _4605 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _4628 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4628] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_4628 + 32] = stor[_4529][address(arg2)].field_96 % 1099511627776
                            mem[_4628 + 64] = Mask(120, 0, stor[_4529][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_4574, 0)
                            if balanceOf[_4574][address(arg2)] > !stor[_4529][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_4574][address(arg2)] + stor[_4529][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_4605].field_0) < Mask(96, 0, stor[_4529][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_4574][address(arg2)] + stor[_4529][address(arg2)].field_96 % 1099511627776 and uint256(stor[_4605].field_0) - Mask(96, 0, stor[_4529][address(arg2)].field_0) > -1 / balanceOf[_4574][address(arg2)] + stor[_4529][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4529][address(arg2)].field_0) > !((uint256(stor[_4605].field_0) * balanceOf[_4574][address(arg2)]) - (Mask(96, 0, stor[_4529][address(arg2)].field_0) * balanceOf[_4574][address(arg2)]) + (uint256(stor[_4605].field_0) * stor[_4529][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4529][address(arg2)].field_0) * stor[_4529][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4529][address(arg2)].field_0) + (uint256(stor[_4605].field_0) * balanceOf[_4574][address(arg2)]) - (Mask(96, 0, stor[_4529][address(arg2)].field_0) * balanceOf[_4574][address(arg2)]) + (uint256(stor[_4605].field_0) * stor[_4529][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4529][address(arg2)].field_0) * stor[_4529][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_4529][address(arg2)].field_136):
                                    Mask(120, 0, stor[_4529][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_4529][address(arg2)].field_0) + (uint256(stor[_4605].field_0) * balanceOf[_4574][address(arg2)]) - (Mask(96, 0, stor[_4529][address(arg2)].field_0) * balanceOf[_4574][address(arg2)]) + (uint256(stor[_4605].field_0) * stor[_4529][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4529][address(arg2)].field_0) * stor[_4529][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_4529][address(arg2)].field_0) = Mask(96, 0, stor[_4605].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        _4500 = mem[ceil32(ceil32(arg5.length)) + 97]
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5654 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5654] == Mask(32, 224, mem[_5654])
                            if Mask(32, 224, mem[_5654]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5655 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5655] == Mask(32, 224, mem[_5655])
                            if Mask(32, 224, mem[_5655]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                if idx >= 1:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg2:
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3127 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3180 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3213 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _3241 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3241] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_3241 + 32] = stor[_3127][address(arg2)].field_96 % 1099511627776
                            mem[_3241 + 64] = Mask(120, 0, stor[_3127][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_3180, 0)
                            if balanceOf[_3180][address(arg2)] > !stor[_3127][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3180][address(arg2)] + stor[_3127][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_3213].field_0) < Mask(96, 0, stor[_3127][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3180][address(arg2)] + stor[_3127][address(arg2)].field_96 % 1099511627776 and uint256(stor[_3213].field_0) - Mask(96, 0, stor[_3127][address(arg2)].field_0) > -1 / balanceOf[_3180][address(arg2)] + stor[_3127][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3127][address(arg2)].field_0) > !((uint256(stor[_3213].field_0) * balanceOf[_3180][address(arg2)]) - (Mask(96, 0, stor[_3127][address(arg2)].field_0) * balanceOf[_3180][address(arg2)]) + (uint256(stor[_3213].field_0) * stor[_3127][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3127][address(arg2)].field_0) * stor[_3127][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3127][address(arg2)].field_0) + (uint256(stor[_3213].field_0) * balanceOf[_3180][address(arg2)]) - (Mask(96, 0, stor[_3127][address(arg2)].field_0) * balanceOf[_3180][address(arg2)]) + (uint256(stor[_3213].field_0) * stor[_3127][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3127][address(arg2)].field_0) * stor[_3127][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_3127][address(arg2)].field_136):
                                    Mask(120, 0, stor[_3127][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3127][address(arg2)].field_0) + (uint256(stor[_3213].field_0) * balanceOf[_3180][address(arg2)]) - (Mask(96, 0, stor[_3127][address(arg2)].field_0) * balanceOf[_3180][address(arg2)]) + (uint256(stor[_3213].field_0) * stor[_3127][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3127][address(arg2)].field_0) * stor[_3127][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3127][address(arg2)].field_0) = Mask(96, 0, stor[_3213].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4667] == Mask(32, 224, mem[_4667])
                            if Mask(32, 224, mem[_4667]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4668] == Mask(32, 224, mem[_4668])
                            if Mask(32, 224, mem[_4668]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3131 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3182 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3215 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0):
                            _3248 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3248] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0)
                            mem[_3248 + 32] = stor[_3131][address(arg1)].field_96 % 1099511627776
                            mem[_3248 + 64] = Mask(120, 0, stor[_3131][address(arg1)].field_136)
                            if not arg1:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg1
                            mem[32] = sha3(_3182, 0)
                            if balanceOf[_3182][address(arg1)] > !stor[_3131][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3182][address(arg1)] + stor[_3131][address(arg1)].field_96 % 1099511627776:
                                if uint256(stor[_3215].field_0) < Mask(96, 0, stor[_3131][address(arg1)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3182][address(arg1)] + stor[_3131][address(arg1)].field_96 % 1099511627776 and uint256(stor[_3215].field_0) - Mask(96, 0, stor[_3131][address(arg1)].field_0) > -1 / balanceOf[_3182][address(arg1)] + stor[_3131][address(arg1)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3131][address(arg1)].field_0) > !((uint256(stor[_3215].field_0) * balanceOf[_3182][address(arg1)]) - (Mask(96, 0, stor[_3131][address(arg1)].field_0) * balanceOf[_3182][address(arg1)]) + (uint256(stor[_3215].field_0) * stor[_3131][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3131][address(arg1)].field_0) * stor[_3131][address(arg1)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3131][address(arg1)].field_0) + (uint256(stor[_3215].field_0) * balanceOf[_3182][address(arg1)]) - (Mask(96, 0, stor[_3131][address(arg1)].field_0) * balanceOf[_3182][address(arg1)]) + (uint256(stor[_3215].field_0) * stor[_3131][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3131][address(arg1)].field_0) * stor[_3131][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_3131][address(arg1)].field_136):
                                    Mask(120, 0, stor[_3131][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3131][address(arg1)].field_0) + (uint256(stor[_3215].field_0) * balanceOf[_3182][address(arg1)]) - (Mask(96, 0, stor[_3131][address(arg1)].field_0) * balanceOf[_3182][address(arg1)]) + (uint256(stor[_3215].field_0) * stor[_3131][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3131][address(arg1)].field_0) * stor[_3131][address(arg1)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3131][address(arg1)].field_0) = Mask(96, 0, stor[_3215].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4501 = mem[ceil32(ceil32(arg5.length)) + 97]
                    idx = 0
                    while idx < _4501:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4535 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4579 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _4607 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _4631 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4631] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_4631 + 32] = stor[_4535][address(arg2)].field_96 % 1099511627776
                            mem[_4631 + 64] = Mask(120, 0, stor[_4535][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_4579, 0)
                            if balanceOf[_4579][address(arg2)] > !stor[_4535][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_4579][address(arg2)] + stor[_4535][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_4607].field_0) < Mask(96, 0, stor[_4535][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_4579][address(arg2)] + stor[_4535][address(arg2)].field_96 % 1099511627776 and uint256(stor[_4607].field_0) - Mask(96, 0, stor[_4535][address(arg2)].field_0) > -1 / balanceOf[_4579][address(arg2)] + stor[_4535][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4535][address(arg2)].field_0) > !((uint256(stor[_4607].field_0) * balanceOf[_4579][address(arg2)]) - (Mask(96, 0, stor[_4535][address(arg2)].field_0) * balanceOf[_4579][address(arg2)]) + (uint256(stor[_4607].field_0) * stor[_4535][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4535][address(arg2)].field_0) * stor[_4535][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4535][address(arg2)].field_0) + (uint256(stor[_4607].field_0) * balanceOf[_4579][address(arg2)]) - (Mask(96, 0, stor[_4535][address(arg2)].field_0) * balanceOf[_4579][address(arg2)]) + (uint256(stor[_4607].field_0) * stor[_4535][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4535][address(arg2)].field_0) * stor[_4535][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_4535][address(arg2)].field_136):
                                    Mask(120, 0, stor[_4535][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_4535][address(arg2)].field_0) + (uint256(stor[_4607].field_0) * balanceOf[_4579][address(arg2)]) - (Mask(96, 0, stor[_4535][address(arg2)].field_0) * balanceOf[_4579][address(arg2)]) + (uint256(stor[_4607].field_0) * stor[_4535][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4535][address(arg2)].field_0) * stor[_4535][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_4535][address(arg2)].field_0) = Mask(96, 0, stor[_4607].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        _4501 = mem[ceil32(ceil32(arg5.length)) + 97]
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5656 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5656] == Mask(32, 224, mem[_5656])
                            if Mask(32, 224, mem[_5656]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5657 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5657] == Mask(32, 224, mem[_5657])
                            if Mask(32, 224, mem[_5657]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if idx >= 1:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                    mem[32] = 4
                    if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 'NH{q', 17
                    totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4541 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4584 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _4609 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _4632 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4632] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_4632 + 32] = stor[_4541][address(arg2)].field_96 % 1099511627776
                            mem[_4632 + 64] = Mask(120, 0, stor[_4541][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_4584, 0)
                            if balanceOf[_4584][address(arg2)] > !stor[_4541][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_4584][address(arg2)] + stor[_4541][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_4609].field_0) < Mask(96, 0, stor[_4541][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_4584][address(arg2)] + stor[_4541][address(arg2)].field_96 % 1099511627776 and uint256(stor[_4609].field_0) - Mask(96, 0, stor[_4541][address(arg2)].field_0) > -1 / balanceOf[_4584][address(arg2)] + stor[_4541][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4541][address(arg2)].field_0) > !((uint256(stor[_4609].field_0) * balanceOf[_4584][address(arg2)]) - (Mask(96, 0, stor[_4541][address(arg2)].field_0) * balanceOf[_4584][address(arg2)]) + (uint256(stor[_4609].field_0) * stor[_4541][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4541][address(arg2)].field_0) * stor[_4541][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4541][address(arg2)].field_0) + (uint256(stor[_4609].field_0) * balanceOf[_4584][address(arg2)]) - (Mask(96, 0, stor[_4541][address(arg2)].field_0) * balanceOf[_4584][address(arg2)]) + (uint256(stor[_4609].field_0) * stor[_4541][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4541][address(arg2)].field_0) * stor[_4541][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_4541][address(arg2)].field_136):
                                    Mask(120, 0, stor[_4541][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_4541][address(arg2)].field_0) + (uint256(stor[_4609].field_0) * balanceOf[_4584][address(arg2)]) - (Mask(96, 0, stor[_4541][address(arg2)].field_0) * balanceOf[_4584][address(arg2)]) + (uint256(stor[_4609].field_0) * stor[_4541][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4541][address(arg2)].field_0) * stor[_4541][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_4541][address(arg2)].field_0) = Mask(96, 0, stor[_4609].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5658 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5658] == Mask(32, 224, mem[_5658])
                            if Mask(32, 224, mem[_5658]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5659 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5659] == Mask(32, 224, mem[_5659])
                            if Mask(32, 224, mem[_5659]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4545 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4586 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _4611 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0):
                            _4639 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4639] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0)
                            mem[_4639 + 32] = stor[_4545][address(arg1)].field_96 % 1099511627776
                            mem[_4639 + 64] = Mask(120, 0, stor[_4545][address(arg1)].field_136)
                            if not arg1:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg1
                            mem[32] = sha3(_4586, 0)
                            if balanceOf[_4586][address(arg1)] > !stor[_4545][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_4586][address(arg1)] + stor[_4545][address(arg1)].field_96 % 1099511627776:
                                if uint256(stor[_4611].field_0) < Mask(96, 0, stor[_4545][address(arg1)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_4586][address(arg1)] + stor[_4545][address(arg1)].field_96 % 1099511627776 and uint256(stor[_4611].field_0) - Mask(96, 0, stor[_4545][address(arg1)].field_0) > -1 / balanceOf[_4586][address(arg1)] + stor[_4545][address(arg1)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4545][address(arg1)].field_0) > !((uint256(stor[_4611].field_0) * balanceOf[_4586][address(arg1)]) - (Mask(96, 0, stor[_4545][address(arg1)].field_0) * balanceOf[_4586][address(arg1)]) + (uint256(stor[_4611].field_0) * stor[_4545][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4545][address(arg1)].field_0) * stor[_4545][address(arg1)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4545][address(arg1)].field_0) + (uint256(stor[_4611].field_0) * balanceOf[_4586][address(arg1)]) - (Mask(96, 0, stor[_4545][address(arg1)].field_0) * balanceOf[_4586][address(arg1)]) + (uint256(stor[_4611].field_0) * stor[_4545][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4545][address(arg1)].field_0) * stor[_4545][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_4545][address(arg1)].field_136):
                                    Mask(120, 0, stor[_4545][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_4545][address(arg1)].field_0) + (uint256(stor[_4611].field_0) * balanceOf[_4586][address(arg1)]) - (Mask(96, 0, stor[_4545][address(arg1)].field_0) * balanceOf[_4586][address(arg1)]) + (uint256(stor[_4611].field_0) * stor[_4545][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4545][address(arg1)].field_0) * stor[_4545][address(arg1)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_4545][address(arg1)].field_0) = Mask(96, 0, stor[_4611].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _5568 = mem[ceil32(ceil32(arg5.length)) + 97]
                    idx = 0
                    while idx < _5568:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _5593 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _5606 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _5613 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _5634 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_5634] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_5634 + 32] = stor[_5593][address(arg2)].field_96 % 1099511627776
                            mem[_5634 + 64] = Mask(120, 0, stor[_5593][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_5606, 0)
                            if balanceOf[_5606][address(arg2)] > !stor[_5593][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_5606][address(arg2)] + stor[_5593][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_5613].field_0) < Mask(96, 0, stor[_5593][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_5606][address(arg2)] + stor[_5593][address(arg2)].field_96 % 1099511627776 and uint256(stor[_5613].field_0) - Mask(96, 0, stor[_5593][address(arg2)].field_0) > -1 / balanceOf[_5606][address(arg2)] + stor[_5593][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_5593][address(arg2)].field_0) > !((uint256(stor[_5613].field_0) * balanceOf[_5606][address(arg2)]) - (Mask(96, 0, stor[_5593][address(arg2)].field_0) * balanceOf[_5606][address(arg2)]) + (uint256(stor[_5613].field_0) * stor[_5593][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5593][address(arg2)].field_0) * stor[_5593][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_5593][address(arg2)].field_0) + (uint256(stor[_5613].field_0) * balanceOf[_5606][address(arg2)]) - (Mask(96, 0, stor[_5593][address(arg2)].field_0) * balanceOf[_5606][address(arg2)]) + (uint256(stor[_5613].field_0) * stor[_5593][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5593][address(arg2)].field_0) * stor[_5593][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_5593][address(arg2)].field_136):
                                    Mask(120, 0, stor[_5593][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_5593][address(arg2)].field_0) + (uint256(stor[_5613].field_0) * balanceOf[_5606][address(arg2)]) - (Mask(96, 0, stor[_5593][address(arg2)].field_0) * balanceOf[_5606][address(arg2)]) + (uint256(stor[_5613].field_0) * stor[_5593][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5593][address(arg2)].field_0) * stor[_5593][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_5593][address(arg2)].field_0) = Mask(96, 0, stor[_5613].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        _5568 = mem[ceil32(ceil32(arg5.length)) + 97]
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _6158 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6158] == Mask(32, 224, mem[_6158])
                            if Mask(32, 224, mem[_6158]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _6159 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6159] == Mask(32, 224, mem[_6159])
                            if Mask(32, 224, mem[_6159]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[64] = ceil32(ceil32(arg5.length)) + 225
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if arg1:
            if arg2:
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _1583 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _1609 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _1624 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _1641 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1641] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_1641 + 32] = stor[_1583][address(arg2)].field_96 % 1099511627776
                            mem[_1641 + 64] = Mask(120, 0, stor[_1583][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_1609, 0)
                            if balanceOf[_1609][address(arg2)] > !stor[_1583][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_1609][address(arg2)] + stor[_1583][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_1624].field_0) < Mask(96, 0, stor[_1583][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_1609][address(arg2)] + stor[_1583][address(arg2)].field_96 % 1099511627776 and uint256(stor[_1624].field_0) - Mask(96, 0, stor[_1583][address(arg2)].field_0) > -1 / balanceOf[_1609][address(arg2)] + stor[_1583][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1583][address(arg2)].field_0) > !((uint256(stor[_1624].field_0) * balanceOf[_1609][address(arg2)]) - (Mask(96, 0, stor[_1583][address(arg2)].field_0) * balanceOf[_1609][address(arg2)]) + (uint256(stor[_1624].field_0) * stor[_1583][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1583][address(arg2)].field_0) * stor[_1583][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1583][address(arg2)].field_0) + (uint256(stor[_1624].field_0) * balanceOf[_1609][address(arg2)]) - (Mask(96, 0, stor[_1583][address(arg2)].field_0) * balanceOf[_1609][address(arg2)]) + (uint256(stor[_1624].field_0) * stor[_1583][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1583][address(arg2)].field_0) * stor[_1583][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_1583][address(arg2)].field_136):
                                    Mask(120, 0, stor[_1583][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1583][address(arg2)].field_0) + (uint256(stor[_1624].field_0) * balanceOf[_1609][address(arg2)]) - (Mask(96, 0, stor[_1583][address(arg2)].field_0) * balanceOf[_1609][address(arg2)]) + (uint256(stor[_1624].field_0) * stor[_1583][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1583][address(arg2)].field_0) * stor[_1583][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_1583][address(arg2)].field_0) = Mask(96, 0, stor[_1624].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3305 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3305] == Mask(32, 224, mem[_3305])
                            if Mask(32, 224, mem[_3305]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _3306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3306] == Mask(32, 224, mem[_3306])
                            if Mask(32, 224, mem[_3306]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _1587 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _1611 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _1626 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0):
                            _1648 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1648] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0)
                            mem[_1648 + 32] = stor[_1587][address(arg1)].field_96 % 1099511627776
                            mem[_1648 + 64] = Mask(120, 0, stor[_1587][address(arg1)].field_136)
                            if not arg1:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg1
                            mem[32] = sha3(_1611, 0)
                            if balanceOf[_1611][address(arg1)] > !stor[_1587][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_1611][address(arg1)] + stor[_1587][address(arg1)].field_96 % 1099511627776:
                                if uint256(stor[_1626].field_0) < Mask(96, 0, stor[_1587][address(arg1)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_1611][address(arg1)] + stor[_1587][address(arg1)].field_96 % 1099511627776 and uint256(stor[_1626].field_0) - Mask(96, 0, stor[_1587][address(arg1)].field_0) > -1 / balanceOf[_1611][address(arg1)] + stor[_1587][address(arg1)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1587][address(arg1)].field_0) > !((uint256(stor[_1626].field_0) * balanceOf[_1611][address(arg1)]) - (Mask(96, 0, stor[_1587][address(arg1)].field_0) * balanceOf[_1611][address(arg1)]) + (uint256(stor[_1626].field_0) * stor[_1587][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1587][address(arg1)].field_0) * stor[_1587][address(arg1)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_1587][address(arg1)].field_0) + (uint256(stor[_1626].field_0) * balanceOf[_1611][address(arg1)]) - (Mask(96, 0, stor[_1587][address(arg1)].field_0) * balanceOf[_1611][address(arg1)]) + (uint256(stor[_1626].field_0) * stor[_1587][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1587][address(arg1)].field_0) * stor[_1587][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_1587][address(arg1)].field_136):
                                    Mask(120, 0, stor[_1587][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_1587][address(arg1)].field_0) + (uint256(stor[_1626].field_0) * balanceOf[_1611][address(arg1)]) - (Mask(96, 0, stor[_1587][address(arg1)].field_0) * balanceOf[_1611][address(arg1)]) + (uint256(stor[_1626].field_0) * stor[_1587][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_1587][address(arg1)].field_0) * stor[_1587][address(arg1)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_1587][address(arg1)].field_0) = Mask(96, 0, stor[_1626].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _3088 = mem[ceil32(ceil32(arg5.length)) + 97]
                    idx = 0
                    while idx < _3088:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3139 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3189 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3219 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _3253 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3253] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_3253 + 32] = stor[_3139][address(arg2)].field_96 % 1099511627776
                            mem[_3253 + 64] = Mask(120, 0, stor[_3139][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_3189, 0)
                            if balanceOf[_3189][address(arg2)] > !stor[_3139][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3189][address(arg2)] + stor[_3139][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_3219].field_0) < Mask(96, 0, stor[_3139][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3189][address(arg2)] + stor[_3139][address(arg2)].field_96 % 1099511627776 and uint256(stor[_3219].field_0) - Mask(96, 0, stor[_3139][address(arg2)].field_0) > -1 / balanceOf[_3189][address(arg2)] + stor[_3139][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3139][address(arg2)].field_0) > !((uint256(stor[_3219].field_0) * balanceOf[_3189][address(arg2)]) - (Mask(96, 0, stor[_3139][address(arg2)].field_0) * balanceOf[_3189][address(arg2)]) + (uint256(stor[_3219].field_0) * stor[_3139][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3139][address(arg2)].field_0) * stor[_3139][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3139][address(arg2)].field_0) + (uint256(stor[_3219].field_0) * balanceOf[_3189][address(arg2)]) - (Mask(96, 0, stor[_3139][address(arg2)].field_0) * balanceOf[_3189][address(arg2)]) + (uint256(stor[_3219].field_0) * stor[_3139][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3139][address(arg2)].field_0) * stor[_3139][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_3139][address(arg2)].field_136):
                                    Mask(120, 0, stor[_3139][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3139][address(arg2)].field_0) + (uint256(stor[_3219].field_0) * balanceOf[_3189][address(arg2)]) - (Mask(96, 0, stor[_3139][address(arg2)].field_0) * balanceOf[_3189][address(arg2)]) + (uint256(stor[_3219].field_0) * stor[_3139][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3139][address(arg2)].field_0) * stor[_3139][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3139][address(arg2)].field_0) = Mask(96, 0, stor[_3219].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4681 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4681] == Mask(32, 224, mem[_4681])
                            if Mask(32, 224, mem[_4681]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4682 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4682] == Mask(32, 224, mem[_4682])
                            if Mask(32, 224, mem[_4682]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if idx >= 1:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                    mem[32] = 4
                    if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 'NH{q', 17
                    totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3145 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3194 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3221 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _3254 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3254] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_3254 + 32] = stor[_3145][address(arg2)].field_96 % 1099511627776
                            mem[_3254 + 64] = Mask(120, 0, stor[_3145][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_3194, 0)
                            if balanceOf[_3194][address(arg2)] > !stor[_3145][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3194][address(arg2)] + stor[_3145][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_3221].field_0) < Mask(96, 0, stor[_3145][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3194][address(arg2)] + stor[_3145][address(arg2)].field_96 % 1099511627776 and uint256(stor[_3221].field_0) - Mask(96, 0, stor[_3145][address(arg2)].field_0) > -1 / balanceOf[_3194][address(arg2)] + stor[_3145][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3145][address(arg2)].field_0) > !((uint256(stor[_3221].field_0) * balanceOf[_3194][address(arg2)]) - (Mask(96, 0, stor[_3145][address(arg2)].field_0) * balanceOf[_3194][address(arg2)]) + (uint256(stor[_3221].field_0) * stor[_3145][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3145][address(arg2)].field_0) * stor[_3145][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3145][address(arg2)].field_0) + (uint256(stor[_3221].field_0) * balanceOf[_3194][address(arg2)]) - (Mask(96, 0, stor[_3145][address(arg2)].field_0) * balanceOf[_3194][address(arg2)]) + (uint256(stor[_3221].field_0) * stor[_3145][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3145][address(arg2)].field_0) * stor[_3145][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_3145][address(arg2)].field_136):
                                    Mask(120, 0, stor[_3145][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3145][address(arg2)].field_0) + (uint256(stor[_3221].field_0) * balanceOf[_3194][address(arg2)]) - (Mask(96, 0, stor[_3145][address(arg2)].field_0) * balanceOf[_3194][address(arg2)]) + (uint256(stor[_3221].field_0) * stor[_3145][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3145][address(arg2)].field_0) * stor[_3145][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3145][address(arg2)].field_0) = Mask(96, 0, stor[_3221].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4683 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4683] == Mask(32, 224, mem[_4683])
                            if Mask(32, 224, mem[_4683]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4684 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4684] == Mask(32, 224, mem[_4684])
                            if Mask(32, 224, mem[_4684]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3149 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3196 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3223 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0):
                            _3261 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3261] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0)
                            mem[_3261 + 32] = stor[_3149][address(arg1)].field_96 % 1099511627776
                            mem[_3261 + 64] = Mask(120, 0, stor[_3149][address(arg1)].field_136)
                            if not arg1:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg1
                            mem[32] = sha3(_3196, 0)
                            if balanceOf[_3196][address(arg1)] > !stor[_3149][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3196][address(arg1)] + stor[_3149][address(arg1)].field_96 % 1099511627776:
                                if uint256(stor[_3223].field_0) < Mask(96, 0, stor[_3149][address(arg1)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3196][address(arg1)] + stor[_3149][address(arg1)].field_96 % 1099511627776 and uint256(stor[_3223].field_0) - Mask(96, 0, stor[_3149][address(arg1)].field_0) > -1 / balanceOf[_3196][address(arg1)] + stor[_3149][address(arg1)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3149][address(arg1)].field_0) > !((uint256(stor[_3223].field_0) * balanceOf[_3196][address(arg1)]) - (Mask(96, 0, stor[_3149][address(arg1)].field_0) * balanceOf[_3196][address(arg1)]) + (uint256(stor[_3223].field_0) * stor[_3149][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3149][address(arg1)].field_0) * stor[_3149][address(arg1)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3149][address(arg1)].field_0) + (uint256(stor[_3223].field_0) * balanceOf[_3196][address(arg1)]) - (Mask(96, 0, stor[_3149][address(arg1)].field_0) * balanceOf[_3196][address(arg1)]) + (uint256(stor[_3223].field_0) * stor[_3149][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3149][address(arg1)].field_0) * stor[_3149][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_3149][address(arg1)].field_136):
                                    Mask(120, 0, stor[_3149][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3149][address(arg1)].field_0) + (uint256(stor[_3223].field_0) * balanceOf[_3196][address(arg1)]) - (Mask(96, 0, stor[_3149][address(arg1)].field_0) * balanceOf[_3196][address(arg1)]) + (uint256(stor[_3223].field_0) * stor[_3149][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3149][address(arg1)].field_0) * stor[_3149][address(arg1)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3149][address(arg1)].field_0) = Mask(96, 0, stor[_3223].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4504 = mem[ceil32(ceil32(arg5.length)) + 97]
                    idx = 0
                    while idx < _4504:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4551 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4591 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _4613 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _4648 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4648] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_4648 + 32] = stor[_4551][address(arg2)].field_96 % 1099511627776
                            mem[_4648 + 64] = Mask(120, 0, stor[_4551][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_4591, 0)
                            if balanceOf[_4591][address(arg2)] > !stor[_4551][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_4591][address(arg2)] + stor[_4551][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_4613].field_0) < Mask(96, 0, stor[_4551][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_4591][address(arg2)] + stor[_4551][address(arg2)].field_96 % 1099511627776 and uint256(stor[_4613].field_0) - Mask(96, 0, stor[_4551][address(arg2)].field_0) > -1 / balanceOf[_4591][address(arg2)] + stor[_4551][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4551][address(arg2)].field_0) > !((uint256(stor[_4613].field_0) * balanceOf[_4591][address(arg2)]) - (Mask(96, 0, stor[_4551][address(arg2)].field_0) * balanceOf[_4591][address(arg2)]) + (uint256(stor[_4613].field_0) * stor[_4551][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4551][address(arg2)].field_0) * stor[_4551][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4551][address(arg2)].field_0) + (uint256(stor[_4613].field_0) * balanceOf[_4591][address(arg2)]) - (Mask(96, 0, stor[_4551][address(arg2)].field_0) * balanceOf[_4591][address(arg2)]) + (uint256(stor[_4613].field_0) * stor[_4551][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4551][address(arg2)].field_0) * stor[_4551][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_4551][address(arg2)].field_136):
                                    Mask(120, 0, stor[_4551][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_4551][address(arg2)].field_0) + (uint256(stor[_4613].field_0) * balanceOf[_4591][address(arg2)]) - (Mask(96, 0, stor[_4551][address(arg2)].field_0) * balanceOf[_4591][address(arg2)]) + (uint256(stor[_4613].field_0) * stor[_4551][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4551][address(arg2)].field_0) * stor[_4551][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_4551][address(arg2)].field_0) = Mask(96, 0, stor[_4613].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        _4504 = mem[ceil32(ceil32(arg5.length)) + 97]
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5663 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5663] == Mask(32, 224, mem[_5663])
                            if Mask(32, 224, mem[_5663]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5664 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5664] == Mask(32, 224, mem[_5664])
                            if Mask(32, 224, mem[_5664]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                if idx >= 1:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if arg2:
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3155 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3201 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3225 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _3262 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3262] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_3262 + 32] = stor[_3155][address(arg2)].field_96 % 1099511627776
                            mem[_3262 + 64] = Mask(120, 0, stor[_3155][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_3201, 0)
                            if balanceOf[_3201][address(arg2)] > !stor[_3155][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3201][address(arg2)] + stor[_3155][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_3225].field_0) < Mask(96, 0, stor[_3155][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3201][address(arg2)] + stor[_3155][address(arg2)].field_96 % 1099511627776 and uint256(stor[_3225].field_0) - Mask(96, 0, stor[_3155][address(arg2)].field_0) > -1 / balanceOf[_3201][address(arg2)] + stor[_3155][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3155][address(arg2)].field_0) > !((uint256(stor[_3225].field_0) * balanceOf[_3201][address(arg2)]) - (Mask(96, 0, stor[_3155][address(arg2)].field_0) * balanceOf[_3201][address(arg2)]) + (uint256(stor[_3225].field_0) * stor[_3155][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3155][address(arg2)].field_0) * stor[_3155][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3155][address(arg2)].field_0) + (uint256(stor[_3225].field_0) * balanceOf[_3201][address(arg2)]) - (Mask(96, 0, stor[_3155][address(arg2)].field_0) * balanceOf[_3201][address(arg2)]) + (uint256(stor[_3225].field_0) * stor[_3155][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3155][address(arg2)].field_0) * stor[_3155][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_3155][address(arg2)].field_136):
                                    Mask(120, 0, stor[_3155][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3155][address(arg2)].field_0) + (uint256(stor[_3225].field_0) * balanceOf[_3201][address(arg2)]) - (Mask(96, 0, stor[_3155][address(arg2)].field_0) * balanceOf[_3201][address(arg2)]) + (uint256(stor[_3225].field_0) * stor[_3155][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3155][address(arg2)].field_0) * stor[_3155][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3155][address(arg2)].field_0) = Mask(96, 0, stor[_3225].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4688 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4688] == Mask(32, 224, mem[_4688])
                            if Mask(32, 224, mem[_4688]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _4689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4689] == Mask(32, 224, mem[_4689])
                            if Mask(32, 224, mem[_4689]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3159 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _3203 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _3227 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0):
                            _3269 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3269] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0)
                            mem[_3269 + 32] = stor[_3159][address(arg1)].field_96 % 1099511627776
                            mem[_3269 + 64] = Mask(120, 0, stor[_3159][address(arg1)].field_136)
                            if not arg1:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg1
                            mem[32] = sha3(_3203, 0)
                            if balanceOf[_3203][address(arg1)] > !stor[_3159][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_3203][address(arg1)] + stor[_3159][address(arg1)].field_96 % 1099511627776:
                                if uint256(stor[_3227].field_0) < Mask(96, 0, stor[_3159][address(arg1)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_3203][address(arg1)] + stor[_3159][address(arg1)].field_96 % 1099511627776 and uint256(stor[_3227].field_0) - Mask(96, 0, stor[_3159][address(arg1)].field_0) > -1 / balanceOf[_3203][address(arg1)] + stor[_3159][address(arg1)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3159][address(arg1)].field_0) > !((uint256(stor[_3227].field_0) * balanceOf[_3203][address(arg1)]) - (Mask(96, 0, stor[_3159][address(arg1)].field_0) * balanceOf[_3203][address(arg1)]) + (uint256(stor[_3227].field_0) * stor[_3159][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3159][address(arg1)].field_0) * stor[_3159][address(arg1)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_3159][address(arg1)].field_0) + (uint256(stor[_3227].field_0) * balanceOf[_3203][address(arg1)]) - (Mask(96, 0, stor[_3159][address(arg1)].field_0) * balanceOf[_3203][address(arg1)]) + (uint256(stor[_3227].field_0) * stor[_3159][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3159][address(arg1)].field_0) * stor[_3159][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_3159][address(arg1)].field_136):
                                    Mask(120, 0, stor[_3159][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_3159][address(arg1)].field_0) + (uint256(stor[_3227].field_0) * balanceOf[_3203][address(arg1)]) - (Mask(96, 0, stor[_3159][address(arg1)].field_0) * balanceOf[_3203][address(arg1)]) + (uint256(stor[_3227].field_0) * stor[_3159][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_3159][address(arg1)].field_0) * stor[_3159][address(arg1)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_3159][address(arg1)].field_0) = Mask(96, 0, stor[_3227].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _4505 = mem[ceil32(ceil32(arg5.length)) + 97]
                    idx = 0
                    while idx < _4505:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4557 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4596 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _4615 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _4651 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4651] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_4651 + 32] = stor[_4557][address(arg2)].field_96 % 1099511627776
                            mem[_4651 + 64] = Mask(120, 0, stor[_4557][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_4596, 0)
                            if balanceOf[_4596][address(arg2)] > !stor[_4557][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_4596][address(arg2)] + stor[_4557][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_4615].field_0) < Mask(96, 0, stor[_4557][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_4596][address(arg2)] + stor[_4557][address(arg2)].field_96 % 1099511627776 and uint256(stor[_4615].field_0) - Mask(96, 0, stor[_4557][address(arg2)].field_0) > -1 / balanceOf[_4596][address(arg2)] + stor[_4557][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4557][address(arg2)].field_0) > !((uint256(stor[_4615].field_0) * balanceOf[_4596][address(arg2)]) - (Mask(96, 0, stor[_4557][address(arg2)].field_0) * balanceOf[_4596][address(arg2)]) + (uint256(stor[_4615].field_0) * stor[_4557][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4557][address(arg2)].field_0) * stor[_4557][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4557][address(arg2)].field_0) + (uint256(stor[_4615].field_0) * balanceOf[_4596][address(arg2)]) - (Mask(96, 0, stor[_4557][address(arg2)].field_0) * balanceOf[_4596][address(arg2)]) + (uint256(stor[_4615].field_0) * stor[_4557][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4557][address(arg2)].field_0) * stor[_4557][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_4557][address(arg2)].field_136):
                                    Mask(120, 0, stor[_4557][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_4557][address(arg2)].field_0) + (uint256(stor[_4615].field_0) * balanceOf[_4596][address(arg2)]) - (Mask(96, 0, stor[_4557][address(arg2)].field_0) * balanceOf[_4596][address(arg2)]) + (uint256(stor[_4615].field_0) * stor[_4557][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4557][address(arg2)].field_0) * stor[_4557][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_4557][address(arg2)].field_0) = Mask(96, 0, stor[_4615].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        _4505 = mem[ceil32(ceil32(arg5.length)) + 97]
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5665 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5665] == Mask(32, 224, mem[_5665])
                            if Mask(32, 224, mem[_5665]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5666] == Mask(32, 224, mem[_5666])
                            if Mask(32, 224, mem[_5666]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                idx = 0
                while idx < 1:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if idx >= 1:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                    mem[32] = 4
                    if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 'NH{q', 17
                    totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not arg1:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4563 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4601 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _4617 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _4652 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4652] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_4652 + 32] = stor[_4563][address(arg2)].field_96 % 1099511627776
                            mem[_4652 + 64] = Mask(120, 0, stor[_4563][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_4601, 0)
                            if balanceOf[_4601][address(arg2)] > !stor[_4563][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_4601][address(arg2)] + stor[_4563][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_4617].field_0) < Mask(96, 0, stor[_4563][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_4601][address(arg2)] + stor[_4563][address(arg2)].field_96 % 1099511627776 and uint256(stor[_4617].field_0) - Mask(96, 0, stor[_4563][address(arg2)].field_0) > -1 / balanceOf[_4601][address(arg2)] + stor[_4563][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4563][address(arg2)].field_0) > !((uint256(stor[_4617].field_0) * balanceOf[_4601][address(arg2)]) - (Mask(96, 0, stor[_4563][address(arg2)].field_0) * balanceOf[_4601][address(arg2)]) + (uint256(stor[_4617].field_0) * stor[_4563][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4563][address(arg2)].field_0) * stor[_4563][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4563][address(arg2)].field_0) + (uint256(stor[_4617].field_0) * balanceOf[_4601][address(arg2)]) - (Mask(96, 0, stor[_4563][address(arg2)].field_0) * balanceOf[_4601][address(arg2)]) + (uint256(stor[_4617].field_0) * stor[_4563][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4563][address(arg2)].field_0) * stor[_4563][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_4563][address(arg2)].field_136):
                                    Mask(120, 0, stor[_4563][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_4563][address(arg2)].field_0) + (uint256(stor[_4617].field_0) * balanceOf[_4601][address(arg2)]) - (Mask(96, 0, stor[_4563][address(arg2)].field_0) * balanceOf[_4601][address(arg2)]) + (uint256(stor[_4617].field_0) * stor[_4563][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4563][address(arg2)].field_0) * stor[_4563][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_4563][address(arg2)].field_0) = Mask(96, 0, stor[_4617].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5667] == Mask(32, 224, mem[_5667])
                            if Mask(32, 224, mem[_5667]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _5668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5668] == Mask(32, 224, mem[_5668])
                            if Mask(32, 224, mem[_5668]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    idx = 0
                    while idx < 1:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4567 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _4603 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _4619 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0):
                            _4659 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4659] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)].field_0)
                            mem[_4659 + 32] = stor[_4567][address(arg1)].field_96 % 1099511627776
                            mem[_4659 + 64] = Mask(120, 0, stor[_4567][address(arg1)].field_136)
                            if not arg1:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg1
                            mem[32] = sha3(_4603, 0)
                            if balanceOf[_4603][address(arg1)] > !stor[_4567][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_4603][address(arg1)] + stor[_4567][address(arg1)].field_96 % 1099511627776:
                                if uint256(stor[_4619].field_0) < Mask(96, 0, stor[_4567][address(arg1)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_4603][address(arg1)] + stor[_4567][address(arg1)].field_96 % 1099511627776 and uint256(stor[_4619].field_0) - Mask(96, 0, stor[_4567][address(arg1)].field_0) > -1 / balanceOf[_4603][address(arg1)] + stor[_4567][address(arg1)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4567][address(arg1)].field_0) > !((uint256(stor[_4619].field_0) * balanceOf[_4603][address(arg1)]) - (Mask(96, 0, stor[_4567][address(arg1)].field_0) * balanceOf[_4603][address(arg1)]) + (uint256(stor[_4619].field_0) * stor[_4567][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4567][address(arg1)].field_0) * stor[_4567][address(arg1)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_4567][address(arg1)].field_0) + (uint256(stor[_4619].field_0) * balanceOf[_4603][address(arg1)]) - (Mask(96, 0, stor[_4567][address(arg1)].field_0) * balanceOf[_4603][address(arg1)]) + (uint256(stor[_4619].field_0) * stor[_4567][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4567][address(arg1)].field_0) * stor[_4567][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_4567][address(arg1)].field_136):
                                    Mask(120, 0, stor[_4567][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_4567][address(arg1)].field_0) + (uint256(stor[_4619].field_0) * balanceOf[_4603][address(arg1)]) - (Mask(96, 0, stor[_4567][address(arg1)].field_0) * balanceOf[_4603][address(arg1)]) + (uint256(stor[_4619].field_0) * stor[_4567][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_4567][address(arg1)].field_0) * stor[_4567][address(arg1)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_4567][address(arg1)].field_0) = Mask(96, 0, stor[_4619].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _5569 = mem[ceil32(ceil32(arg5.length)) + 97]
                    idx = 0
                    while idx < _5569:
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _5599 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                            revert with 'NH{q', 50
                        _5611 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
                        mem[32] = 8
                        _5615 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 8)
                        if uint256(stor8[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0):
                            _5653 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_5653] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg2)].field_0)
                            mem[_5653 + 32] = stor[_5599][address(arg2)].field_96 % 1099511627776
                            mem[_5653 + 64] = Mask(120, 0, stor[_5599][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_5611, 0)
                            if balanceOf[_5611][address(arg2)] > !stor[_5599][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_5611][address(arg2)] + stor[_5599][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_5615].field_0) < Mask(96, 0, stor[_5599][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_5611][address(arg2)] + stor[_5599][address(arg2)].field_96 % 1099511627776 and uint256(stor[_5615].field_0) - Mask(96, 0, stor[_5599][address(arg2)].field_0) > -1 / balanceOf[_5611][address(arg2)] + stor[_5599][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_5599][address(arg2)].field_0) > !((uint256(stor[_5615].field_0) * balanceOf[_5611][address(arg2)]) - (Mask(96, 0, stor[_5599][address(arg2)].field_0) * balanceOf[_5611][address(arg2)]) + (uint256(stor[_5615].field_0) * stor[_5599][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5599][address(arg2)].field_0) * stor[_5599][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_5599][address(arg2)].field_0) + (uint256(stor[_5615].field_0) * balanceOf[_5611][address(arg2)]) - (Mask(96, 0, stor[_5599][address(arg2)].field_0) * balanceOf[_5611][address(arg2)]) + (uint256(stor[_5615].field_0) * stor[_5599][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5599][address(arg2)].field_0) * stor[_5599][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_5599][address(arg2)].field_136):
                                    Mask(120, 0, stor[_5599][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_5599][address(arg2)].field_0) + (uint256(stor[_5615].field_0) * balanceOf[_5611][address(arg2)]) - (Mask(96, 0, stor[_5599][address(arg2)].field_0) * balanceOf[_5611][address(arg2)]) + (uint256(stor[_5615].field_0) * stor[_5599][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5599][address(arg2)].field_0) * stor[_5599][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_5599][address(arg2)].field_0) = Mask(96, 0, stor[_5615].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        _5569 = mem[ceil32(ceil32(arg5.length)) + 97]
                        idx = idx + 1
                        continue 
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(arg3, 0)
                    balanceOf[arg3][address(arg1)] -= arg4
                    mem[0] = arg2
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 'NH{q', 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = arg4
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = mem[96]
                        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _6160 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6160] == Mask(32, 224, mem[_6160])
                            if Mask(32, 224, mem[_6160]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        else:
                            mem[mem[96] + mem[64] + 196] = 0
                            call arg2.0xf23a6e61 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                            _6161 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6161] == Mask(32, 224, mem[_6161])
                            if Mask(32, 224, mem[_6161]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg3.length) + 97 > test266151307() or ceil32(32 * arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307() or ceil32(32 * arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * arg3.length) + 97] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = arg4 + 36
    s = ceil32(32 * arg3.length) + 129
    while idx < arg4 + (32 * arg4.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len arg5.length] = arg5[all]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + arg5.length + 130] = 0
    if msg.sender == arg1:
        if arg3.length != arg4.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        if arg1:
            if arg2:
                if not arg1:
                    idx = 0
                    while idx < arg3.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _5292 = sha3(mem[(32 * idx) + 128], 7)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _5316 = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 8
                        _5333 = sha3(mem[(32 * idx) + 128], 8)
                        if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                            _5349 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_5349] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                            mem[_5349 + 32] = stor[_5292][address(arg2)].field_96 % 1099511627776
                            mem[_5349 + 64] = Mask(120, 0, stor[_5292][address(arg2)].field_136)
                            if not arg2:
                                revert with 0, 'ERC1155: balance query for the zero address'
                            mem[0] = arg2
                            mem[32] = sha3(_5316, 0)
                            if balanceOf[_5316][address(arg2)] > !stor[_5292][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if balanceOf[_5316][address(arg2)] + stor[_5292][address(arg2)].field_96 % 1099511627776:
                                if uint256(stor[_5333].field_0) < Mask(96, 0, stor[_5292][address(arg2)].field_0):
                                    revert with 'NH{q', 17
                                if balanceOf[_5316][address(arg2)] + stor[_5292][address(arg2)].field_96 % 1099511627776 and uint256(stor[_5333].field_0) - Mask(96, 0, stor[_5292][address(arg2)].field_0) > -1 / balanceOf[_5316][address(arg2)] + stor[_5292][address(arg2)].field_96 % 1099511627776:
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_5292][address(arg2)].field_0) > !((uint256(stor[_5333].field_0) * balanceOf[_5316][address(arg2)]) - (Mask(96, 0, stor[_5292][address(arg2)].field_0) * balanceOf[_5316][address(arg2)]) + (uint256(stor[_5333].field_0) * stor[_5292][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5292][address(arg2)].field_0) * stor[_5292][address(arg2)].field_96 % 1099511627776)):
                                    revert with 'NH{q', 17
                                if Mask(120, 0, stor[_5292][address(arg2)].field_0) + (uint256(stor[_5333].field_0) * balanceOf[_5316][address(arg2)]) - (Mask(96, 0, stor[_5292][address(arg2)].field_0) * balanceOf[_5316][address(arg2)]) + (uint256(stor[_5333].field_0) * stor[_5292][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5292][address(arg2)].field_0) * stor[_5292][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_5292][address(arg2)].field_136):
                                    Mask(120, 0, stor[_5292][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_5292][address(arg2)].field_0) + (uint256(stor[_5333].field_0) * balanceOf[_5316][address(arg2)]) - (Mask(96, 0, stor[_5292][address(arg2)].field_0) * balanceOf[_5316][address(arg2)]) + (uint256(stor[_5333].field_0) * stor[_5292][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5292][address(arg2)].field_0) * stor[_5292][address(arg2)].field_96 % 1099511627776))
                            Mask(96, 0, stor[_5292][address(arg2)].field_0) = Mask(96, 0, stor[_5333].field_0)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < mem[96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[ceil32(32 * arg3.length) + 97]:
                            revert with 'NH{q', 50
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        mem[32] = sha3(mem[(32 * idx) + 128], 0)
                        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        mem[0] = arg2
                        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 'NH{q', 17
                        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _7029 = mem[64]
                    mem[mem[64]] = 64
                    _7093 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var78001 = mem[96]
                    mem[mem[64] + 32] = (32 * mem[96]) + 96
                    _8743 = mem[ceil32(32 * arg3.length) + 97]
                    mem[_7029 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
                    mem[_7029 + (32 * _7093) + 128 len 32 * _8743] = mem[ceil32(32 * arg3.length) + 129 len 32 * _8743]
                    var83001 = _8743
                    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                                       mem[mem[64] len _7029 + (32 * _7093) + (32 * _8743) + -mem[64] + 128],
                                       msg.sender,
                                       arg1,
                                       arg2,
                    if not ext_code.size(arg2):
                    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = 160
                    _10253 = mem[96]
                    mem[mem[64] + 164] = mem[96]
                    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var92001 = mem[96]
                    mem[mem[64] + 100] = (32 * mem[96]) + 192
                    _11339 = mem[ceil32(32 * arg3.length) + 97]
                    mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
                    mem[mem[64] + (32 * _10253) + 228 len 32 * _11339] = mem[ceil32(32 * arg3.length) + 129 len 32 * _11339]
                    mem[mem[64] + 132] = (32 * _10253) + (32 * _11339) + 224
                    _12407 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                    mem[mem[64] + (32 * _10253) + (32 * _11339) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                    mem[mem[64] + (32 * _10253) + (32 * _11339) + 260 len ceil32(_12407)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_12407)]
                    if ceil32(_12407) <= _12407:
                        call arg2.0xbc197c81 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _10253) + (32 * _11339) + 224, mem[mem[64] + 164 len ceil32(_12407) + (32 * _10253) + (32 * _11339) + 96]
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            _13441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_13441] == Mask(32, 224, mem[_13441])
                            if Mask(32, 224, mem[_13441]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        if return_data.size <= 3:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if return_data.size < 68:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _13528 = mem[64]
                        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                        if not _13528 + ext_call.return_data[0]:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _13767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _13879 = mem[_13528 + ext_call.return_data[0]]
                        mem[mem[64] + 36] = mem[_13528 + ext_call.return_data[0]]
                        mem[mem[64] + 68 len ceil32(_13879)] = mem[_13528 + ext_call.return_data[0] + 32 len ceil32(_13879)]
                        if ceil32(_13879) <= _13879:
                            revert with 0, 32, mem[mem[64] + 36 len ceil32(_13879) + 32]
                        mem[_13879 + mem[64] + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_13879) + _13767 + -mem[64] + 68
                    mem[_12407 + mem[64] + (32 * _10253) + (32 * _11339) + 260] = 0
                    call arg2.0xbc197c81 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _10253) + (32 * _11339) + 224, mem[mem[64] + 164 len ceil32(_12407) + (32 * _10253) + (32 * _11339) + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if ext_call.success:
                        _13442 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_13442] == Mask(32, 224, mem[_13442])
                        if Mask(32, 224, mem[_13442]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _13531 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                    if not _13531 + ext_call.return_data[0]:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _13768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _13881 = mem[_13531 + ext_call.return_data[0]]
                    mem[mem[64] + 36] = mem[_13531 + ext_call.return_data[0]]
                    mem[mem[64] + 68 len ceil32(_13881)] = mem[_13531 + ext_call.return_data[0] + 32 len ceil32(_13881)]
                    if ceil32(_13881) <= _13881:
                        revert with 0, 32, mem[mem[64] + 36 len ceil32(_13881) + 32]
                    mem[_13881 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_13881) + _13768 + -mem[64] + 68
                idx = 0
                while idx < arg3.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _5296 = sha3(mem[(32 * idx) + 128], 7)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _5318 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    _5335 = sha3(mem[(32 * idx) + 128], 8)
                    if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0):
                        _5354 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_5354] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0)
                        mem[_5354 + 32] = stor[_5296][address(arg1)].field_96 % 1099511627776
                        mem[_5354 + 64] = Mask(120, 0, stor[_5296][address(arg1)].field_136)
                        if not arg1:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = arg1
                        mem[32] = sha3(_5318, 0)
                        if balanceOf[_5318][address(arg1)] > !stor[_5296][address(arg1)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_5318][address(arg1)] + stor[_5296][address(arg1)].field_96 % 1099511627776:
                            if uint256(stor[_5335].field_0) < Mask(96, 0, stor[_5296][address(arg1)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_5318][address(arg1)] + stor[_5296][address(arg1)].field_96 % 1099511627776 and uint256(stor[_5335].field_0) - Mask(96, 0, stor[_5296][address(arg1)].field_0) > -1 / balanceOf[_5318][address(arg1)] + stor[_5296][address(arg1)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_5296][address(arg1)].field_0) > !((uint256(stor[_5335].field_0) * balanceOf[_5318][address(arg1)]) - (Mask(96, 0, stor[_5296][address(arg1)].field_0) * balanceOf[_5318][address(arg1)]) + (uint256(stor[_5335].field_0) * stor[_5296][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5296][address(arg1)].field_0) * stor[_5296][address(arg1)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_5296][address(arg1)].field_0) + (uint256(stor[_5335].field_0) * balanceOf[_5318][address(arg1)]) - (Mask(96, 0, stor[_5296][address(arg1)].field_0) * balanceOf[_5318][address(arg1)]) + (uint256(stor[_5335].field_0) * stor[_5296][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5296][address(arg1)].field_0) * stor[_5296][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_5296][address(arg1)].field_136):
                                Mask(120, 0, stor[_5296][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_5296][address(arg1)].field_0) + (uint256(stor[_5335].field_0) * balanceOf[_5318][address(arg1)]) - (Mask(96, 0, stor[_5296][address(arg1)].field_0) * balanceOf[_5318][address(arg1)]) + (uint256(stor[_5335].field_0) * stor[_5296][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5296][address(arg1)].field_0) * stor[_5296][address(arg1)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_5296][address(arg1)].field_0) = Mask(96, 0, stor[_5335].field_0)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _7016 = mem[96]
                idx = 0
                while idx < _7016:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _7048 = sha3(mem[(32 * idx) + 128], 7)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _7098 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    _7131 = sha3(mem[(32 * idx) + 128], 8)
                    if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                        _7167 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_7167] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                        mem[_7167 + 32] = stor[_7048][address(arg2)].field_96 % 1099511627776
                        mem[_7167 + 64] = Mask(120, 0, stor[_7048][address(arg2)].field_136)
                        if not arg2:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = arg2
                        mem[32] = sha3(_7098, 0)
                        if balanceOf[_7098][address(arg2)] > !stor[_7048][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_7098][address(arg2)] + stor[_7048][address(arg2)].field_96 % 1099511627776:
                            if uint256(stor[_7131].field_0) < Mask(96, 0, stor[_7048][address(arg2)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_7098][address(arg2)] + stor[_7048][address(arg2)].field_96 % 1099511627776 and uint256(stor[_7131].field_0) - Mask(96, 0, stor[_7048][address(arg2)].field_0) > -1 / balanceOf[_7098][address(arg2)] + stor[_7048][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_7048][address(arg2)].field_0) > !((uint256(stor[_7131].field_0) * balanceOf[_7098][address(arg2)]) - (Mask(96, 0, stor[_7048][address(arg2)].field_0) * balanceOf[_7098][address(arg2)]) + (uint256(stor[_7131].field_0) * stor[_7048][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7048][address(arg2)].field_0) * stor[_7048][address(arg2)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_7048][address(arg2)].field_0) + (uint256(stor[_7131].field_0) * balanceOf[_7098][address(arg2)]) - (Mask(96, 0, stor[_7048][address(arg2)].field_0) * balanceOf[_7098][address(arg2)]) + (uint256(stor[_7131].field_0) * stor[_7048][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7048][address(arg2)].field_0) * stor[_7048][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_7048][address(arg2)].field_136):
                                Mask(120, 0, stor[_7048][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7048][address(arg2)].field_0) + (uint256(stor[_7131].field_0) * balanceOf[_7098][address(arg2)]) - (Mask(96, 0, stor[_7048][address(arg2)].field_0) * balanceOf[_7098][address(arg2)]) + (uint256(stor[_7131].field_0) * stor[_7048][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7048][address(arg2)].field_0) * stor[_7048][address(arg2)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_7048][address(arg2)].field_0) = Mask(96, 0, stor[_7131].field_0)
                    if idx == -1:
                        revert with 'NH{q', 17
                    _7016 = mem[96]
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[96]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(32 * arg3.length) + 97]:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 'NH{q', 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _8678 = mem[64]
                mem[mem[64]] = 64
                _8744 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                var82001 = mem[96]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _10152 = mem[ceil32(32 * arg3.length) + 97]
                mem[_8678 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
                mem[_8678 + (32 * _8744) + 128 len 32 * _10152] = mem[ceil32(32 * arg3.length) + 129 len 32 * _10152]
                var87001 = _10152
                emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                                   mem[mem[64] len _8678 + (32 * _8744) + (32 * _10152) + -mem[64] + 128],
                                   msg.sender,
                                   arg1,
                                   arg2,
                if not ext_code.size(arg2):
                mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = 160
                _11388 = mem[96]
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _12408 = mem[ceil32(32 * arg3.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
                mem[mem[64] + (32 * _11388) + 228 len 32 * _12408] = mem[ceil32(32 * arg3.length) + 129 len 32 * _12408]
                mem[mem[64] + 132] = (32 * _11388) + (32 * _12408) + 224
                _13415 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                mem[mem[64] + (32 * _11388) + (32 * _12408) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                mem[mem[64] + (32 * _11388) + (32 * _12408) + 260 len ceil32(_13415)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_13415)]
                if ceil32(_13415) <= _13415:
                    call arg2.0xbc197c81 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11388) + (32 * _12408) + 224, mem[mem[64] + 164 len ceil32(_13415) + (32 * _11388) + (32 * _12408) + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if ext_call.success:
                        _14411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14411] == Mask(32, 224, mem[_14411])
                        if Mask(32, 224, mem[_14411]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _14530 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                    if not _14530 + ext_call.return_data[0]:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _14837 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _14917 = mem[_14530 + ext_call.return_data[0]]
                    mem[mem[64] + 36] = mem[_14530 + ext_call.return_data[0]]
                    mem[mem[64] + 68 len ceil32(_14917)] = mem[_14530 + ext_call.return_data[0] + 32 len ceil32(_14917)]
                    if ceil32(_14917) <= _14917:
                        revert with 0, 32, mem[mem[64] + 36 len ceil32(_14917) + 32]
                    mem[_14917 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_14917) + _14837 + -mem[64] + 68
                mem[_13415 + mem[64] + (32 * _11388) + (32 * _12408) + 260] = 0
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11388) + (32 * _12408) + 224, mem[mem[64] + 164 len ceil32(_13415) + (32 * _11388) + (32 * _12408) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _14412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14412] == Mask(32, 224, mem[_14412])
                    if Mask(32, 224, mem[_14412]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14533 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _14533 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _14919 = mem[_14533 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_14533 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_14919)] = mem[_14533 + ext_call.return_data[0] + 32 len ceil32(_14919)]
                if ceil32(_14919) > _14919:
                    mem[_14919 + mem[64] + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_14919) + 32]
            idx = 0
            while idx < arg3.length:
                if idx >= arg4.length:
                    revert with 'NH{q', 50
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 'NH{q', 17
                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not arg1:
                idx = 0
                while idx < arg3.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _7052 = sha3(mem[(32 * idx) + 128], 7)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _7100 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    _7134 = sha3(mem[(32 * idx) + 128], 8)
                    if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                        _7170 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_7170] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                        mem[_7170 + 32] = stor[_7052][address(arg2)].field_96 % 1099511627776
                        mem[_7170 + 64] = Mask(120, 0, stor[_7052][address(arg2)].field_136)
                        if not arg2:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = arg2
                        mem[32] = sha3(_7100, 0)
                        if balanceOf[_7100][address(arg2)] > !stor[_7052][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_7100][address(arg2)] + stor[_7052][address(arg2)].field_96 % 1099511627776:
                            if uint256(stor[_7134].field_0) < Mask(96, 0, stor[_7052][address(arg2)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_7100][address(arg2)] + stor[_7052][address(arg2)].field_96 % 1099511627776 and uint256(stor[_7134].field_0) - Mask(96, 0, stor[_7052][address(arg2)].field_0) > -1 / balanceOf[_7100][address(arg2)] + stor[_7052][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_7052][address(arg2)].field_0) > !((uint256(stor[_7134].field_0) * balanceOf[_7100][address(arg2)]) - (Mask(96, 0, stor[_7052][address(arg2)].field_0) * balanceOf[_7100][address(arg2)]) + (uint256(stor[_7134].field_0) * stor[_7052][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7052][address(arg2)].field_0) * stor[_7052][address(arg2)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_7052][address(arg2)].field_0) + (uint256(stor[_7134].field_0) * balanceOf[_7100][address(arg2)]) - (Mask(96, 0, stor[_7052][address(arg2)].field_0) * balanceOf[_7100][address(arg2)]) + (uint256(stor[_7134].field_0) * stor[_7052][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7052][address(arg2)].field_0) * stor[_7052][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_7052][address(arg2)].field_136):
                                Mask(120, 0, stor[_7052][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7052][address(arg2)].field_0) + (uint256(stor[_7134].field_0) * balanceOf[_7100][address(arg2)]) - (Mask(96, 0, stor[_7052][address(arg2)].field_0) * balanceOf[_7100][address(arg2)]) + (uint256(stor[_7134].field_0) * stor[_7052][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7052][address(arg2)].field_0) * stor[_7052][address(arg2)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_7052][address(arg2)].field_0) = Mask(96, 0, stor[_7134].field_0)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[96]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(32 * arg3.length) + 97]:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 'NH{q', 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _8680 = mem[64]
                mem[mem[64]] = 64
                _8748 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                var80001 = mem[96]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _10153 = mem[ceil32(32 * arg3.length) + 97]
                mem[_8680 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
                mem[_8680 + (32 * _8748) + 128 len 32 * _10153] = mem[ceil32(32 * arg3.length) + 129 len 32 * _10153]
                var85001 = _10153
                emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                                   mem[mem[64] len _8680 + (32 * _8748) + (32 * _10153) + -mem[64] + 128],
                                   msg.sender,
                                   arg1,
                                   arg2,
                if not ext_code.size(arg2):
                mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = 160
                _11389 = mem[96]
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                var94001 = mem[96]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _12409 = mem[ceil32(32 * arg3.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
                mem[mem[64] + (32 * _11389) + 228 len 32 * _12409] = mem[ceil32(32 * arg3.length) + 129 len 32 * _12409]
                mem[mem[64] + 132] = (32 * _11389) + (32 * _12409) + 224
                _13416 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                mem[mem[64] + (32 * _11389) + (32 * _12409) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                mem[mem[64] + (32 * _11389) + (32 * _12409) + 260 len ceil32(_13416)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_13416)]
                if ceil32(_13416) <= _13416:
                    call arg2.0xbc197c81 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11389) + (32 * _12409) + 224, mem[mem[64] + 164 len ceil32(_13416) + (32 * _11389) + (32 * _12409) + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if ext_call.success:
                        _14413 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14413] == Mask(32, 224, mem[_14413])
                        if Mask(32, 224, mem[_14413]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _14536 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                    if not _14536 + ext_call.return_data[0]:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _14839 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _14921 = mem[_14536 + ext_call.return_data[0]]
                    mem[mem[64] + 36] = mem[_14536 + ext_call.return_data[0]]
                    mem[mem[64] + 68 len ceil32(_14921)] = mem[_14536 + ext_call.return_data[0] + 32 len ceil32(_14921)]
                    if ceil32(_14921) <= _14921:
                        revert with 0, 32, mem[mem[64] + 36 len ceil32(_14921) + 32]
                    mem[_14921 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_14921) + _14839 + -mem[64] + 68
                mem[_13416 + mem[64] + (32 * _11389) + (32 * _12409) + 260] = 0
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11389) + (32 * _12409) + 224, mem[mem[64] + 164 len ceil32(_13416) + (32 * _11389) + (32 * _12409) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _14414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14414] == Mask(32, 224, mem[_14414])
                    if Mask(32, 224, mem[_14414]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14539 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _14539 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14840 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _14923 = mem[_14539 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_14539 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_14923)] = mem[_14539 + ext_call.return_data[0] + 32 len ceil32(_14923)]
                if ceil32(_14923) <= _14923:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_14923) + 32]
                mem[_14923 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_14923) + _14840 + -mem[64] + 68
            idx = 0
            while idx < arg3.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7056 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7102 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _7136 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0):
                    _7175 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7175] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0)
                    mem[_7175 + 32] = stor[_7056][address(arg1)].field_96 % 1099511627776
                    mem[_7175 + 64] = Mask(120, 0, stor[_7056][address(arg1)].field_136)
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = sha3(_7102, 0)
                    if balanceOf[_7102][address(arg1)] > !stor[_7056][address(arg1)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_7102][address(arg1)] + stor[_7056][address(arg1)].field_96 % 1099511627776:
                        if uint256(stor[_7136].field_0) < Mask(96, 0, stor[_7056][address(arg1)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_7102][address(arg1)] + stor[_7056][address(arg1)].field_96 % 1099511627776 and uint256(stor[_7136].field_0) - Mask(96, 0, stor[_7056][address(arg1)].field_0) > -1 / balanceOf[_7102][address(arg1)] + stor[_7056][address(arg1)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7056][address(arg1)].field_0) > !((uint256(stor[_7136].field_0) * balanceOf[_7102][address(arg1)]) - (Mask(96, 0, stor[_7056][address(arg1)].field_0) * balanceOf[_7102][address(arg1)]) + (uint256(stor[_7136].field_0) * stor[_7056][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7056][address(arg1)].field_0) * stor[_7056][address(arg1)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7056][address(arg1)].field_0) + (uint256(stor[_7136].field_0) * balanceOf[_7102][address(arg1)]) - (Mask(96, 0, stor[_7056][address(arg1)].field_0) * balanceOf[_7102][address(arg1)]) + (uint256(stor[_7136].field_0) * stor[_7056][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7056][address(arg1)].field_0) * stor[_7056][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_7056][address(arg1)].field_136):
                            Mask(120, 0, stor[_7056][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7056][address(arg1)].field_0) + (uint256(stor[_7136].field_0) * balanceOf[_7102][address(arg1)]) - (Mask(96, 0, stor[_7056][address(arg1)].field_0) * balanceOf[_7102][address(arg1)]) + (uint256(stor[_7136].field_0) * stor[_7056][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7056][address(arg1)].field_0) * stor[_7056][address(arg1)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_7056][address(arg1)].field_0) = Mask(96, 0, stor[_7136].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _8665 = mem[96]
            idx = 0
            while idx < _8665:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _8704 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _8753 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _8795 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                    _8838 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_8838] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                    mem[_8838 + 32] = stor[_8704][address(arg2)].field_96 % 1099511627776
                    mem[_8838 + 64] = Mask(120, 0, stor[_8704][address(arg2)].field_136)
                    if not arg2:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg2
                    mem[32] = sha3(_8753, 0)
                    if balanceOf[_8753][address(arg2)] > !stor[_8704][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_8753][address(arg2)] + stor[_8704][address(arg2)].field_96 % 1099511627776:
                        if uint256(stor[_8795].field_0) < Mask(96, 0, stor[_8704][address(arg2)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_8753][address(arg2)] + stor[_8704][address(arg2)].field_96 % 1099511627776 and uint256(stor[_8795].field_0) - Mask(96, 0, stor[_8704][address(arg2)].field_0) > -1 / balanceOf[_8753][address(arg2)] + stor[_8704][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_8704][address(arg2)].field_0) > !((uint256(stor[_8795].field_0) * balanceOf[_8753][address(arg2)]) - (Mask(96, 0, stor[_8704][address(arg2)].field_0) * balanceOf[_8753][address(arg2)]) + (uint256(stor[_8795].field_0) * stor[_8704][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8704][address(arg2)].field_0) * stor[_8704][address(arg2)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_8704][address(arg2)].field_0) + (uint256(stor[_8795].field_0) * balanceOf[_8753][address(arg2)]) - (Mask(96, 0, stor[_8704][address(arg2)].field_0) * balanceOf[_8753][address(arg2)]) + (uint256(stor[_8795].field_0) * stor[_8704][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8704][address(arg2)].field_0) * stor[_8704][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_8704][address(arg2)].field_136):
                            Mask(120, 0, stor[_8704][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_8704][address(arg2)].field_0) + (uint256(stor[_8795].field_0) * balanceOf[_8753][address(arg2)]) - (Mask(96, 0, stor[_8704][address(arg2)].field_0) * balanceOf[_8753][address(arg2)]) + (uint256(stor[_8795].field_0) * stor[_8704][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8704][address(arg2)].field_0) * stor[_8704][address(arg2)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_8704][address(arg2)].field_0) = Mask(96, 0, stor[_8795].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                _8665 = mem[96]
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(32 * arg3.length) + 97]:
                    revert with 'NH{q', 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _10112 = mem[64]
            mem[mem[64]] = 64
            _10154 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            var84001 = mem[96]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _11342 = mem[ceil32(32 * arg3.length) + 97]
            mem[_10112 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
            mem[_10112 + (32 * _10154) + 128 len 32 * _11342] = mem[ceil32(32 * arg3.length) + 129 len 32 * _11342]
            var89001 = _11342
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len _10112 + (32 * _10154) + (32 * _11342) + -mem[64] + 128],
                               msg.sender,
                               arg1,
                               arg2,
            if not ext_code.size(arg2):
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            _12441 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _13417 = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * _12441) + 228 len 32 * _13417] = mem[ceil32(32 * arg3.length) + 129 len 32 * _13417]
            mem[mem[64] + 132] = (32 * _12441) + (32 * _13417) + 224
            _14381 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _12441) + (32 * _13417) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _12441) + (32 * _13417) + 260 len ceil32(_14381)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_14381)]
            if ceil32(_14381) <= _14381:
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12441) + (32 * _13417) + 224, mem[mem[64] + 164 len ceil32(_14381) + (32 * _12441) + (32 * _13417) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _15251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15251] == Mask(32, 224, mem[_15251])
                    if Mask(32, 224, mem[_15251]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _15338 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _15338 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _15545 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _15581 = mem[_15338 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_15338 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_15581)] = mem[_15338 + ext_call.return_data[0] + 32 len ceil32(_15581)]
                if ceil32(_15581) <= _15581:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_15581) + 32]
                mem[_15581 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_15581) + _15545 + -mem[64] + 68
            mem[_14381 + mem[64] + (32 * _12441) + (32 * _13417) + 260] = 0
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12441) + (32 * _13417) + 224, mem[mem[64] + 164 len ceil32(_14381) + (32 * _12441) + (32 * _13417) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _15252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15252] == Mask(32, 224, mem[_15252])
                if Mask(32, 224, mem[_15252]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15341 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _15341 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15546 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _15583 = mem[_15341 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_15341 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_15583)] = mem[_15341 + ext_call.return_data[0] + 32 len ceil32(_15583)]
            if ceil32(_15583) <= _15583:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_15583) + 32]
            mem[_15583 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_15583) + _15546 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 'NH{q', 50
            if idx >= arg3.length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg2:
            if not arg1:
                idx = 0
                while idx < arg3.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _7060 = sha3(mem[(32 * idx) + 128], 7)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _7104 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    _7139 = sha3(mem[(32 * idx) + 128], 8)
                    if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                        _7178 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_7178] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                        mem[_7178 + 32] = stor[_7060][address(arg2)].field_96 % 1099511627776
                        mem[_7178 + 64] = Mask(120, 0, stor[_7060][address(arg2)].field_136)
                        if not arg2:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = arg2
                        mem[32] = sha3(_7104, 0)
                        if balanceOf[_7104][address(arg2)] > !stor[_7060][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_7104][address(arg2)] + stor[_7060][address(arg2)].field_96 % 1099511627776:
                            if uint256(stor[_7139].field_0) < Mask(96, 0, stor[_7060][address(arg2)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_7104][address(arg2)] + stor[_7060][address(arg2)].field_96 % 1099511627776 and uint256(stor[_7139].field_0) - Mask(96, 0, stor[_7060][address(arg2)].field_0) > -1 / balanceOf[_7104][address(arg2)] + stor[_7060][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_7060][address(arg2)].field_0) > !((uint256(stor[_7139].field_0) * balanceOf[_7104][address(arg2)]) - (Mask(96, 0, stor[_7060][address(arg2)].field_0) * balanceOf[_7104][address(arg2)]) + (uint256(stor[_7139].field_0) * stor[_7060][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7060][address(arg2)].field_0) * stor[_7060][address(arg2)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_7060][address(arg2)].field_0) + (uint256(stor[_7139].field_0) * balanceOf[_7104][address(arg2)]) - (Mask(96, 0, stor[_7060][address(arg2)].field_0) * balanceOf[_7104][address(arg2)]) + (uint256(stor[_7139].field_0) * stor[_7060][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7060][address(arg2)].field_0) * stor[_7060][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_7060][address(arg2)].field_136):
                                Mask(120, 0, stor[_7060][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7060][address(arg2)].field_0) + (uint256(stor[_7139].field_0) * balanceOf[_7104][address(arg2)]) - (Mask(96, 0, stor[_7060][address(arg2)].field_0) * balanceOf[_7104][address(arg2)]) + (uint256(stor[_7139].field_0) * stor[_7060][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7060][address(arg2)].field_0) * stor[_7060][address(arg2)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_7060][address(arg2)].field_0) = Mask(96, 0, stor[_7139].field_0)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[96]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(32 * arg3.length) + 97]:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 'NH{q', 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _8683 = mem[64]
                mem[mem[64]] = 64
                _8754 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                var82001 = mem[96]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _10158 = mem[ceil32(32 * arg3.length) + 97]
                mem[_8683 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
                mem[_8683 + (32 * _8754) + 128 len 32 * _10158] = mem[ceil32(32 * arg3.length) + 129 len 32 * _10158]
                var87001 = _10158
                emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                                   mem[mem[64] len _8683 + (32 * _8754) + (32 * _10158) + -mem[64] + 128],
                                   msg.sender,
                                   arg1,
                                   arg2,
                if not ext_code.size(arg2):
                mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = 160
                _11391 = mem[96]
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _12411 = mem[ceil32(32 * arg3.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
                mem[mem[64] + (32 * _11391) + 228 len 32 * _12411] = mem[ceil32(32 * arg3.length) + 129 len 32 * _12411]
                mem[mem[64] + 132] = (32 * _11391) + (32 * _12411) + 224
                _13418 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                mem[mem[64] + (32 * _11391) + (32 * _12411) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                mem[mem[64] + (32 * _11391) + (32 * _12411) + 260 len ceil32(_13418)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_13418)]
                if ceil32(_13418) <= _13418:
                    call arg2.0xbc197c81 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11391) + (32 * _12411) + 224, mem[mem[64] + 164 len ceil32(_13418) + (32 * _11391) + (32 * _12411) + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if ext_call.success:
                        _14416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14416] == Mask(32, 224, mem[_14416])
                        if Mask(32, 224, mem[_14416]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _14544 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                    if not _14544 + ext_call.return_data[0]:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _14843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _14929 = mem[_14544 + ext_call.return_data[0]]
                    mem[mem[64] + 36] = mem[_14544 + ext_call.return_data[0]]
                    mem[mem[64] + 68 len ceil32(_14929)] = mem[_14544 + ext_call.return_data[0] + 32 len ceil32(_14929)]
                    if ceil32(_14929) <= _14929:
                        revert with 0, 32, mem[mem[64] + 36 len ceil32(_14929) + 32]
                    mem[_14929 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_14929) + _14843 + -mem[64] + 68
                mem[_13418 + mem[64] + (32 * _11391) + (32 * _12411) + 260] = 0
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11391) + (32 * _12411) + 224, mem[mem[64] + 164 len ceil32(_13418) + (32 * _11391) + (32 * _12411) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _14417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14417] == Mask(32, 224, mem[_14417])
                    if Mask(32, 224, mem[_14417]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14547 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _14547 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14844 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _14931 = mem[_14547 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_14547 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_14931)] = mem[_14547 + ext_call.return_data[0] + 32 len ceil32(_14931)]
                if ceil32(_14931) <= _14931:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_14931) + 32]
                mem[_14931 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_14931) + _14844 + -mem[64] + 68
            idx = 0
            while idx < arg3.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7064 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7106 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _7141 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0):
                    _7183 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7183] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0)
                    mem[_7183 + 32] = stor[_7064][address(arg1)].field_96 % 1099511627776
                    mem[_7183 + 64] = Mask(120, 0, stor[_7064][address(arg1)].field_136)
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = sha3(_7106, 0)
                    if balanceOf[_7106][address(arg1)] > !stor[_7064][address(arg1)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_7106][address(arg1)] + stor[_7064][address(arg1)].field_96 % 1099511627776:
                        if uint256(stor[_7141].field_0) < Mask(96, 0, stor[_7064][address(arg1)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_7106][address(arg1)] + stor[_7064][address(arg1)].field_96 % 1099511627776 and uint256(stor[_7141].field_0) - Mask(96, 0, stor[_7064][address(arg1)].field_0) > -1 / balanceOf[_7106][address(arg1)] + stor[_7064][address(arg1)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7064][address(arg1)].field_0) > !((uint256(stor[_7141].field_0) * balanceOf[_7106][address(arg1)]) - (Mask(96, 0, stor[_7064][address(arg1)].field_0) * balanceOf[_7106][address(arg1)]) + (uint256(stor[_7141].field_0) * stor[_7064][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7064][address(arg1)].field_0) * stor[_7064][address(arg1)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7064][address(arg1)].field_0) + (uint256(stor[_7141].field_0) * balanceOf[_7106][address(arg1)]) - (Mask(96, 0, stor[_7064][address(arg1)].field_0) * balanceOf[_7106][address(arg1)]) + (uint256(stor[_7141].field_0) * stor[_7064][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7064][address(arg1)].field_0) * stor[_7064][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_7064][address(arg1)].field_136):
                            Mask(120, 0, stor[_7064][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7064][address(arg1)].field_0) + (uint256(stor[_7141].field_0) * balanceOf[_7106][address(arg1)]) - (Mask(96, 0, stor[_7064][address(arg1)].field_0) * balanceOf[_7106][address(arg1)]) + (uint256(stor[_7141].field_0) * stor[_7064][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7064][address(arg1)].field_0) * stor[_7064][address(arg1)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_7064][address(arg1)].field_0) = Mask(96, 0, stor[_7141].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _8667 = mem[96]
            idx = 0
            while idx < _8667:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _8710 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _8759 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _8802 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                    _8843 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_8843] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                    mem[_8843 + 32] = stor[_8710][address(arg2)].field_96 % 1099511627776
                    mem[_8843 + 64] = Mask(120, 0, stor[_8710][address(arg2)].field_136)
                    if not arg2:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg2
                    mem[32] = sha3(_8759, 0)
                    if balanceOf[_8759][address(arg2)] > !stor[_8710][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_8759][address(arg2)] + stor[_8710][address(arg2)].field_96 % 1099511627776:
                        if uint256(stor[_8802].field_0) < Mask(96, 0, stor[_8710][address(arg2)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_8759][address(arg2)] + stor[_8710][address(arg2)].field_96 % 1099511627776 and uint256(stor[_8802].field_0) - Mask(96, 0, stor[_8710][address(arg2)].field_0) > -1 / balanceOf[_8759][address(arg2)] + stor[_8710][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_8710][address(arg2)].field_0) > !((uint256(stor[_8802].field_0) * balanceOf[_8759][address(arg2)]) - (Mask(96, 0, stor[_8710][address(arg2)].field_0) * balanceOf[_8759][address(arg2)]) + (uint256(stor[_8802].field_0) * stor[_8710][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8710][address(arg2)].field_0) * stor[_8710][address(arg2)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_8710][address(arg2)].field_0) + (uint256(stor[_8802].field_0) * balanceOf[_8759][address(arg2)]) - (Mask(96, 0, stor[_8710][address(arg2)].field_0) * balanceOf[_8759][address(arg2)]) + (uint256(stor[_8802].field_0) * stor[_8710][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8710][address(arg2)].field_0) * stor[_8710][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_8710][address(arg2)].field_136):
                            Mask(120, 0, stor[_8710][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_8710][address(arg2)].field_0) + (uint256(stor[_8802].field_0) * balanceOf[_8759][address(arg2)]) - (Mask(96, 0, stor[_8710][address(arg2)].field_0) * balanceOf[_8759][address(arg2)]) + (uint256(stor[_8802].field_0) * stor[_8710][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8710][address(arg2)].field_0) * stor[_8710][address(arg2)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_8710][address(arg2)].field_0) = Mask(96, 0, stor[_8802].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                _8667 = mem[96]
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(32 * arg3.length) + 97]:
                    revert with 'NH{q', 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _10115 = mem[64]
            mem[mem[64]] = 64
            _10159 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            var86001 = mem[96]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _11344 = mem[ceil32(32 * arg3.length) + 97]
            mem[_10115 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
            mem[_10115 + (32 * _10159) + 128 len 32 * _11344] = mem[ceil32(32 * arg3.length) + 129 len 32 * _11344]
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len _10115 + (32 * _10159) + (32 * _11344) + -mem[64] + 128],
                               msg.sender,
                               arg1,
                               arg2,
            if not ext_code.size(arg2):
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            _12443 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _13419 = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * _12443) + 228 len 32 * _13419] = mem[ceil32(32 * arg3.length) + 129 len 32 * _13419]
            mem[mem[64] + 132] = (32 * _12443) + (32 * _13419) + 224
            _14382 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _12443) + (32 * _13419) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _12443) + (32 * _13419) + 260 len ceil32(_14382)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_14382)]
            if ceil32(_14382) <= _14382:
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12443) + (32 * _13419) + 224, mem[mem[64] + 164 len ceil32(_14382) + (32 * _12443) + (32 * _13419) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _15253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15253] == Mask(32, 224, mem[_15253])
                    if Mask(32, 224, mem[_15253]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _15344 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _15344 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _15547 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _15585 = mem[_15344 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_15344 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_15585)] = mem[_15344 + ext_call.return_data[0] + 32 len ceil32(_15585)]
                if ceil32(_15585) <= _15585:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_15585) + 32]
                mem[_15585 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_15585) + _15547 + -mem[64] + 68
            mem[_14382 + mem[64] + (32 * _12443) + (32 * _13419) + 260] = 0
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12443) + (32 * _13419) + 224, mem[mem[64] + 164 len ceil32(_14382) + (32 * _12443) + (32 * _13419) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _15254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15254] == Mask(32, 224, mem[_15254])
                if Mask(32, 224, mem[_15254]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15347 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _15347 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15548 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _15587 = mem[_15347 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_15347 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_15587)] = mem[_15347 + ext_call.return_data[0] + 32 len ceil32(_15587)]
            if ceil32(_15587) <= _15587:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_15587) + 32]
            mem[_15587 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_15587) + _15548 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 'NH{q', 50
            if idx >= arg3.length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            idx = 0
            while idx < arg3.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _8714 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _8761 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _8805 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                    _8846 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_8846] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                    mem[_8846 + 32] = stor[_8714][address(arg2)].field_96 % 1099511627776
                    mem[_8846 + 64] = Mask(120, 0, stor[_8714][address(arg2)].field_136)
                    if not arg2:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg2
                    mem[32] = sha3(_8761, 0)
                    if balanceOf[_8761][address(arg2)] > !stor[_8714][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_8761][address(arg2)] + stor[_8714][address(arg2)].field_96 % 1099511627776:
                        if uint256(stor[_8805].field_0) < Mask(96, 0, stor[_8714][address(arg2)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_8761][address(arg2)] + stor[_8714][address(arg2)].field_96 % 1099511627776 and uint256(stor[_8805].field_0) - Mask(96, 0, stor[_8714][address(arg2)].field_0) > -1 / balanceOf[_8761][address(arg2)] + stor[_8714][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_8714][address(arg2)].field_0) > !((uint256(stor[_8805].field_0) * balanceOf[_8761][address(arg2)]) - (Mask(96, 0, stor[_8714][address(arg2)].field_0) * balanceOf[_8761][address(arg2)]) + (uint256(stor[_8805].field_0) * stor[_8714][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8714][address(arg2)].field_0) * stor[_8714][address(arg2)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_8714][address(arg2)].field_0) + (uint256(stor[_8805].field_0) * balanceOf[_8761][address(arg2)]) - (Mask(96, 0, stor[_8714][address(arg2)].field_0) * balanceOf[_8761][address(arg2)]) + (uint256(stor[_8805].field_0) * stor[_8714][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8714][address(arg2)].field_0) * stor[_8714][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_8714][address(arg2)].field_136):
                            Mask(120, 0, stor[_8714][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_8714][address(arg2)].field_0) + (uint256(stor[_8805].field_0) * balanceOf[_8761][address(arg2)]) - (Mask(96, 0, stor[_8714][address(arg2)].field_0) * balanceOf[_8761][address(arg2)]) + (uint256(stor[_8805].field_0) * stor[_8714][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8714][address(arg2)].field_0) * stor[_8714][address(arg2)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_8714][address(arg2)].field_0) = Mask(96, 0, stor[_8805].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(32 * arg3.length) + 97]:
                    revert with 'NH{q', 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _10117 = mem[64]
            mem[mem[64]] = 64
            _10163 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            var84001 = mem[96]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _11345 = mem[ceil32(32 * arg3.length) + 97]
            mem[_10117 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
            mem[_10117 + (32 * _10163) + 128 len 32 * _11345] = mem[ceil32(32 * arg3.length) + 129 len 32 * _11345]
            var89001 = _11345
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len _10117 + (32 * _10163) + (32 * _11345) + -mem[64] + 128],
                               msg.sender,
                               arg1,
                               arg2,
            if not ext_code.size(arg2):
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            _12444 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _13420 = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * _12444) + 228 len 32 * _13420] = mem[ceil32(32 * arg3.length) + 129 len 32 * _13420]
            mem[mem[64] + 132] = (32 * _12444) + (32 * _13420) + 224
            _14383 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _12444) + (32 * _13420) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _12444) + (32 * _13420) + 260 len ceil32(_14383)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_14383)]
            if ceil32(_14383) <= _14383:
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12444) + (32 * _13420) + 224, mem[mem[64] + 164 len ceil32(_14383) + (32 * _12444) + (32 * _13420) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _15255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_15255] == Mask(32, 224, mem[_15255])
                    if Mask(32, 224, mem[_15255]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _15350 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _15350 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _15549 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _15589 = mem[_15350 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_15350 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_15589)] = mem[_15350 + ext_call.return_data[0] + 32 len ceil32(_15589)]
                if ceil32(_15589) <= _15589:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_15589) + 32]
                mem[_15589 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_15589) + _15549 + -mem[64] + 68
            mem[_14383 + mem[64] + (32 * _12444) + (32 * _13420) + 260] = 0
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12444) + (32 * _13420) + 224, mem[mem[64] + 164 len ceil32(_14383) + (32 * _12444) + (32 * _13420) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _15256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15256] == Mask(32, 224, mem[_15256])
                if Mask(32, 224, mem[_15256]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15353 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _15353 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15550 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _15591 = mem[_15353 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_15353 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_15591)] = mem[_15353 + ext_call.return_data[0] + 32 len ceil32(_15591)]
            if ceil32(_15591) <= _15591:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_15591) + 32]
            mem[_15591 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_15591) + _15550 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8718 = sha3(mem[(32 * idx) + 128], 7)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8763 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            _8807 = sha3(mem[(32 * idx) + 128], 8)
            if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0):
                _8851 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8851] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0)
                mem[_8851 + 32] = stor[_8718][address(arg1)].field_96 % 1099511627776
                mem[_8851 + 64] = Mask(120, 0, stor[_8718][address(arg1)].field_136)
                if not arg1:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg1
                mem[32] = sha3(_8763, 0)
                if balanceOf[_8763][address(arg1)] > !stor[_8718][address(arg1)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if balanceOf[_8763][address(arg1)] + stor[_8718][address(arg1)].field_96 % 1099511627776:
                    if uint256(stor[_8807].field_0) < Mask(96, 0, stor[_8718][address(arg1)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[_8763][address(arg1)] + stor[_8718][address(arg1)].field_96 % 1099511627776 and uint256(stor[_8807].field_0) - Mask(96, 0, stor[_8718][address(arg1)].field_0) > -1 / balanceOf[_8763][address(arg1)] + stor[_8718][address(arg1)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_8718][address(arg1)].field_0) > !((uint256(stor[_8807].field_0) * balanceOf[_8763][address(arg1)]) - (Mask(96, 0, stor[_8718][address(arg1)].field_0) * balanceOf[_8763][address(arg1)]) + (uint256(stor[_8807].field_0) * stor[_8718][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8718][address(arg1)].field_0) * stor[_8718][address(arg1)].field_96 % 1099511627776)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_8718][address(arg1)].field_0) + (uint256(stor[_8807].field_0) * balanceOf[_8763][address(arg1)]) - (Mask(96, 0, stor[_8718][address(arg1)].field_0) * balanceOf[_8763][address(arg1)]) + (uint256(stor[_8807].field_0) * stor[_8718][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8718][address(arg1)].field_0) * stor[_8718][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_8718][address(arg1)].field_136):
                        Mask(120, 0, stor[_8718][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_8718][address(arg1)].field_0) + (uint256(stor[_8807].field_0) * balanceOf[_8763][address(arg1)]) - (Mask(96, 0, stor[_8718][address(arg1)].field_0) * balanceOf[_8763][address(arg1)]) + (uint256(stor[_8807].field_0) * stor[_8718][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8718][address(arg1)].field_0) * stor[_8718][address(arg1)].field_96 % 1099511627776))
                Mask(96, 0, stor[_8718][address(arg1)].field_0) = Mask(96, 0, stor[_8807].field_0)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _10104 = mem[96]
        idx = 0
        while idx < _10104:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _10138 = sha3(mem[(32 * idx) + 128], 7)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _10168 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            _10201 = sha3(mem[(32 * idx) + 128], 8)
            if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                _10229 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10229] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                mem[_10229 + 32] = stor[_10138][address(arg2)].field_96 % 1099511627776
                mem[_10229 + 64] = Mask(120, 0, stor[_10138][address(arg2)].field_136)
                if not arg2:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg2
                mem[32] = sha3(_10168, 0)
                if balanceOf[_10168][address(arg2)] > !stor[_10138][address(arg2)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if balanceOf[_10168][address(arg2)] + stor[_10138][address(arg2)].field_96 % 1099511627776:
                    if uint256(stor[_10201].field_0) < Mask(96, 0, stor[_10138][address(arg2)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[_10168][address(arg2)] + stor[_10138][address(arg2)].field_96 % 1099511627776 and uint256(stor[_10201].field_0) - Mask(96, 0, stor[_10138][address(arg2)].field_0) > -1 / balanceOf[_10168][address(arg2)] + stor[_10138][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_10138][address(arg2)].field_0) > !((uint256(stor[_10201].field_0) * balanceOf[_10168][address(arg2)]) - (Mask(96, 0, stor[_10138][address(arg2)].field_0) * balanceOf[_10168][address(arg2)]) + (uint256(stor[_10201].field_0) * stor[_10138][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_10138][address(arg2)].field_0) * stor[_10138][address(arg2)].field_96 % 1099511627776)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_10138][address(arg2)].field_0) + (uint256(stor[_10201].field_0) * balanceOf[_10168][address(arg2)]) - (Mask(96, 0, stor[_10138][address(arg2)].field_0) * balanceOf[_10168][address(arg2)]) + (uint256(stor[_10201].field_0) * stor[_10138][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_10138][address(arg2)].field_0) * stor[_10138][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_10138][address(arg2)].field_136):
                        Mask(120, 0, stor[_10138][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_10138][address(arg2)].field_0) + (uint256(stor[_10201].field_0) * balanceOf[_10168][address(arg2)]) - (Mask(96, 0, stor[_10138][address(arg2)].field_0) * balanceOf[_10168][address(arg2)]) + (uint256(stor[_10201].field_0) * stor[_10138][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_10138][address(arg2)].field_0) * stor[_10138][address(arg2)].field_96 % 1099511627776))
                Mask(96, 0, stor[_10138][address(arg2)].field_0) = Mask(96, 0, stor[_10201].field_0)
            if idx == -1:
                revert with 'NH{q', 17
            _10104 = mem[96]
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(32 * arg3.length) + 97]:
                revert with 'NH{q', 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _11324 = mem[64]
        mem[mem[64]] = 64
        _11346 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        var88001 = mem[96]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _12414 = mem[ceil32(32 * arg3.length) + 97]
        mem[_11324 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
        mem[_11324 + (32 * _11346) + 128 len 32 * _12414] = mem[ceil32(32 * arg3.length) + 129 len 32 * _12414]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _11324 + (32 * _11346) + (32 * _12414) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        _13454 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _14384 = mem[ceil32(32 * arg3.length) + 97]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
        mem[mem[64] + (32 * _13454) + 228 len 32 * _14384] = mem[ceil32(32 * arg3.length) + 129 len 32 * _14384]
        mem[mem[64] + 132] = (32 * _13454) + (32 * _14384) + 224
        _15213 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
        mem[mem[64] + (32 * _13454) + (32 * _14384) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
        mem[mem[64] + (32 * _13454) + (32 * _14384) + 260 len ceil32(_15213)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_15213)]
        if ceil32(_15213) <= _15213:
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _13454) + (32 * _14384) + 224, mem[mem[64] + 164 len ceil32(_15213) + (32 * _13454) + (32 * _14384) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _15731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15731] == Mask(32, 224, mem[_15731])
                if Mask(32, 224, mem[_15731]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15756 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _15756 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15811 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _15819 = mem[_15756 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_15756 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_15819)] = mem[_15756 + ext_call.return_data[0] + 32 len ceil32(_15819)]
            if ceil32(_15819) <= _15819:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_15819) + 32]
            mem[_15819 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_15819) + _15811 + -mem[64] + 68
        mem[_15213 + mem[64] + (32 * _13454) + (32 * _14384) + 260] = 0
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _13454) + (32 * _14384) + 224, mem[mem[64] + 164 len ceil32(_15213) + (32 * _13454) + (32 * _14384) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _15732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15732] == Mask(32, 224, mem[_15732])
            if Mask(32, 224, mem[_15732]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15759 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _15759 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15812 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _15821 = mem[_15759 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_15759 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_15821)] = mem[_15759 + ext_call.return_data[0] + 32 len ceil32(_15821)]
        if ceil32(_15821) <= _15821:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_15821) + 32]
        mem[_15821 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_15821) + _15812 + -mem[64] + 68
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 1)
    if not stor1[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1:
        if arg2:
            if not arg1:
                idx = 0
                while idx < arg3.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _5304 = sha3(mem[(32 * idx) + 128], 7)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _5324 = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    _5341 = sha3(mem[(32 * idx) + 128], 8)
                    if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                        _5360 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_5360] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                        mem[_5360 + 32] = stor[_5304][address(arg2)].field_96 % 1099511627776
                        mem[_5360 + 64] = Mask(120, 0, stor[_5304][address(arg2)].field_136)
                        if not arg2:
                            revert with 0, 'ERC1155: balance query for the zero address'
                        mem[0] = arg2
                        mem[32] = sha3(_5324, 0)
                        if balanceOf[_5324][address(arg2)] > !stor[_5304][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if balanceOf[_5324][address(arg2)] + stor[_5304][address(arg2)].field_96 % 1099511627776:
                            if uint256(stor[_5341].field_0) < Mask(96, 0, stor[_5304][address(arg2)].field_0):
                                revert with 'NH{q', 17
                            if balanceOf[_5324][address(arg2)] + stor[_5304][address(arg2)].field_96 % 1099511627776 and uint256(stor[_5341].field_0) - Mask(96, 0, stor[_5304][address(arg2)].field_0) > -1 / balanceOf[_5324][address(arg2)] + stor[_5304][address(arg2)].field_96 % 1099511627776:
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_5304][address(arg2)].field_0) > !((uint256(stor[_5341].field_0) * balanceOf[_5324][address(arg2)]) - (Mask(96, 0, stor[_5304][address(arg2)].field_0) * balanceOf[_5324][address(arg2)]) + (uint256(stor[_5341].field_0) * stor[_5304][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5304][address(arg2)].field_0) * stor[_5304][address(arg2)].field_96 % 1099511627776)):
                                revert with 'NH{q', 17
                            if Mask(120, 0, stor[_5304][address(arg2)].field_0) + (uint256(stor[_5341].field_0) * balanceOf[_5324][address(arg2)]) - (Mask(96, 0, stor[_5304][address(arg2)].field_0) * balanceOf[_5324][address(arg2)]) + (uint256(stor[_5341].field_0) * stor[_5304][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5304][address(arg2)].field_0) * stor[_5304][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_5304][address(arg2)].field_136):
                                Mask(120, 0, stor[_5304][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_5304][address(arg2)].field_0) + (uint256(stor[_5341].field_0) * balanceOf[_5324][address(arg2)]) - (Mask(96, 0, stor[_5304][address(arg2)].field_0) * balanceOf[_5324][address(arg2)]) + (uint256(stor[_5341].field_0) * stor[_5304][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5304][address(arg2)].field_0) * stor[_5304][address(arg2)].field_96 % 1099511627776))
                        Mask(96, 0, stor[_5304][address(arg2)].field_0) = Mask(96, 0, stor[_5341].field_0)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[96]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(32 * arg3.length) + 97]:
                        revert with 'NH{q', 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 'NH{q', 17
                    balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _7037 = mem[64]
                mem[mem[64]] = 64
                _7109 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                var80001 = mem[96]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _8764 = mem[ceil32(32 * arg3.length) + 97]
                mem[_7037 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
                mem[_7037 + (32 * _7109) + 128 len 32 * _8764] = mem[ceil32(32 * arg3.length) + 129 len 32 * _8764]
                var85001 = _8764
                emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                                   mem[mem[64] len _7037 + (32 * _7109) + (32 * _8764) + -mem[64] + 128],
                                   msg.sender,
                                   arg1,
                                   arg2,
                if not ext_code.size(arg2):
                mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = 160
                _10264 = mem[96]
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                var94001 = mem[96]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _11350 = mem[ceil32(32 * arg3.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
                mem[mem[64] + (32 * _10264) + 228 len 32 * _11350] = mem[ceil32(32 * arg3.length) + 129 len 32 * _11350]
                mem[mem[64] + 132] = (32 * _10264) + (32 * _11350) + 224
                _12415 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                mem[mem[64] + (32 * _10264) + (32 * _11350) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
                mem[mem[64] + (32 * _10264) + (32 * _11350) + 260 len ceil32(_12415)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_12415)]
                if ceil32(_12415) <= _12415:
                    call arg2.0xbc197c81 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _10264) + (32 * _11350) + 224, mem[mem[64] + 164 len ceil32(_12415) + (32 * _10264) + (32 * _11350) + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if ext_call.success:
                        _13446 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_13446] == Mask(32, 224, mem[_13446])
                        if Mask(32, 224, mem[_13446]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _13546 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                    if not _13546 + ext_call.return_data[0]:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _13907 = mem[_13546 + ext_call.return_data[0]]
                    mem[mem[64] + 36] = mem[_13546 + ext_call.return_data[0]]
                    mem[mem[64] + 68 len ceil32(_13907)] = mem[_13546 + ext_call.return_data[0] + 32 len ceil32(_13907)]
                    if ceil32(_13907) > _13907:
                        mem[_13907 + mem[64] + 68] = 0
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_13907) + 32]
                mem[_12415 + mem[64] + (32 * _10264) + (32 * _11350) + 260] = 0
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _10264) + (32 * _11350) + 224, mem[mem[64] + 164 len ceil32(_12415) + (32 * _10264) + (32 * _11350) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _13447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_13447] == Mask(32, 224, mem[_13447])
                    if Mask(32, 224, mem[_13447]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _13549 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _13549 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _13790 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _13909 = mem[_13549 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_13549 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_13909)] = mem[_13549 + ext_call.return_data[0] + 32 len ceil32(_13909)]
                if ceil32(_13909) <= _13909:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_13909) + 32]
                mem[_13909 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_13909) + _13790 + -mem[64] + 68
            idx = 0
            while idx < arg3.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _5308 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _5326 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _5343 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0):
                    _5365 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_5365] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0)
                    mem[_5365 + 32] = stor[_5308][address(arg1)].field_96 % 1099511627776
                    mem[_5365 + 64] = Mask(120, 0, stor[_5308][address(arg1)].field_136)
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = sha3(_5326, 0)
                    if balanceOf[_5326][address(arg1)] > !stor[_5308][address(arg1)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_5326][address(arg1)] + stor[_5308][address(arg1)].field_96 % 1099511627776:
                        if uint256(stor[_5343].field_0) < Mask(96, 0, stor[_5308][address(arg1)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_5326][address(arg1)] + stor[_5308][address(arg1)].field_96 % 1099511627776 and uint256(stor[_5343].field_0) - Mask(96, 0, stor[_5308][address(arg1)].field_0) > -1 / balanceOf[_5326][address(arg1)] + stor[_5308][address(arg1)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_5308][address(arg1)].field_0) > !((uint256(stor[_5343].field_0) * balanceOf[_5326][address(arg1)]) - (Mask(96, 0, stor[_5308][address(arg1)].field_0) * balanceOf[_5326][address(arg1)]) + (uint256(stor[_5343].field_0) * stor[_5308][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5308][address(arg1)].field_0) * stor[_5308][address(arg1)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_5308][address(arg1)].field_0) + (uint256(stor[_5343].field_0) * balanceOf[_5326][address(arg1)]) - (Mask(96, 0, stor[_5308][address(arg1)].field_0) * balanceOf[_5326][address(arg1)]) + (uint256(stor[_5343].field_0) * stor[_5308][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5308][address(arg1)].field_0) * stor[_5308][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_5308][address(arg1)].field_136):
                            Mask(120, 0, stor[_5308][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_5308][address(arg1)].field_0) + (uint256(stor[_5343].field_0) * balanceOf[_5326][address(arg1)]) - (Mask(96, 0, stor[_5308][address(arg1)].field_0) * balanceOf[_5326][address(arg1)]) + (uint256(stor[_5343].field_0) * stor[_5308][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_5308][address(arg1)].field_0) * stor[_5308][address(arg1)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_5308][address(arg1)].field_0) = Mask(96, 0, stor[_5343].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _7023 = mem[96]
            idx = 0
            while idx < _7023:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7072 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7114 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _7150 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                    _7190 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7190] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                    mem[_7190 + 32] = stor[_7072][address(arg2)].field_96 % 1099511627776
                    mem[_7190 + 64] = Mask(120, 0, stor[_7072][address(arg2)].field_136)
                    if not arg2:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg2
                    mem[32] = sha3(_7114, 0)
                    if balanceOf[_7114][address(arg2)] > !stor[_7072][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_7114][address(arg2)] + stor[_7072][address(arg2)].field_96 % 1099511627776:
                        if uint256(stor[_7150].field_0) < Mask(96, 0, stor[_7072][address(arg2)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_7114][address(arg2)] + stor[_7072][address(arg2)].field_96 % 1099511627776 and uint256(stor[_7150].field_0) - Mask(96, 0, stor[_7072][address(arg2)].field_0) > -1 / balanceOf[_7114][address(arg2)] + stor[_7072][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7072][address(arg2)].field_0) > !((uint256(stor[_7150].field_0) * balanceOf[_7114][address(arg2)]) - (Mask(96, 0, stor[_7072][address(arg2)].field_0) * balanceOf[_7114][address(arg2)]) + (uint256(stor[_7150].field_0) * stor[_7072][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7072][address(arg2)].field_0) * stor[_7072][address(arg2)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7072][address(arg2)].field_0) + (uint256(stor[_7150].field_0) * balanceOf[_7114][address(arg2)]) - (Mask(96, 0, stor[_7072][address(arg2)].field_0) * balanceOf[_7114][address(arg2)]) + (uint256(stor[_7150].field_0) * stor[_7072][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7072][address(arg2)].field_0) * stor[_7072][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_7072][address(arg2)].field_136):
                            Mask(120, 0, stor[_7072][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7072][address(arg2)].field_0) + (uint256(stor[_7150].field_0) * balanceOf[_7114][address(arg2)]) - (Mask(96, 0, stor[_7072][address(arg2)].field_0) * balanceOf[_7114][address(arg2)]) + (uint256(stor[_7150].field_0) * stor[_7072][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7072][address(arg2)].field_0) * stor[_7072][address(arg2)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_7072][address(arg2)].field_0) = Mask(96, 0, stor[_7150].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                _7023 = mem[96]
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(32 * arg3.length) + 97]:
                    revert with 'NH{q', 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _8689 = mem[64]
            mem[mem[64]] = 64
            _8765 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            var84001 = mem[96]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _10170 = mem[ceil32(32 * arg3.length) + 97]
            mem[_8689 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
            mem[_8689 + (32 * _8765) + 128 len 32 * _10170] = mem[ceil32(32 * arg3.length) + 129 len 32 * _10170]
            var89001 = _10170
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len _8689 + (32 * _8765) + (32 * _10170) + -mem[64] + 128],
                               msg.sender,
                               arg1,
                               arg2,
            if not ext_code.size(arg2):
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            _11396 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _12416 = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * _11396) + 228 len 32 * _12416] = mem[ceil32(32 * arg3.length) + 129 len 32 * _12416]
            mem[mem[64] + 132] = (32 * _11396) + (32 * _12416) + 224
            _13422 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _11396) + (32 * _12416) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _11396) + (32 * _12416) + 260 len ceil32(_13422)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_13422)]
            if ceil32(_13422) <= _13422:
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11396) + (32 * _12416) + 224, mem[mem[64] + 164 len ceil32(_13422) + (32 * _11396) + (32 * _12416) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _14420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14420] == Mask(32, 224, mem[_14420])
                    if Mask(32, 224, mem[_14420]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14556 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _14556 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14853 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _14945 = mem[_14556 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_14556 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_14945)] = mem[_14556 + ext_call.return_data[0] + 32 len ceil32(_14945)]
                if ceil32(_14945) <= _14945:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_14945) + 32]
                mem[_14945 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_14945) + _14853 + -mem[64] + 68
            mem[_13422 + mem[64] + (32 * _11396) + (32 * _12416) + 260] = 0
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11396) + (32 * _12416) + 224, mem[mem[64] + 164 len ceil32(_13422) + (32 * _11396) + (32 * _12416) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _14421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14421] == Mask(32, 224, mem[_14421])
                if Mask(32, 224, mem[_14421]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _14559 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _14559 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _14854 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _14947 = mem[_14559 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_14559 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_14947)] = mem[_14559 + ext_call.return_data[0] + 32 len ceil32(_14947)]
            if ceil32(_14947) <= _14947:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_14947) + 32]
            mem[_14947 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_14947) + _14854 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 'NH{q', 50
            if idx >= arg3.length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 'NH{q', 17
            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            idx = 0
            while idx < arg3.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7076 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7116 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _7153 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                    _7193 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7193] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                    mem[_7193 + 32] = stor[_7076][address(arg2)].field_96 % 1099511627776
                    mem[_7193 + 64] = Mask(120, 0, stor[_7076][address(arg2)].field_136)
                    if not arg2:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg2
                    mem[32] = sha3(_7116, 0)
                    if balanceOf[_7116][address(arg2)] > !stor[_7076][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_7116][address(arg2)] + stor[_7076][address(arg2)].field_96 % 1099511627776:
                        if uint256(stor[_7153].field_0) < Mask(96, 0, stor[_7076][address(arg2)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_7116][address(arg2)] + stor[_7076][address(arg2)].field_96 % 1099511627776 and uint256(stor[_7153].field_0) - Mask(96, 0, stor[_7076][address(arg2)].field_0) > -1 / balanceOf[_7116][address(arg2)] + stor[_7076][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7076][address(arg2)].field_0) > !((uint256(stor[_7153].field_0) * balanceOf[_7116][address(arg2)]) - (Mask(96, 0, stor[_7076][address(arg2)].field_0) * balanceOf[_7116][address(arg2)]) + (uint256(stor[_7153].field_0) * stor[_7076][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7076][address(arg2)].field_0) * stor[_7076][address(arg2)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7076][address(arg2)].field_0) + (uint256(stor[_7153].field_0) * balanceOf[_7116][address(arg2)]) - (Mask(96, 0, stor[_7076][address(arg2)].field_0) * balanceOf[_7116][address(arg2)]) + (uint256(stor[_7153].field_0) * stor[_7076][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7076][address(arg2)].field_0) * stor[_7076][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_7076][address(arg2)].field_136):
                            Mask(120, 0, stor[_7076][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7076][address(arg2)].field_0) + (uint256(stor[_7153].field_0) * balanceOf[_7116][address(arg2)]) - (Mask(96, 0, stor[_7076][address(arg2)].field_0) * balanceOf[_7116][address(arg2)]) + (uint256(stor[_7153].field_0) * stor[_7076][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7076][address(arg2)].field_0) * stor[_7076][address(arg2)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_7076][address(arg2)].field_0) = Mask(96, 0, stor[_7153].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(32 * arg3.length) + 97]:
                    revert with 'NH{q', 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _8691 = mem[64]
            mem[mem[64]] = 64
            _8769 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            var82001 = mem[96]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _10171 = mem[ceil32(32 * arg3.length) + 97]
            mem[_8691 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
            mem[_8691 + (32 * _8769) + 128 len 32 * _10171] = mem[ceil32(32 * arg3.length) + 129 len 32 * _10171]
            var87001 = _10171
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len _8691 + (32 * _8769) + (32 * _10171) + -mem[64] + 128],
                               msg.sender,
                               arg1,
                               arg2,
            if not ext_code.size(arg2):
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            _11397 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _12417 = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * _11397) + 228 len 32 * _12417] = mem[ceil32(32 * arg3.length) + 129 len 32 * _12417]
            mem[mem[64] + 132] = (32 * _11397) + (32 * _12417) + 224
            _13423 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _11397) + (32 * _12417) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _11397) + (32 * _12417) + 260 len ceil32(_13423)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_13423)]
            if ceil32(_13423) <= _13423:
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11397) + (32 * _12417) + 224, mem[mem[64] + 164 len ceil32(_13423) + (32 * _11397) + (32 * _12417) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _14422 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14422] == Mask(32, 224, mem[_14422])
                    if Mask(32, 224, mem[_14422]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14562 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _14562 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _14949 = mem[_14562 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_14562 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_14949)] = mem[_14562 + ext_call.return_data[0] + 32 len ceil32(_14949)]
                if ceil32(_14949) > _14949:
                    mem[_14949 + mem[64] + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_14949) + 32]
            mem[_13423 + mem[64] + (32 * _11397) + (32 * _12417) + 260] = 0
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11397) + (32 * _12417) + 224, mem[mem[64] + 164 len ceil32(_13423) + (32 * _11397) + (32 * _12417) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _14423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14423] == Mask(32, 224, mem[_14423])
                if Mask(32, 224, mem[_14423]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _14565 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _14565 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _14856 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _14951 = mem[_14565 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_14565 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_14951)] = mem[_14565 + ext_call.return_data[0] + 32 len ceil32(_14951)]
            if ceil32(_14951) <= _14951:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_14951) + 32]
            mem[_14951 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_14951) + _14856 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _7080 = sha3(mem[(32 * idx) + 128], 7)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _7118 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            _7155 = sha3(mem[(32 * idx) + 128], 8)
            if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0):
                _7198 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7198] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0)
                mem[_7198 + 32] = stor[_7080][address(arg1)].field_96 % 1099511627776
                mem[_7198 + 64] = Mask(120, 0, stor[_7080][address(arg1)].field_136)
                if not arg1:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg1
                mem[32] = sha3(_7118, 0)
                if balanceOf[_7118][address(arg1)] > !stor[_7080][address(arg1)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if balanceOf[_7118][address(arg1)] + stor[_7080][address(arg1)].field_96 % 1099511627776:
                    if uint256(stor[_7155].field_0) < Mask(96, 0, stor[_7080][address(arg1)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[_7118][address(arg1)] + stor[_7080][address(arg1)].field_96 % 1099511627776 and uint256(stor[_7155].field_0) - Mask(96, 0, stor[_7080][address(arg1)].field_0) > -1 / balanceOf[_7118][address(arg1)] + stor[_7080][address(arg1)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_7080][address(arg1)].field_0) > !((uint256(stor[_7155].field_0) * balanceOf[_7118][address(arg1)]) - (Mask(96, 0, stor[_7080][address(arg1)].field_0) * balanceOf[_7118][address(arg1)]) + (uint256(stor[_7155].field_0) * stor[_7080][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7080][address(arg1)].field_0) * stor[_7080][address(arg1)].field_96 % 1099511627776)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_7080][address(arg1)].field_0) + (uint256(stor[_7155].field_0) * balanceOf[_7118][address(arg1)]) - (Mask(96, 0, stor[_7080][address(arg1)].field_0) * balanceOf[_7118][address(arg1)]) + (uint256(stor[_7155].field_0) * stor[_7080][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7080][address(arg1)].field_0) * stor[_7080][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_7080][address(arg1)].field_136):
                        Mask(120, 0, stor[_7080][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7080][address(arg1)].field_0) + (uint256(stor[_7155].field_0) * balanceOf[_7118][address(arg1)]) - (Mask(96, 0, stor[_7080][address(arg1)].field_0) * balanceOf[_7118][address(arg1)]) + (uint256(stor[_7155].field_0) * stor[_7080][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7080][address(arg1)].field_0) * stor[_7080][address(arg1)].field_96 % 1099511627776))
                Mask(96, 0, stor[_7080][address(arg1)].field_0) = Mask(96, 0, stor[_7155].field_0)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _8672 = mem[96]
        idx = 0
        while idx < _8672:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8726 = sha3(mem[(32 * idx) + 128], 7)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8774 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            _8818 = sha3(mem[(32 * idx) + 128], 8)
            if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                _8859 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8859] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                mem[_8859 + 32] = stor[_8726][address(arg2)].field_96 % 1099511627776
                mem[_8859 + 64] = Mask(120, 0, stor[_8726][address(arg2)].field_136)
                if not arg2:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg2
                mem[32] = sha3(_8774, 0)
                if balanceOf[_8774][address(arg2)] > !stor[_8726][address(arg2)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if balanceOf[_8774][address(arg2)] + stor[_8726][address(arg2)].field_96 % 1099511627776:
                    if uint256(stor[_8818].field_0) < Mask(96, 0, stor[_8726][address(arg2)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[_8774][address(arg2)] + stor[_8726][address(arg2)].field_96 % 1099511627776 and uint256(stor[_8818].field_0) - Mask(96, 0, stor[_8726][address(arg2)].field_0) > -1 / balanceOf[_8774][address(arg2)] + stor[_8726][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_8726][address(arg2)].field_0) > !((uint256(stor[_8818].field_0) * balanceOf[_8774][address(arg2)]) - (Mask(96, 0, stor[_8726][address(arg2)].field_0) * balanceOf[_8774][address(arg2)]) + (uint256(stor[_8818].field_0) * stor[_8726][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8726][address(arg2)].field_0) * stor[_8726][address(arg2)].field_96 % 1099511627776)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_8726][address(arg2)].field_0) + (uint256(stor[_8818].field_0) * balanceOf[_8774][address(arg2)]) - (Mask(96, 0, stor[_8726][address(arg2)].field_0) * balanceOf[_8774][address(arg2)]) + (uint256(stor[_8818].field_0) * stor[_8726][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8726][address(arg2)].field_0) * stor[_8726][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_8726][address(arg2)].field_136):
                        Mask(120, 0, stor[_8726][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_8726][address(arg2)].field_0) + (uint256(stor[_8818].field_0) * balanceOf[_8774][address(arg2)]) - (Mask(96, 0, stor[_8726][address(arg2)].field_0) * balanceOf[_8774][address(arg2)]) + (uint256(stor[_8818].field_0) * stor[_8726][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8726][address(arg2)].field_0) * stor[_8726][address(arg2)].field_96 % 1099511627776))
                Mask(96, 0, stor[_8726][address(arg2)].field_0) = Mask(96, 0, stor[_8818].field_0)
            if idx == -1:
                revert with 'NH{q', 17
            _8672 = mem[96]
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(32 * arg3.length) + 97]:
                revert with 'NH{q', 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _10123 = mem[64]
        mem[mem[64]] = 64
        _10172 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        var86001 = mem[96]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _11353 = mem[ceil32(32 * arg3.length) + 97]
        mem[_10123 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
        mem[_10123 + (32 * _10172) + 128 len 32 * _11353] = mem[ceil32(32 * arg3.length) + 129 len 32 * _11353]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _10123 + (32 * _10172) + (32 * _11353) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        _12448 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _13424 = mem[ceil32(32 * arg3.length) + 97]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
        mem[mem[64] + (32 * _12448) + 228 len 32 * _13424] = mem[ceil32(32 * arg3.length) + 129 len 32 * _13424]
        mem[mem[64] + 132] = (32 * _12448) + (32 * _13424) + 224
        _14385 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
        mem[mem[64] + (32 * _12448) + (32 * _13424) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
        mem[mem[64] + (32 * _12448) + (32 * _13424) + 260 len ceil32(_14385)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_14385)]
        if ceil32(_14385) <= _14385:
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12448) + (32 * _13424) + 224, mem[mem[64] + 164 len ceil32(_14385) + (32 * _12448) + (32 * _13424) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _15258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15258] == Mask(32, 224, mem[_15258])
                if Mask(32, 224, mem[_15258]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15358 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _15358 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15553 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _15597 = mem[_15358 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_15358 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_15597)] = mem[_15358 + ext_call.return_data[0] + 32 len ceil32(_15597)]
            if ceil32(_15597) <= _15597:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_15597) + 32]
            mem[_15597 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_15597) + _15553 + -mem[64] + 68
        mem[_14385 + mem[64] + (32 * _12448) + (32 * _13424) + 260] = 0
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12448) + (32 * _13424) + 224, mem[mem[64] + 164 len ceil32(_14385) + (32 * _12448) + (32 * _13424) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _15259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15259] == Mask(32, 224, mem[_15259])
            if Mask(32, 224, mem[_15259]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15361 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _15361 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15554 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _15599 = mem[_15361 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_15361 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_15599)] = mem[_15361 + ext_call.return_data[0] + 32 len ceil32(_15599)]
        if ceil32(_15599) <= _15599:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_15599) + 32]
        mem[_15599 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_15599) + _15554 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 'NH{q', 50
        if idx >= arg3.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg2:
        if not arg1:
            idx = 0
            while idx < arg3.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7084 = sha3(mem[(32 * idx) + 128], 7)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _7120 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                _7158 = sha3(mem[(32 * idx) + 128], 8)
                if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                    _7201 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7201] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                    mem[_7201 + 32] = stor[_7084][address(arg2)].field_96 % 1099511627776
                    mem[_7201 + 64] = Mask(120, 0, stor[_7084][address(arg2)].field_136)
                    if not arg2:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg2
                    mem[32] = sha3(_7120, 0)
                    if balanceOf[_7120][address(arg2)] > !stor[_7084][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if balanceOf[_7120][address(arg2)] + stor[_7084][address(arg2)].field_96 % 1099511627776:
                        if uint256(stor[_7158].field_0) < Mask(96, 0, stor[_7084][address(arg2)].field_0):
                            revert with 'NH{q', 17
                        if balanceOf[_7120][address(arg2)] + stor[_7084][address(arg2)].field_96 % 1099511627776 and uint256(stor[_7158].field_0) - Mask(96, 0, stor[_7084][address(arg2)].field_0) > -1 / balanceOf[_7120][address(arg2)] + stor[_7084][address(arg2)].field_96 % 1099511627776:
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7084][address(arg2)].field_0) > !((uint256(stor[_7158].field_0) * balanceOf[_7120][address(arg2)]) - (Mask(96, 0, stor[_7084][address(arg2)].field_0) * balanceOf[_7120][address(arg2)]) + (uint256(stor[_7158].field_0) * stor[_7084][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7084][address(arg2)].field_0) * stor[_7084][address(arg2)].field_96 % 1099511627776)):
                            revert with 'NH{q', 17
                        if Mask(120, 0, stor[_7084][address(arg2)].field_0) + (uint256(stor[_7158].field_0) * balanceOf[_7120][address(arg2)]) - (Mask(96, 0, stor[_7084][address(arg2)].field_0) * balanceOf[_7120][address(arg2)]) + (uint256(stor[_7158].field_0) * stor[_7084][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7084][address(arg2)].field_0) * stor[_7084][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_7084][address(arg2)].field_136):
                            Mask(120, 0, stor[_7084][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7084][address(arg2)].field_0) + (uint256(stor[_7158].field_0) * balanceOf[_7120][address(arg2)]) - (Mask(96, 0, stor[_7084][address(arg2)].field_0) * balanceOf[_7120][address(arg2)]) + (uint256(stor[_7158].field_0) * stor[_7084][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7084][address(arg2)].field_0) * stor[_7084][address(arg2)].field_96 % 1099511627776))
                    Mask(96, 0, stor[_7084][address(arg2)].field_0) = Mask(96, 0, stor[_7158].field_0)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(32 * arg3.length) + 97]:
                    revert with 'NH{q', 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 'NH{q', 17
                balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _8694 = mem[64]
            mem[mem[64]] = 64
            _8775 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            var84001 = mem[96]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _10176 = mem[ceil32(32 * arg3.length) + 97]
            mem[_8694 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
            mem[_8694 + (32 * _8775) + 128 len 32 * _10176] = mem[ceil32(32 * arg3.length) + 129 len 32 * _10176]
            var89001 = _10176
            emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                               mem[mem[64] len _8694 + (32 * _8775) + (32 * _10176) + -mem[64] + 128],
                               msg.sender,
                               arg1,
                               arg2,
            if not ext_code.size(arg2):
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 160
            _11399 = mem[96]
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 100] = (32 * mem[96]) + 192
            _12419 = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
            mem[mem[64] + (32 * _11399) + 228 len 32 * _12419] = mem[ceil32(32 * arg3.length) + 129 len 32 * _12419]
            mem[mem[64] + 132] = (32 * _11399) + (32 * _12419) + 224
            _13425 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _11399) + (32 * _12419) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
            mem[mem[64] + (32 * _11399) + (32 * _12419) + 260 len ceil32(_13425)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_13425)]
            if ceil32(_13425) <= _13425:
                call arg2.0xbc197c81 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11399) + (32 * _12419) + 224, mem[mem[64] + 164 len ceil32(_13425) + (32 * _11399) + (32 * _12419) + 96]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _14425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_14425] == Mask(32, 224, mem[_14425])
                    if Mask(32, 224, mem[_14425]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14570 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _14570 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _14859 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _14957 = mem[_14570 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_14570 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_14957)] = mem[_14570 + ext_call.return_data[0] + 32 len ceil32(_14957)]
                if ceil32(_14957) <= _14957:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_14957) + 32]
                mem[_14957 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_14957) + _14859 + -mem[64] + 68
            mem[_13425 + mem[64] + (32 * _11399) + (32 * _12419) + 260] = 0
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _11399) + (32 * _12419) + 224, mem[mem[64] + 164 len ceil32(_13425) + (32 * _11399) + (32 * _12419) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _14426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_14426] == Mask(32, 224, mem[_14426])
                if Mask(32, 224, mem[_14426]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _14573 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _14573 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _14860 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _14959 = mem[_14573 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_14573 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_14959)] = mem[_14573 + ext_call.return_data[0] + 32 len ceil32(_14959)]
            if ceil32(_14959) <= _14959:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_14959) + 32]
            mem[_14959 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_14959) + _14860 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _7088 = sha3(mem[(32 * idx) + 128], 7)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _7122 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            _7160 = sha3(mem[(32 * idx) + 128], 8)
            if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0):
                _7206 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7206] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0)
                mem[_7206 + 32] = stor[_7088][address(arg1)].field_96 % 1099511627776
                mem[_7206 + 64] = Mask(120, 0, stor[_7088][address(arg1)].field_136)
                if not arg1:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg1
                mem[32] = sha3(_7122, 0)
                if balanceOf[_7122][address(arg1)] > !stor[_7088][address(arg1)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if balanceOf[_7122][address(arg1)] + stor[_7088][address(arg1)].field_96 % 1099511627776:
                    if uint256(stor[_7160].field_0) < Mask(96, 0, stor[_7088][address(arg1)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[_7122][address(arg1)] + stor[_7088][address(arg1)].field_96 % 1099511627776 and uint256(stor[_7160].field_0) - Mask(96, 0, stor[_7088][address(arg1)].field_0) > -1 / balanceOf[_7122][address(arg1)] + stor[_7088][address(arg1)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_7088][address(arg1)].field_0) > !((uint256(stor[_7160].field_0) * balanceOf[_7122][address(arg1)]) - (Mask(96, 0, stor[_7088][address(arg1)].field_0) * balanceOf[_7122][address(arg1)]) + (uint256(stor[_7160].field_0) * stor[_7088][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7088][address(arg1)].field_0) * stor[_7088][address(arg1)].field_96 % 1099511627776)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_7088][address(arg1)].field_0) + (uint256(stor[_7160].field_0) * balanceOf[_7122][address(arg1)]) - (Mask(96, 0, stor[_7088][address(arg1)].field_0) * balanceOf[_7122][address(arg1)]) + (uint256(stor[_7160].field_0) * stor[_7088][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7088][address(arg1)].field_0) * stor[_7088][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_7088][address(arg1)].field_136):
                        Mask(120, 0, stor[_7088][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_7088][address(arg1)].field_0) + (uint256(stor[_7160].field_0) * balanceOf[_7122][address(arg1)]) - (Mask(96, 0, stor[_7088][address(arg1)].field_0) * balanceOf[_7122][address(arg1)]) + (uint256(stor[_7160].field_0) * stor[_7088][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_7088][address(arg1)].field_0) * stor[_7088][address(arg1)].field_96 % 1099511627776))
                Mask(96, 0, stor[_7088][address(arg1)].field_0) = Mask(96, 0, stor[_7160].field_0)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _8674 = mem[96]
        idx = 0
        while idx < _8674:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8732 = sha3(mem[(32 * idx) + 128], 7)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8780 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            _8825 = sha3(mem[(32 * idx) + 128], 8)
            if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                _8864 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8864] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                mem[_8864 + 32] = stor[_8732][address(arg2)].field_96 % 1099511627776
                mem[_8864 + 64] = Mask(120, 0, stor[_8732][address(arg2)].field_136)
                if not arg2:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg2
                mem[32] = sha3(_8780, 0)
                if balanceOf[_8780][address(arg2)] > !stor[_8732][address(arg2)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if balanceOf[_8780][address(arg2)] + stor[_8732][address(arg2)].field_96 % 1099511627776:
                    if uint256(stor[_8825].field_0) < Mask(96, 0, stor[_8732][address(arg2)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[_8780][address(arg2)] + stor[_8732][address(arg2)].field_96 % 1099511627776 and uint256(stor[_8825].field_0) - Mask(96, 0, stor[_8732][address(arg2)].field_0) > -1 / balanceOf[_8780][address(arg2)] + stor[_8732][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_8732][address(arg2)].field_0) > !((uint256(stor[_8825].field_0) * balanceOf[_8780][address(arg2)]) - (Mask(96, 0, stor[_8732][address(arg2)].field_0) * balanceOf[_8780][address(arg2)]) + (uint256(stor[_8825].field_0) * stor[_8732][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8732][address(arg2)].field_0) * stor[_8732][address(arg2)].field_96 % 1099511627776)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_8732][address(arg2)].field_0) + (uint256(stor[_8825].field_0) * balanceOf[_8780][address(arg2)]) - (Mask(96, 0, stor[_8732][address(arg2)].field_0) * balanceOf[_8780][address(arg2)]) + (uint256(stor[_8825].field_0) * stor[_8732][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8732][address(arg2)].field_0) * stor[_8732][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_8732][address(arg2)].field_136):
                        Mask(120, 0, stor[_8732][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_8732][address(arg2)].field_0) + (uint256(stor[_8825].field_0) * balanceOf[_8780][address(arg2)]) - (Mask(96, 0, stor[_8732][address(arg2)].field_0) * balanceOf[_8780][address(arg2)]) + (uint256(stor[_8825].field_0) * stor[_8732][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8732][address(arg2)].field_0) * stor[_8732][address(arg2)].field_96 % 1099511627776))
                Mask(96, 0, stor[_8732][address(arg2)].field_0) = Mask(96, 0, stor[_8825].field_0)
            if idx == -1:
                revert with 'NH{q', 17
            _8674 = mem[96]
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(32 * arg3.length) + 97]:
                revert with 'NH{q', 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _10126 = mem[64]
        mem[mem[64]] = 64
        _10177 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        var88001 = mem[96]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _11355 = mem[ceil32(32 * arg3.length) + 97]
        mem[_10126 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
        mem[_10126 + (32 * _10177) + 128 len 32 * _11355] = mem[ceil32(32 * arg3.length) + 129 len 32 * _11355]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _10126 + (32 * _10177) + (32 * _11355) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        _12450 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _13426 = mem[ceil32(32 * arg3.length) + 97]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
        mem[mem[64] + (32 * _12450) + 228 len 32 * _13426] = mem[ceil32(32 * arg3.length) + 129 len 32 * _13426]
        mem[mem[64] + 132] = (32 * _12450) + (32 * _13426) + 224
        _14386 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
        mem[mem[64] + (32 * _12450) + (32 * _13426) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
        mem[mem[64] + (32 * _12450) + (32 * _13426) + 260 len ceil32(_14386)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_14386)]
        if ceil32(_14386) <= _14386:
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12450) + (32 * _13426) + 224, mem[mem[64] + 164 len ceil32(_14386) + (32 * _12450) + (32 * _13426) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _15260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15260] == Mask(32, 224, mem[_15260])
                if Mask(32, 224, mem[_15260]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15364 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _15364 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15555 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _15601 = mem[_15364 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_15364 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_15601)] = mem[_15364 + ext_call.return_data[0] + 32 len ceil32(_15601)]
            if ceil32(_15601) <= _15601:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_15601) + 32]
            mem[_15601 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_15601) + _15555 + -mem[64] + 68
        mem[_14386 + mem[64] + (32 * _12450) + (32 * _13426) + 260] = 0
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12450) + (32 * _13426) + 224, mem[mem[64] + 164 len ceil32(_14386) + (32 * _12450) + (32 * _13426) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _15261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15261] == Mask(32, 224, mem[_15261])
            if Mask(32, 224, mem[_15261]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15367 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _15367 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15556 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _15603 = mem[_15367 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_15367 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_15603)] = mem[_15367 + ext_call.return_data[0] + 32 len ceil32(_15603)]
        if ceil32(_15603) <= _15603:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_15603) + 32]
        mem[_15603 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_15603) + _15556 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 'NH{q', 50
        if idx >= arg3.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 'NH{q', 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not arg1:
        idx = 0
        while idx < arg3.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8736 = sha3(mem[(32 * idx) + 128], 7)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8782 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            _8828 = sha3(mem[(32 * idx) + 128], 8)
            if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
                _8867 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8867] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
                mem[_8867 + 32] = stor[_8736][address(arg2)].field_96 % 1099511627776
                mem[_8867 + 64] = Mask(120, 0, stor[_8736][address(arg2)].field_136)
                if not arg2:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg2
                mem[32] = sha3(_8782, 0)
                if balanceOf[_8782][address(arg2)] > !stor[_8736][address(arg2)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if balanceOf[_8782][address(arg2)] + stor[_8736][address(arg2)].field_96 % 1099511627776:
                    if uint256(stor[_8828].field_0) < Mask(96, 0, stor[_8736][address(arg2)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[_8782][address(arg2)] + stor[_8736][address(arg2)].field_96 % 1099511627776 and uint256(stor[_8828].field_0) - Mask(96, 0, stor[_8736][address(arg2)].field_0) > -1 / balanceOf[_8782][address(arg2)] + stor[_8736][address(arg2)].field_96 % 1099511627776:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_8736][address(arg2)].field_0) > !((uint256(stor[_8828].field_0) * balanceOf[_8782][address(arg2)]) - (Mask(96, 0, stor[_8736][address(arg2)].field_0) * balanceOf[_8782][address(arg2)]) + (uint256(stor[_8828].field_0) * stor[_8736][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8736][address(arg2)].field_0) * stor[_8736][address(arg2)].field_96 % 1099511627776)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_8736][address(arg2)].field_0) + (uint256(stor[_8828].field_0) * balanceOf[_8782][address(arg2)]) - (Mask(96, 0, stor[_8736][address(arg2)].field_0) * balanceOf[_8782][address(arg2)]) + (uint256(stor[_8828].field_0) * stor[_8736][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8736][address(arg2)].field_0) * stor[_8736][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_8736][address(arg2)].field_136):
                        Mask(120, 0, stor[_8736][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_8736][address(arg2)].field_0) + (uint256(stor[_8828].field_0) * balanceOf[_8782][address(arg2)]) - (Mask(96, 0, stor[_8736][address(arg2)].field_0) * balanceOf[_8782][address(arg2)]) + (uint256(stor[_8828].field_0) * stor[_8736][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8736][address(arg2)].field_0) * stor[_8736][address(arg2)].field_96 % 1099511627776))
                Mask(96, 0, stor[_8736][address(arg2)].field_0) = Mask(96, 0, stor[_8828].field_0)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(32 * arg3.length) + 97]:
                revert with 'NH{q', 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 'NH{q', 17
            balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _10128 = mem[64]
        mem[mem[64]] = 64
        _10181 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        var86001 = mem[96]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _11356 = mem[ceil32(32 * arg3.length) + 97]
        mem[_10128 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
        mem[_10128 + (32 * _10181) + 128 len 32 * _11356] = mem[ceil32(32 * arg3.length) + 129 len 32 * _11356]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _10128 + (32 * _10181) + (32 * _11356) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        _12451 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _13427 = mem[ceil32(32 * arg3.length) + 97]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
        mem[mem[64] + (32 * _12451) + 228 len 32 * _13427] = mem[ceil32(32 * arg3.length) + 129 len 32 * _13427]
        mem[mem[64] + 132] = (32 * _12451) + (32 * _13427) + 224
        _14387 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
        mem[mem[64] + (32 * _12451) + (32 * _13427) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
        mem[mem[64] + (32 * _12451) + (32 * _13427) + 260 len ceil32(_14387)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_14387)]
        if ceil32(_14387) <= _14387:
            call arg2.0xbc197c81 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12451) + (32 * _13427) + 224, mem[mem[64] + 164 len ceil32(_14387) + (32 * _12451) + (32 * _13427) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _15262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_15262] == Mask(32, 224, mem[_15262])
                if Mask(32, 224, mem[_15262]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15370 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _15370 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _15557 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _15605 = mem[_15370 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_15370 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_15605)] = mem[_15370 + ext_call.return_data[0] + 32 len ceil32(_15605)]
            if ceil32(_15605) <= _15605:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_15605) + 32]
            mem[_15605 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_15605) + _15557 + -mem[64] + 68
        mem[_14387 + mem[64] + (32 * _12451) + (32 * _13427) + 260] = 0
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _12451) + (32 * _13427) + 224, mem[mem[64] + 164 len ceil32(_14387) + (32 * _12451) + (32 * _13427) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _15263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15263] == Mask(32, 224, mem[_15263])
            if Mask(32, 224, mem[_15263]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15373 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _15373 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15558 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _15607 = mem[_15373 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_15373 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_15607)] = mem[_15373 + ext_call.return_data[0] + 32 len ceil32(_15607)]
        if ceil32(_15607) <= _15607:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_15607) + 32]
        mem[_15607 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_15607) + _15558 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _8740 = sha3(mem[(32 * idx) + 128], 7)
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _8784 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        _8830 = sha3(mem[(32 * idx) + 128], 8)
        if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0):
            _8872 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8872] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg1)].field_0)
            mem[_8872 + 32] = stor[_8740][address(arg1)].field_96 % 1099511627776
            mem[_8872 + 64] = Mask(120, 0, stor[_8740][address(arg1)].field_136)
            if not arg1:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = arg1
            mem[32] = sha3(_8784, 0)
            if balanceOf[_8784][address(arg1)] > !stor[_8740][address(arg1)].field_96 % 1099511627776:
                revert with 'NH{q', 17
            if balanceOf[_8784][address(arg1)] + stor[_8740][address(arg1)].field_96 % 1099511627776:
                if uint256(stor[_8830].field_0) < Mask(96, 0, stor[_8740][address(arg1)].field_0):
                    revert with 'NH{q', 17
                if balanceOf[_8784][address(arg1)] + stor[_8740][address(arg1)].field_96 % 1099511627776 and uint256(stor[_8830].field_0) - Mask(96, 0, stor[_8740][address(arg1)].field_0) > -1 / balanceOf[_8784][address(arg1)] + stor[_8740][address(arg1)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if Mask(120, 0, stor[_8740][address(arg1)].field_0) > !((uint256(stor[_8830].field_0) * balanceOf[_8784][address(arg1)]) - (Mask(96, 0, stor[_8740][address(arg1)].field_0) * balanceOf[_8784][address(arg1)]) + (uint256(stor[_8830].field_0) * stor[_8740][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8740][address(arg1)].field_0) * stor[_8740][address(arg1)].field_96 % 1099511627776)):
                    revert with 'NH{q', 17
                if Mask(120, 0, stor[_8740][address(arg1)].field_0) + (uint256(stor[_8830].field_0) * balanceOf[_8784][address(arg1)]) - (Mask(96, 0, stor[_8740][address(arg1)].field_0) * balanceOf[_8784][address(arg1)]) + (uint256(stor[_8830].field_0) * stor[_8740][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8740][address(arg1)].field_0) * stor[_8740][address(arg1)].field_96 % 1099511627776) != Mask(120, 0, stor[_8740][address(arg1)].field_136):
                    Mask(120, 0, stor[_8740][address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, stor[_8740][address(arg1)].field_0) + (uint256(stor[_8830].field_0) * balanceOf[_8784][address(arg1)]) - (Mask(96, 0, stor[_8740][address(arg1)].field_0) * balanceOf[_8784][address(arg1)]) + (uint256(stor[_8830].field_0) * stor[_8740][address(arg1)].field_96 % 1099511627776) - (Mask(96, 0, stor[_8740][address(arg1)].field_0) * stor[_8740][address(arg1)].field_96 % 1099511627776))
            Mask(96, 0, stor[_8740][address(arg1)].field_0) = Mask(96, 0, stor[_8830].field_0)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _10108 = mem[96]
    idx = 0
    while idx < _10108:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _10148 = sha3(mem[(32 * idx) + 128], 7)
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _10186 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        _10216 = sha3(mem[(32 * idx) + 128], 8)
        if uint256(stor8[mem[(32 * idx) + 128]]) != Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0):
            _10242 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10242] = Mask(96, 0, sub_1a44f22d[mem[(32 * idx) + 128]][address(arg2)].field_0)
            mem[_10242 + 32] = stor[_10148][address(arg2)].field_96 % 1099511627776
            mem[_10242 + 64] = Mask(120, 0, stor[_10148][address(arg2)].field_136)
            if not arg2:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = arg2
            mem[32] = sha3(_10186, 0)
            if balanceOf[_10186][address(arg2)] > !stor[_10148][address(arg2)].field_96 % 1099511627776:
                revert with 'NH{q', 17
            if balanceOf[_10186][address(arg2)] + stor[_10148][address(arg2)].field_96 % 1099511627776:
                if uint256(stor[_10216].field_0) < Mask(96, 0, stor[_10148][address(arg2)].field_0):
                    revert with 'NH{q', 17
                if balanceOf[_10186][address(arg2)] + stor[_10148][address(arg2)].field_96 % 1099511627776 and uint256(stor[_10216].field_0) - Mask(96, 0, stor[_10148][address(arg2)].field_0) > -1 / balanceOf[_10186][address(arg2)] + stor[_10148][address(arg2)].field_96 % 1099511627776:
                    revert with 'NH{q', 17
                if Mask(120, 0, stor[_10148][address(arg2)].field_0) > !((uint256(stor[_10216].field_0) * balanceOf[_10186][address(arg2)]) - (Mask(96, 0, stor[_10148][address(arg2)].field_0) * balanceOf[_10186][address(arg2)]) + (uint256(stor[_10216].field_0) * stor[_10148][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_10148][address(arg2)].field_0) * stor[_10148][address(arg2)].field_96 % 1099511627776)):
                    revert with 'NH{q', 17
                if Mask(120, 0, stor[_10148][address(arg2)].field_0) + (uint256(stor[_10216].field_0) * balanceOf[_10186][address(arg2)]) - (Mask(96, 0, stor[_10148][address(arg2)].field_0) * balanceOf[_10186][address(arg2)]) + (uint256(stor[_10216].field_0) * stor[_10148][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_10148][address(arg2)].field_0) * stor[_10148][address(arg2)].field_96 % 1099511627776) != Mask(120, 0, stor[_10148][address(arg2)].field_136):
                    Mask(120, 0, stor[_10148][address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, stor[_10148][address(arg2)].field_0) + (uint256(stor[_10216].field_0) * balanceOf[_10186][address(arg2)]) - (Mask(96, 0, stor[_10148][address(arg2)].field_0) * balanceOf[_10186][address(arg2)]) + (uint256(stor[_10216].field_0) * stor[_10148][address(arg2)].field_96 % 1099511627776) - (Mask(96, 0, stor[_10148][address(arg2)].field_0) * stor[_10148][address(arg2)].field_96 % 1099511627776))
            Mask(96, 0, stor[_10148][address(arg2)].field_0) = Mask(96, 0, stor[_10216].field_0)
        if idx == -1:
            revert with 'NH{q', 17
        _10108 = mem[96]
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[ceil32(32 * arg3.length) + 97]:
            revert with 'NH{q', 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        mem[0] = arg2
        if balanceOf[mem[(32 * idx) + 128]][arg2] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][arg2] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _11333 = mem[64]
    mem[mem[64]] = 64
    _11357 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var90001 = mem[96]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _12422 = mem[ceil32(32 * arg3.length) + 97]
    mem[_11333 + (32 * mem[96]) + 96] = mem[ceil32(32 * arg3.length) + 97]
    mem[_11333 + (32 * _11357) + 128 len 32 * _12422] = mem[ceil32(32 * arg3.length) + 129 len 32 * _12422]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len _11333 + (32 * _11357) + (32 * _12422) + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    _13458 = mem[96]
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    _14388 = mem[ceil32(32 * arg3.length) + 97]
    mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * arg3.length) + 97]
    mem[mem[64] + (32 * _13458) + 228 len 32 * _14388] = mem[ceil32(32 * arg3.length) + 129 len 32 * _14388]
    mem[mem[64] + 132] = (32 * _13458) + (32 * _14388) + 224
    _15214 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
    mem[mem[64] + (32 * _13458) + (32 * _14388) + 228] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98]
    mem[mem[64] + (32 * _13458) + (32 * _14388) + 260 len ceil32(_15214)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 130 len ceil32(_15214)]
    if ceil32(_15214) <= _15214:
        call arg2.0xbc197c81 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _13458) + (32 * _14388) + 224, mem[mem[64] + 164 len ceil32(_15214) + (32 * _13458) + (32 * _14388) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _15733 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15733] == Mask(32, 224, mem[_15733])
            if Mask(32, 224, mem[_15733]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15762 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _15762 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _15813 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _15823 = mem[_15762 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_15762 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_15823)] = mem[_15762 + ext_call.return_data[0] + 32 len ceil32(_15823)]
        if ceil32(_15823) <= _15823:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_15823) + 32]
        mem[_15823 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_15823) + _15813 + -mem[64] + 68
    mem[_15214 + mem[64] + (32 * _13458) + (32 * _14388) + 260] = 0
    call arg2.0xbc197c81 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _13458) + (32 * _14388) + 224, mem[mem[64] + 164 len ceil32(_15214) + (32 * _13458) + (32 * _14388) + 96]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _15734 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15734] == Mask(32, 224, mem[_15734])
        if Mask(32, 224, mem[_15734]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _15765 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
    if not _15765 + ext_call.return_data[0]:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _15814 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _15825 = mem[_15765 + ext_call.return_data[0]]
    mem[mem[64] + 36] = mem[_15765 + ext_call.return_data[0]]
    mem[mem[64] + 68 len ceil32(_15825)] = mem[_15765 + ext_call.return_data[0] + 32 len ceil32(_15825)]
    if ceil32(_15825) <= _15825:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_15825) + 32]
    mem[_15825 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_15825) + _15814 + -mem[64] + 68
}



}
