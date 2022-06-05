contract main {




// =====================  Runtime code  =====================


#
#  - sub_0f3fc4fe(?)
#  - sub_1ba480a6(?)
#  - sub_8a063693(?)
#
const sub_dec072ba(?) = 0x7cb33dc20e253a47684f80b04d87b57438163eb6a2ef5f348297f4e97015b407

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint8 stor99;
mapping of struct roleAdmin;
uint256 totalUsers;
mapping of struct stor152;
mapping of uint8 stor153;
mapping of address sub_8a07af06;
uint256 sub_cd6f078e;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function sub_258adde2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor153[arg1[all]])
}

function sub_8a07af06(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_8a07af06[arg1[all]]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function isExisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(address(stor152[address(arg1)].field_0))
}

function totalUsers() payable {
    return totalUsers
}

function sub_cd6f078e(?) payable {
    return sub_cd6f078e
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not uint8(roleAdmin[0][address(arg1)].field_0):
        uint8(roleAdmin[0][address(arg1)].field_0) = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor152[arg1].field_256):
        if bool(stor152[arg1].field_256) == uint255(uint256(stor152[arg1].field_256)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor152[arg1].field_256):
            if bool(stor152[arg1].field_256) == uint255(uint256(stor152[arg1].field_256)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor152[arg1].field_256)):
                if 31 >= uint255(uint256(stor152[arg1].field_256)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor152[arg1].field_264)
                else:
                    mem[128] = uint256(stor152[arg1][1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor152[arg1].field_256)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor152[arg1][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor152[arg1].field_256) == stor152[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor152[arg1].field_257 % 128:
                if 31 >= stor152[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor152[arg1].field_264)
                else:
                    mem[128] = uint256(stor152[arg1][1].field_0)
                    idx = 128
                    s = 0
                    while stor152[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor152[arg1][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor152[arg1].field_0), 
               Array(len=2 * Mask(256, -1, uint256(stor152[arg1].field_256)), data=mem[128 len ceil32(uint255(uint256(stor152[arg1].field_256)) * 0.5)]),
               address(stor152[arg1].field_512)
    if bool(stor152[arg1].field_256) == stor152[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor152[arg1].field_256):
        if bool(stor152[arg1].field_256) == uint255(uint256(stor152[arg1].field_256)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor152[arg1].field_256)):
            if 31 >= uint255(uint256(stor152[arg1].field_256)) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor152[arg1].field_264)
            else:
                mem[128] = uint256(stor152[arg1][1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor152[arg1].field_256)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor152[arg1][s + 1].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor152[arg1].field_256) == stor152[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor152[arg1].field_257 % 128:
            if 31 >= stor152[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor152[arg1].field_264)
            else:
                mem[128] = uint256(stor152[arg1][1].field_0)
                idx = 128
                s = 0
                while stor152[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor152[arg1][s + 1].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor152[arg1].field_0), 
           Array(len=stor152[arg1].field_256 % 128, data=mem[128 len ceil32(stor152[arg1].field_257 % 128)]),
           address(stor152[arg1].field_512)
}

function getUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor152[address(arg1)].field_256):
        if bool(stor152[address(arg1)].field_256) == uint255(uint256(stor152[address(arg1)].field_256)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor152[address(arg1)].field_256):
            if bool(stor152[address(arg1)].field_256) == uint255(uint256(stor152[address(arg1)].field_256)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor152[address(arg1)].field_256)):
                if 31 >= uint255(uint256(stor152[address(arg1)].field_256)) * 0.5:
                    mem[320] = 256 * Mask(248, 0, stor152[address(arg1)].field_264)
                else:
                    mem[320] = uint256(stor152[address(arg1)][1].field_0)
                    idx = 320
                    s = 0
                    while (uint255(uint256(stor152[address(arg1)].field_256)) * 0.5) + 288 > idx:
                        mem[idx + 32] = uint256(stor152[address(arg1)][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor152[address(arg1)].field_256) == stor152[address(arg1)].field_257 % 128 < 32:
                revert with 0, 34
            if stor152[address(arg1)].field_257 % 128:
                if 31 >= stor152[address(arg1)].field_257 % 128:
                    mem[320] = 256 * Mask(248, 0, stor152[address(arg1)].field_264)
                else:
                    mem[320] = uint256(stor152[address(arg1)][1].field_0)
                    idx = 320
                    s = 0
                    while stor152[address(arg1)].field_257 % 128 + 288 > idx:
                        mem[idx + 32] = uint256(stor152[address(arg1)][s + 1].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, address(stor152[address(arg1)].field_0), 
               96,
               address(stor152[address(arg1)].field_512),
               2 * Mask(256, -1, uint256(stor152[address(arg1)].field_256)),
               mem[320 len ceil32(uint255(uint256(stor152[address(arg1)].field_256)) * 0.5)]
    if bool(stor152[address(arg1)].field_256) == stor152[address(arg1)].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor152[address(arg1)].field_256):
        if bool(stor152[address(arg1)].field_256) == uint255(uint256(stor152[address(arg1)].field_256)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor152[address(arg1)].field_256)):
            if 31 >= uint255(uint256(stor152[address(arg1)].field_256)) * 0.5:
                mem[320] = 256 * Mask(248, 0, stor152[address(arg1)].field_264)
            else:
                mem[320] = uint256(stor152[address(arg1)][1].field_0)
                idx = 320
                s = 0
                while (uint255(uint256(stor152[address(arg1)].field_256)) * 0.5) + 288 > idx:
                    mem[idx + 32] = uint256(stor152[address(arg1)][s + 1].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor152[address(arg1)].field_256) == stor152[address(arg1)].field_257 % 128 < 32:
            revert with 0, 34
        if stor152[address(arg1)].field_257 % 128:
            if 31 >= stor152[address(arg1)].field_257 % 128:
                mem[320] = 256 * Mask(248, 0, stor152[address(arg1)].field_264)
            else:
                mem[320] = uint256(stor152[address(arg1)][1].field_0)
                idx = 320
                s = 0
                while stor152[address(arg1)].field_257 % 128 + 288 > idx:
                    mem[idx + 32] = uint256(stor152[address(arg1)][s + 1].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, address(stor152[address(arg1)].field_0), 
           96,
           address(stor152[address(arg1)].field_512),
           stor152[address(arg1)].field_256 % 128,
           mem[320 len ceil32(stor152[address(arg1)].field_257 % 128)]
}

function register(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if address(stor152[address(msg.sender)].field_0):
        revert with 0, 'Profile: User already exists'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 153
    if uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Profile: Login is already taken'
    if not address(stor152[address(arg2)].field_0):
        if arg2:
            revert with 0, 'Profile: Invalid sponsor'
    if arg1.length < 3:
        revert with 0, 'Profile: Invalid login length'
    if arg1.length > 32:
        revert with 0, 'Profile: Invalid login length'
    uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 153)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) = 1
    address(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 154)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) = msg.sender
    address(stor152[address(msg.sender)].field_0) = msg.sender
    if bool(stor152[address(msg.sender)].field_256):
        if bool(stor152[address(msg.sender)].field_256) == uint255(uint256(stor152[address(msg.sender)].field_256)) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor152[address(msg.sender)][1][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor152[address(msg.sender)].field_256) = 0
            idx = 0
            while (uint255(uint256(stor152[address(msg.sender)].field_256)) * 0.5) + 31 / 32 > idx:
                uint256(stor152[address(msg.sender)][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor152[address(msg.sender)].field_256) == stor152[address(msg.sender)].field_257 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor152[address(msg.sender)][1][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor152[address(msg.sender)].field_256) = 0
            idx = 0
            while stor152[address(msg.sender)].field_257 % 128 + 31 / 32 > idx:
                uint256(stor152[address(msg.sender)][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
    address(stor152[address(msg.sender)].field_512) = uint64(arg2) << 96
    if totalUsers > -2:
        revert with 0, 17
    totalUsers++
    sub_cd6f078e = sub_cd6f078e xor sha3(msg.sender, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 20, 0, arg2))
    emit 0x190b24b3: 128, 0, 0, block.timestamp, arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender, sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256), arg2
}



}
