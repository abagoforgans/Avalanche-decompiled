contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_a87c8567(?) = 0x8241b3f7a5e3f6cdd968c7e08a67720c63f2b86059be67519b7eacb14491a077

const sub_b309483a(?) = 10000

const CREATOR_ROLE = 0x828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd882f

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a

const MANAGER_ROLE = 0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08


mapping of struct roleAdmin;
array of struct roleMember;
mapping of uint256 balanceOf;
array of uint8 stor3;
array of struct stor4;
array of uint256 stor5;
mapping of struct stor6;
address stor8;
address stor9;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function paused() payable {
    return bool(uint8(stor5.length))
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(stor3[address(arg1)][address(arg2)]))
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    uint8(stor3[address(msg.sender)][address(arg1)]) = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getProperty(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6[arg1].field_768:
        mem[1024] = stor6[arg1][3].field_0
        idx = 1024
        s = 0
        while (32 * stor6[arg1].field_768) + 992 > idx:
            mem[idx + 32] = stor6[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return 32, stor6[arg1].field_0, 
           stor6[arg1].field_256,
           stor6[arg1].field_512,
           448,
           stor6[arg1].field_1024,
           stor6[arg1].field_1280,
           stor6[arg1].field_1536,
           stor6[arg1].field_1792,
           stor6[arg1].field_2048,
           stor6[arg1].field_2304,
           stor6[arg1].field_2560,
           stor6[arg1].field_2816,
           stor6[arg1].field_3072,
           stor6[arg1].field_3328,
           stor6[arg1].field_768,
           mem[1024 len 32 * stor6[arg1].field_768]
}

function getOwners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 7
    mem[64] = (32 * stor7[arg1].field_0) + 128
    mem[96] = stor7[arg1].field_0
    s = 128
    idx = 0
    while idx < stor7[arg1].field_0:
        mem[0] = sha3(arg1, 7)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = address(stor7[arg1][idx].field_0)
        mem[_13 + 32] = stor7[arg1][idx].field_256
        mem[_13 + 64] = stor7[arg1][idx].field_512
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _21 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_21 + 32]
        mem[t + 64] = mem[_21 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _14 + (96 * _15) + -mem[64] + 64
}

function pause() payable {
    if uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0):
        if uint8(stor5.length):
            revert with 0, 'Pausable: paused'
        uint8(stor5.length) = 1
        emit Paused(msg.sender);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
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
    revert with 0, 'Strings: hex length insufficient'
}

function unpause() payable {
    if uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0):
        if not uint8(stor5.length):
            revert with 0, 'Pausable: not paused'
        uint8(stor5.length) = 0
        emit Unpaused(msg.sender);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
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
    revert with 0, 'Strings: hex length insufficient'
}

function renounceRole(bytes32 arg1, address arg2) payable {
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

function grantRole(bytes32 arg1, address arg2) payable {
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
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
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 2)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function revokeRole(bytes32 arg1, address arg2) payable {
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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

function sub_1bb75835(?) payable {
    require calldata.size - 4 >= 352
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not uint8(roleAdmin[0x828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd882f][address(msg.sender)].field_0):
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
        s = 0x828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd882f
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StealableProperties: cap must be > 0'
    if stor6[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StealableProperties: property with given id already exists'
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg3.length) + 164] = 0
    require ext_code.size(stor8)
    call stor8.0xdddd19c8 with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'StealableProperties: Cafe needs to have all pools'
    mem[ceil32(return_data.size) + 576 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[ceil32(return_data.size) + (32 * arg3.length) + 576] = 0
    stor6[arg1].field_0 = arg1
    stor6[arg1].field_256 = arg2
    stor6[arg1].field_512 = 0
    stor6[arg1].field_768 = arg3.length
    if not arg3.length:
        idx = 0
        while stor6[arg1].field_768 > idx:
            stor6[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 576
        while ceil32(return_data.size) + (32 * arg3.length) + 576 > idx:
            stor6[arg1][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while stor6[arg1].field_768 > idx:
            stor6[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg1].field_1024 = arg4
    stor6[arg1].field_1280 = arg5
    stor6[arg1].field_1536 = arg6
    stor6[arg1].field_1792 = arg7
    stor6[arg1].field_2048 = arg8
    stor6[arg1].field_2304 = arg9
    stor6[arg1].field_2560 = arg10
    stor6[arg1].field_2816 = 0
    stor6[arg1].field_3072 = arg11
    stor6[arg1].field_3328 = 0
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0x1fa30268: arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length]), arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg1
}

function setURI(string arg1) payable {
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
    if not uint8(roleAdmin[0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08][address(msg.sender)].field_0):
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4.length = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor4.field_0) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    stor4[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 % 128 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4.length = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while stor4.length.field_1 % 128 + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor4.field_0) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    stor4[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while stor4.length.field_1 % 128 + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    emit SetURI(Array(len=arg1.length, data=arg1[all]));
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[stor4.length.field_1 % 128 + ceil32(stor4.length.field_1 % 128) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}

function sub_7a18097b(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if not uint8(roleAdmin[0x8241b3f7a5e3f6cdd968c7e08a67720c63f2b86059be67519b7eacb14491a077][address(msg.sender)].field_0):
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
        s = 0x8241b3f7a5e3f6cdd968c7e08a67720c63f2b86059be67519b7eacb14491a077
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not stor6[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StealableProperties: property not available for stealing'
    mem[32] = 7
    if stor6[arg1].field_2816 >= stor7[arg1].field_0:
        revert with 0, 50
    mem[0] = sha3(arg1, 7)
    if block.timestamp < stor7[arg1][stor6[arg1].field_2816].field_256:
        revert with 0, 17
    if block.timestamp - stor7[arg1][stor6[arg1].field_2816].field_256 < stor6[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StealableProperties: property still protected'
    mem[96] = 0
    if not address(arg2):
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[128] = 1
    mem[160] = arg1
    mem[192] = 1
    mem[64] = 256
    mem[224] = 1
    if uint8(stor5.length):
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < 1:
        if idx >= mem[128]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 160]
        mem[32] = 6
        _220 = sha3(mem[(32 * idx) + 160], 6)
        if idx >= mem[192]:
            revert with 0, 50
        _228 = mem[(32 * idx) + 224]
        if mem[(32 * idx) + 224] and stor6[mem[(32 * idx) + 160]].field_1024 > -1 / mem[(32 * idx) + 224]:
            revert with 0, 17
        if mem[(32 * idx) + 224] and stor6[mem[(32 * idx) + 160]].field_1280 > -1 / mem[(32 * idx) + 224]:
            revert with 0, 17
        if mem[(32 * idx) + 224] * stor6[mem[(32 * idx) + 160]].field_1024 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if mem[(32 * idx) + 224] * stor6[mem[(32 * idx) + 160]].field_1280 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        _241 = mem[64]
        mem[mem[64] + 32] = -1 * mem[(32 * idx) + 224] * stor6[mem[(32 * idx) + 160]].field_1024
        mem[mem[64] + 64] = -1 * _228 * uint256(stor5[_220])
        _242 = mem[64]
        mem[mem[64] + 128] = _228 * stor4[_220].field_0
        mem[mem[64] + 160] = _228 * uint256(stor5[_220])
        mem[mem[64] + 96] = 64
        mem[64] = mem[64] + 192
        if not uint256(stor3[_220]):
            mem[_241 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
            mem[_241 + 196] = address(stor7[arg1][stor6[arg1].field_2816].field_0)
            mem[_241 + 228] = 64
            _251 = mem[_242]
            mem[_241 + 260] = mem[_242]
            s = 0
            while s < _251:
                mem[s + _241 + 292] = mem[s + _242 + 32]
                s = s + 32
                continue 
            if ceil32(_251) > _251:
                mem[_251 + _241 + 292] = 0
            require ext_code.size(stor8)
            call stor8.0x3c12014 with:
                 gas gas_remaining wei
                args address(stor7[arg1][stor6[arg1].field_2816].field_0), 64, mem[_241 + 260 len ceil32(_251) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_241 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
            mem[_241 + 196] = address(arg2)
            mem[_241 + 228] = 64
            mem[_241 + 260] = mem[_241 + 96]
            s = 0
            while s < mem[_241 + 96]:
                mem[s + _241 + 292] = mem[s + _241 + 128]
                s = s + 32
                continue 
            if ceil32(mem[_241 + 96]) > mem[_241 + 96]:
                mem[mem[_241 + 96] + _241 + 292] = 0
            require ext_code.size(stor8)
            call stor8.0x3c12014 with:
                 gas gas_remaining wei
                args address(arg2), Array(len=mem[_241 + 96], data=mem[_241 + 292 len ceil32(mem[_241 + 96])])
        else:
            mem[_241 + 192] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
            mem[_241 + 196] = address(stor7[arg1][stor6[arg1].field_2816].field_0)
            mem[_241 + 228] = 96
            mem[_241 + 292] = uint256(stor3[_220])
            mem[0] = _220 + 3
            s = 0
            t = _241 + 324
            u = sha3(mem[0])
            while s < uint256(stor3[_220]):
                mem[t] = stor[u]
                s = s + 1
                t = t + 32
                u = u + 1
                continue 
            mem[_241 + 260] = (32 * uint256(stor3[_220])) + 128
            _416 = mem[_242]
            mem[_241 + (32 * uint256(stor3[_220])) + 324] = mem[_242]
            s = 0
            while s < _416:
                mem[s + _241 + (32 * uint256(stor3[_220])) + 356] = mem[s + _242 + 32]
                s = s + 32
                continue 
            if ceil32(_416) <= _416:
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_416) + _241 + (32 * uint256(stor3[_220])) + -mem[64] + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _626 = mem[64]
                mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = 96
                mem[mem[64] + 100] = uint256(stor3[_220])
                mem[0] = _220 + 3
                s = 0
                t = mem[64] + 132
                u = sha3(mem[0])
                while s < uint256(stor3[_220]):
                    mem[t] = stor[u]
                    s = s + 1
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_626 + 68] = (32 * uint256(stor3[_220])) + 128
                _728 = mem[_241 + 96]
                mem[_626 + (32 * uint256(stor3[_220])) + 132] = mem[_241 + 96]
                s = 0
                while s < _728:
                    mem[s + _626 + (32 * uint256(stor3[_220])) + 164] = mem[s + _241 + 128]
                    s = s + 32
                    continue 
                if ceil32(_728) > _728:
                    mem[_728 + _626 + (32 * uint256(stor3[_220])) + 164] = 0
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_728) + _626 + (32 * uint256(stor3[_220])) + -mem[64] + 160]
            else:
                mem[_416 + _241 + (32 * uint256(stor3[_220])) + 356] = 0
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_416) + _241 + (32 * uint256(stor3[_220])) + -mem[64] + 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _627 = mem[64]
                mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = 96
                mem[mem[64] + 100] = uint256(stor3[_220])
                mem[0] = _220 + 3
                s = 0
                t = mem[64] + 132
                u = sha3(mem[0])
                while s < uint256(stor3[_220]):
                    mem[t] = stor[u]
                    s = s + 1
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_627 + 68] = (32 * uint256(stor3[_220])) + 128
                _729 = mem[_241 + 96]
                mem[_627 + (32 * uint256(stor3[_220])) + 132] = mem[_241 + 96]
                s = 0
                while s < _729:
                    mem[s + _627 + (32 * uint256(stor3[_220])) + 164] = mem[s + _241 + 128]
                    s = s + 32
                    continue 
                if ceil32(_729) > _729:
                    mem[_729 + _627 + (32 * uint256(stor3[_220])) + 164] = 0
                require ext_code.size(stor8)
                call stor8.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_729) + _627 + (32 * uint256(stor3[_220])) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[128]:
            revert with 0, 50
        if address(stor7[arg1][stor6[arg1].field_2816].field_0):
            s = 0
            t = 0
            while s < stor7[mem[(32 * idx) + 160]].field_0:
                if s > !stor6[mem[(32 * idx) + 160]].field_2816:
                    revert with 0, 17
                if not stor6[mem[(32 * idx) + 160]].field_512:
                    revert with 0, 18
                if s + stor6[mem[(32 * idx) + 160]].field_2816 % stor6[mem[(32 * idx) + 160]].field_512 >= stor7[mem[(32 * idx) + 160]].field_0:
                    revert with 0, 50
                mem[0] = sha3(mem[(32 * idx) + 160], 7)
                if address(stor7[mem[(32 * idx) + 160]][s + stor6[mem[(32 * idx) + 160]].field_2816 % stor6[mem[(32 * idx) + 160]].field_512].field_0) != address(stor7[arg1][stor6[arg1].field_2816].field_0):
                    if t != _228:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                else:
                    if s + stor6[mem[(32 * idx) + 160]].field_2816 % stor6[mem[(32 * idx) + 160]].field_512 >= stor7[mem[(32 * idx) + 160]].field_0:
                        revert with 0, 50
                    mem[0] = sha3(mem[(32 * idx) + 160], 7)
                    address(stor7[mem[(32 * idx) + 160]][s + stor6[mem[(32 * idx) + 160]].field_2816 % stor6[mem[(32 * idx) + 160]].field_512].field_0) = address(arg2)
                    if t == -1:
                        revert with 0, 17
                    if t + 1 != _228:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + 1
                        continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            revert with 0, 'StealableProperties: owner not found on transfer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if balanceOf[arg1][address(stor7[arg1][stor6[arg1].field_2816].field_0)] < 1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    mem[32] = sha3(arg1, 2)
    balanceOf[arg1][address(stor7[arg1][stor6[arg1].field_2816].field_0)]--
    mem[0] = address(arg2)
    if balanceOf[arg1][address(arg2)] > -2:
        revert with 0, 17
    balanceOf[arg1][address(arg2)]++
    emit TransferSingle(arg1, 1, msg.sender, address(stor7[arg1][stor6[arg1].field_2816].field_0), address(arg2));
    if ext_code.size(address(arg2)):
        mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(stor7[arg1][stor6[arg1].field_2816].field_0)
        mem[mem[64] + 68] = arg1
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 160
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            require ext_code.size(address(arg2))
            call address(arg2).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(stor7[arg1][stor6[arg1].field_2816].field_0), arg1, 1, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_427] == Mask(32, 224, mem[_427])
            if Mask(32, 224, mem[_427]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            mem[mem[96] + mem[64] + 196] = 0
            require ext_code.size(address(arg2))
            call address(arg2).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(stor7[arg1][stor6[arg1].field_2816].field_0), arg1, 1, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_428] == Mask(32, 224, mem[_428])
            if Mask(32, 224, mem[_428]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if stor6[arg1].field_3328 < stor6[arg1].field_3072:
        if stor6[arg1].field_3328 == -1:
            revert with 0, 17
        stor6[arg1].field_3328++
        require ext_code.size(stor9)
        call stor9.0x731133e9 with:
             gas gas_remaining wei
            args address(arg2), arg1, 1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor7[arg1][stor6[arg1].field_2816].field_256 = block.timestamp
    stor7[arg1][stor6[arg1].field_2816].field_512 = arg3
    if 1 > !stor6[arg1].field_2816:
        revert with 0, 17
    if not stor6[arg1].field_512:
        revert with 0, 18
    stor6[arg1].field_2816 = stor6[arg1].field_2816 + 1 % stor6[arg1].field_512
    emit 0xfe1f15b5: arg3, stor6[arg1].field_3328 < stor6[arg1].field_3072, arg1, address(arg2), address(stor7[arg1][stor6[arg1].field_2816].field_0)
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
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
        if uint8(stor5.length):
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        idx = 0
        while idx < 1:
            if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 6
            _377 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 6)
            if idx >= mem[ceil32(ceil32(arg5.length)) + 161]:
                revert with 0, 50
            _388 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] and stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1024 > -1 / mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] and stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1280 > -1 / mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] * stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1024 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] * stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1280 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            _406 = mem[64]
            mem[mem[64] + 32] = -1 * mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] * stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1024
            mem[mem[64] + 64] = -1 * _388 * uint256(stor5[_377])
            _407 = mem[64]
            mem[mem[64] + 128] = _388 * stor4[_377].field_0
            mem[mem[64] + 160] = _388 * uint256(stor5[_377])
            mem[mem[64] + 96] = 64
            mem[64] = mem[64] + 192
            if not uint256(stor3[_377]):
                mem[_406 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                mem[_406 + 196] = arg1
                mem[_406 + 228] = 64
                _422 = mem[_407]
                mem[_406 + 260] = mem[_407]
                s = 0
                while s < _422:
                    mem[s + _406 + 292] = mem[s + _407 + 32]
                    s = s + 32
                    continue 
                if ceil32(_422) > _422:
                    mem[_422 + _406 + 292] = 0
                require ext_code.size(stor8)
                call stor8.0x3c12014 with:
                     gas gas_remaining wei
                    args address(arg1), 64, mem[_406 + 260 len ceil32(_422) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_406 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                mem[_406 + 196] = arg2
                mem[_406 + 228] = 64
                mem[_406 + 260] = mem[_406 + 96]
                s = 0
                while s < mem[_406 + 96]:
                    mem[s + _406 + 292] = mem[s + _406 + 128]
                    s = s + 32
                    continue 
                if ceil32(mem[_406 + 96]) > mem[_406 + 96]:
                    mem[mem[_406 + 96] + _406 + 292] = 0
                require ext_code.size(stor8)
                call stor8.0x3c12014 with:
                     gas gas_remaining wei
                    args address(arg2), Array(len=mem[_406 + 96], data=mem[_406 + 292 len ceil32(mem[_406 + 96])])
            else:
                mem[_406 + 192] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                mem[_406 + 196] = arg1
                mem[_406 + 228] = 96
                mem[_406 + 292] = uint256(stor3[_377])
                mem[0] = _377 + 3
                s = 0
                t = _406 + 324
                u = sha3(mem[0])
                while s < uint256(stor3[_377]):
                    mem[t] = stor[u]
                    s = s + 1
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_406 + 260] = (32 * uint256(stor3[_377])) + 128
                _722 = mem[_407]
                mem[_406 + (32 * uint256(stor3[_377])) + 324] = mem[_407]
                s = 0
                while s < _722:
                    mem[s + _406 + (32 * uint256(stor3[_377])) + 356] = mem[s + _407 + 32]
                    s = s + 32
                    continue 
                if ceil32(_722) <= _722:
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_722) + _406 + (32 * uint256(stor3[_377])) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1048 = mem[64]
                    mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = uint256(stor3[_377])
                    mem[0] = _377 + 3
                    s = 0
                    t = mem[64] + 132
                    u = sha3(_377 + 3)
                    while s < uint256(stor3[_377]):
                        mem[t] = stor[u]
                        s = s + 1
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[mem[64] + 68] = (32 * uint256(stor3[_377])) + 128
                    _1208 = mem[_406 + 96]
                    mem[mem[64] + (32 * uint256(stor3[_377])) + 132] = mem[_406 + 96]
                    s = 0
                    while s < _1208:
                        mem[s + mem[64] + (32 * uint256(stor3[_377])) + 164] = mem[s + _406 + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1208) > _1208:
                        mem[_1208 + _1048 + (32 * uint256(stor3[_377])) + 164] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1208) + _1048 + (32 * uint256(stor3[_377])) + -mem[64] + 160]
                else:
                    mem[_722 + _406 + (32 * uint256(stor3[_377])) + 356] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_722) + _406 + (32 * uint256(stor3[_377])) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = uint256(stor3[_377])
                    mem[0] = _377 + 3
                    s = 0
                    t = mem[64] + 132
                    u = sha3(_377 + 3)
                    while s < uint256(stor3[_377]):
                        mem[t] = stor[u]
                        s = s + 1
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[mem[64] + 68] = (32 * uint256(stor3[_377])) + 128
                    _1209 = mem[_406 + 96]
                    mem[mem[64] + (32 * uint256(stor3[_377])) + 132] = mem[_406 + 96]
                    s = 0
                    while s < _1209:
                        mem[s + mem[64] + (32 * uint256(stor3[_377])) + 164] = mem[s + _406 + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1209) > _1209:
                        mem[_1209 + mem[64] + (32 * uint256(stor3[_377])) + 164] = 0
                    require ext_code.size(stor8)
                    call stor8.0xc10545ad with:
                         gas gas_remaining wei
                        args address(arg2), Array(len=uint256(stor3[_377]), data=mem[mem[64] + 132 len ceil32(_1209) + (32 * uint256(stor3[_377])) + 32]), (32 * uint256(stor3[_377])) + 128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                revert with 0, 50
            if arg1:
                s = 0
                t = 0
                while s < stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_0:
                    if s > !stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816:
                        revert with 0, 17
                    if not stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512:
                        revert with 0, 18
                    if s + stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816 % stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512 >= stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_0:
                        revert with 0, 50
                    mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                    if address(stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][s + stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816 % stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512].field_0) != arg1:
                        if t != _388:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                    else:
                        if s + stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816 % stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512 >= stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_0:
                            revert with 0, 50
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        address(stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][s + stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816 % stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512].field_0) = arg2
                        if t == -1:
                            revert with 0, 17
                        if t + 1 != _388:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + 1
                            continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                revert with 0, 'StealableProperties: owner not found on transfer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        mem[32] = sha3(arg3, 2)
        balanceOf[arg3][address(arg1)] -= arg4
        mem[0] = arg2
        if balanceOf[arg3][arg2] > !arg4:
            revert with 0, 17
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
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_734] == Mask(32, 224, mem[_734])
                if Mask(32, 224, mem[_734]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[mem[96] + mem[64] + 196] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _735 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_735] == Mask(32, 224, mem[_735])
                if Mask(32, 224, mem[_735]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 3)
        if not uint8(stor3[address(arg1)][address(msg.sender)]):
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg2:
            revert with 0, 'ERC1155: transfer to the zero address'
        mem[ceil32(ceil32(arg5.length)) + 97] = 1
        mem[ceil32(ceil32(arg5.length)) + 129] = arg3
        mem[ceil32(ceil32(arg5.length)) + 161] = 1
        mem[64] = ceil32(ceil32(arg5.length)) + 225
        mem[ceil32(ceil32(arg5.length)) + 193] = arg4
        if uint8(stor5.length):
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        idx = 0
        while idx < 1:
            if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 6
            _382 = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 6)
            if idx >= mem[ceil32(ceil32(arg5.length)) + 161]:
                revert with 0, 50
            _393 = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] and stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1024 > -1 / mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] and stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1280 > -1 / mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] * stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1024 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] * stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1280 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            _409 = mem[64]
            mem[mem[64] + 32] = -1 * mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193] * stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_1024
            mem[mem[64] + 64] = -1 * _393 * uint256(stor5[_382])
            _410 = mem[64]
            mem[mem[64] + 128] = _393 * stor4[_382].field_0
            mem[mem[64] + 160] = _393 * uint256(stor5[_382])
            mem[mem[64] + 96] = 64
            mem[64] = mem[64] + 192
            if not uint256(stor3[_382]):
                mem[_409 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                mem[_409 + 196] = arg1
                mem[_409 + 228] = 64
                _423 = mem[_410]
                mem[_409 + 260] = mem[_410]
                s = 0
                while s < _423:
                    mem[s + _409 + 292] = mem[s + _410 + 32]
                    s = s + 32
                    continue 
                if ceil32(_423) > _423:
                    mem[_423 + _409 + 292] = 0
                require ext_code.size(stor8)
                call stor8.0x3c12014 with:
                     gas gas_remaining wei
                    args address(arg1), 64, mem[_409 + 260 len ceil32(_423) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_409 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                mem[_409 + 196] = arg2
                mem[_409 + 228] = 64
                mem[_409 + 260] = mem[_409 + 96]
                s = 0
                while s < mem[_409 + 96]:
                    mem[s + _409 + 292] = mem[s + _409 + 128]
                    s = s + 32
                    continue 
                if ceil32(mem[_409 + 96]) > mem[_409 + 96]:
                    mem[mem[_409 + 96] + _409 + 292] = 0
                require ext_code.size(stor8)
                call stor8.0x3c12014 with:
                     gas gas_remaining wei
                    args address(arg2), Array(len=mem[_409 + 96], data=mem[_409 + 292 len ceil32(mem[_409 + 96])])
            else:
                mem[_409 + 192] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                mem[_409 + 196] = arg1
                mem[_409 + 228] = 96
                mem[_409 + 292] = uint256(stor3[_382])
                mem[0] = _382 + 3
                s = 0
                t = _409 + 324
                u = sha3(mem[0])
                while s < uint256(stor3[_382]):
                    mem[t] = stor[u]
                    s = s + 1
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_409 + 260] = (32 * uint256(stor3[_382])) + 128
                _723 = mem[_410]
                mem[_409 + (32 * uint256(stor3[_382])) + 324] = mem[_410]
                s = 0
                while s < _723:
                    mem[s + _409 + (32 * uint256(stor3[_382])) + 356] = mem[s + _410 + 32]
                    s = s + 32
                    continue 
                if ceil32(_723) <= _723:
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_723) + _409 + (32 * uint256(stor3[_382])) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1050 = mem[64]
                    mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = uint256(stor3[_382])
                    mem[0] = _382 + 3
                    s = 0
                    t = mem[64] + 132
                    u = sha3(mem[0])
                    while s < uint256(stor3[_382]):
                        mem[t] = stor[u]
                        s = s + 1
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1050 + 68] = (32 * uint256(stor3[_382])) + 128
                    _1214 = mem[_409 + 96]
                    mem[_1050 + (32 * uint256(stor3[_382])) + 132] = mem[_409 + 96]
                    s = 0
                    while s < _1214:
                        mem[s + _1050 + (32 * uint256(stor3[_382])) + 164] = mem[s + _409 + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1214) > _1214:
                        mem[_1214 + _1050 + (32 * uint256(stor3[_382])) + 164] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1214) + _1050 + (32 * uint256(stor3[_382])) + -mem[64] + 160]
                else:
                    mem[_723 + _409 + (32 * uint256(stor3[_382])) + 356] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_723) + _409 + (32 * uint256(stor3[_382])) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1051 = mem[64]
                    mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = uint256(stor3[_382])
                    mem[0] = _382 + 3
                    s = 0
                    t = mem[64] + 132
                    u = sha3(mem[0])
                    while s < uint256(stor3[_382]):
                        mem[t] = stor[u]
                        s = s + 1
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1051 + 68] = (32 * uint256(stor3[_382])) + 128
                    _1215 = mem[_409 + 96]
                    mem[_1051 + (32 * uint256(stor3[_382])) + 132] = mem[_409 + 96]
                    s = 0
                    while s < _1215:
                        mem[s + _1051 + (32 * uint256(stor3[_382])) + 164] = mem[s + _409 + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1215) > _1215:
                        mem[_1215 + _1051 + (32 * uint256(stor3[_382])) + 164] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1215) + _1051 + (32 * uint256(stor3[_382])) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[ceil32(ceil32(arg5.length)) + 97]:
                revert with 0, 50
            if arg1:
                s = 0
                t = 0
                while s < stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_0:
                    if s > !stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816:
                        revert with 0, 17
                    if not stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512:
                        revert with 0, 18
                    if s + stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816 % stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512 >= stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_0:
                        revert with 0, 50
                    mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                    if address(stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][s + stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816 % stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512].field_0) != arg1:
                        if t != _393:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                    else:
                        if s + stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816 % stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512 >= stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_0:
                            revert with 0, 50
                        mem[0] = sha3(mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129], 7)
                        address(stor7[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][s + stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_2816 % stor6[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]].field_512].field_0) = arg2
                        if t == -1:
                            revert with 0, 17
                        if t + 1 != _393:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + 1
                            continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                revert with 0, 'StealableProperties: owner not found on transfer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        mem[32] = sha3(arg3, 2)
        balanceOf[arg3][address(arg1)] -= arg4
        mem[0] = arg2
        if balanceOf[arg3][arg2] > !arg4:
            revert with 0, 17
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
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(mem[96])])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _738 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_738] == Mask(32, 224, mem[_738])
                if Mask(32, 224, mem[_738]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[mem[96] + mem[64] + 196] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), arg3, arg4, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _739 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_739] == Mask(32, 224, mem[_739])
                if Mask(32, 224, mem[_739]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg5.length)) + 97
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
        mem[ceil32(ceil32(arg5.length)) + 129 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg5.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg5.length)) + 225 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg5.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg5.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg5.length)) + 289 len 66], 0, 0 >> 928,
                    0
    if stor6[arg2].field_512 > !arg3:
        revert with 0, 17
    if stor6[arg2].field_512 + arg3 > stor6[arg2].field_256:
        revert with 0, 'StealableProperties: additional amount must not exceed cap'
    idx = 0
    while idx < arg3:
        stor7[arg2].field_0++
        mem[0] = sha3(arg2, 7)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor6[arg2].field_2816 <= uint255(stor6[arg2].field_513):
        if stor7[arg2].field_0 < arg3:
            revert with 0, 17
        idx = 0
        while idx < stor6[arg2].field_2816:
            if stor7[arg2].field_0 - arg3 > !idx:
                revert with 0, 17
            if not stor7[arg2].field_0:
                revert with 0, 18
            if stor7[arg2].field_0 - arg3 > !idx:
                revert with 0, 17
            if stor7[arg2].field_0 - arg3 + idx > !arg3:
                revert with 0, 17
            if not stor7[arg2].field_0:
                revert with 0, 18
            if stor7[arg2].field_0 + idx % stor7[arg2].field_0 >= stor7[arg2].field_0:
                revert with 0, 50
            if stor7[arg2].field_0 - arg3 + idx % stor7[arg2].field_0 >= stor7[arg2].field_0:
                revert with 0, 50
            mem[0] = sha3(arg2, 7)
            address(stor7[arg2][stor7[arg2].field_0 - arg3 + idx % stor7[arg2].field_0].field_0) = address(stor7[arg2][stor7[arg2].field_0 + idx % stor7[arg2].field_0].field_0)
            stor7[arg2][stor7[arg2].field_0 - arg3 + idx % stor7[arg2].field_0].field_256 = stor7[arg2][stor7[arg2].field_0 + idx % stor7[arg2].field_0].field_256
            stor7[arg2][stor7[arg2].field_0 - arg3 + idx % stor7[arg2].field_0].field_512 = stor7[arg2][stor7[arg2].field_0 + idx % stor7[arg2].field_0].field_512
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3:
            if stor7[arg2].field_0 - arg3 > !stor6[arg2].field_2816:
                revert with 0, 17
            if stor7[arg2].field_0 - arg3 + stor6[arg2].field_2816 > !idx:
                revert with 0, 17
            if not stor7[arg2].field_0:
                revert with 0, 18
            _1070 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1070] = arg1
            mem[_1070 + 32] = block.timestamp
            mem[_1070 + 64] = arg4
            if stor7[arg2].field_0 - arg3 + stor6[arg2].field_2816 + idx % stor7[arg2].field_0 >= stor7[arg2].field_0:
                revert with 0, 50
            mem[0] = sha3(arg2, 7)
            address(stor7[arg2][stor7[arg2].field_0 - arg3 + stor6[arg2].field_2816 + idx % stor7[arg2].field_0].field_0) = arg1
            stor7[arg2][stor7[arg2].field_0 - arg3 + stor6[arg2].field_2816 + idx % stor7[arg2].field_0].field_256 = block.timestamp
            stor7[arg2][stor7[arg2].field_0 - arg3 + stor6[arg2].field_2816 + idx % stor7[arg2].field_0].field_512 = arg4
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = arg2
        mem[32] = 6
        if stor6[arg2].field_512 > !arg3:
            revert with 0, 17
        stor6[arg2].field_512 += arg3
        if not arg1:
            revert with 0, 'ERC1155: mint to the zero address'
        _1059 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_1059]:
            revert with 0, 50
        mem[_1059 + 32] = arg2
        mem[_1059 + 64] = 1
        mem[64] = _1059 + 128
        mem[_1059 + 96] = arg3
        if uint8(stor5.length):
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        _1401 = mem[_1059]
        idx = 0
        while idx < _1401:
            if idx >= mem[_1059]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _1059 + 32]
            mem[32] = 6
            _1408 = sha3(mem[0], 6)
            if idx >= mem[_1059 + 64]:
                revert with 0, 50
            _1410 = mem[(32 * idx) + _1059 + 96]
            if mem[(32 * idx) + _1059 + 96] and stor6[mem[0]].field_1024 > -1 / mem[(32 * idx) + _1059 + 96]:
                revert with 0, 17
            if mem[(32 * idx) + _1059 + 96] and stor6[mem[0]].field_1280 > -1 / mem[(32 * idx) + _1059 + 96]:
                revert with 0, 17
            if mem[(32 * idx) + _1059 + 96] * stor6[mem[0]].field_1024 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if mem[(32 * idx) + _1059 + 96] * stor6[mem[0]].field_1280 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            _1449 = mem[64]
            mem[mem[64] + 32] = -1 * mem[(32 * idx) + _1059 + 96] * stor6[mem[0]].field_1024
            mem[mem[64] + 64] = -1 * _1410 * uint256(stor5[_1408])
            _1450 = mem[64]
            mem[mem[64] + 128] = _1410 * stor4[_1408].field_0
            mem[mem[64] + 160] = _1410 * uint256(stor5[_1408])
            mem[mem[64] + 96] = 64
            mem[64] = mem[64] + 192
            if not uint256(stor3[_1408]):
                mem[_1449 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                mem[_1449 + 196] = 0
                mem[_1449 + 228] = 64
                _1461 = mem[_1450]
                mem[_1449 + 260] = mem[_1450]
                s = 0
                while s < _1461:
                    mem[s + _1449 + 292] = mem[s + _1450 + 32]
                    _1401 = mem[_1059]
                    s = s + 32
                    continue 
                if ceil32(_1461) > _1461:
                    mem[_1461 + _1449 + 292] = 0
                require ext_code.size(stor8)
                call stor8.0x3c12014 with:
                     gas gas_remaining wei
                    args 0, 64, mem[_1449 + 260 len ceil32(_1461) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1449 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                mem[_1449 + 196] = arg1
                mem[_1449 + 228] = 64
                mem[_1449 + 260] = mem[_1449 + 96]
                s = 0
                while s < mem[_1449 + 96]:
                    mem[s + _1449 + 292] = mem[s + _1449 + 128]
                    _1401 = mem[_1059]
                    s = s + 32
                    continue 
                if ceil32(mem[_1449 + 96]) > mem[_1449 + 96]:
                    mem[mem[_1449 + 96] + _1449 + 292] = 0
                require ext_code.size(stor8)
                call stor8.0x3c12014 with:
                     gas gas_remaining wei
                    args address(arg1), Array(len=mem[_1449 + 96], data=mem[_1449 + 292 len ceil32(mem[_1449 + 96])])
            else:
                mem[_1449 + 192] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                mem[_1449 + 196] = 0
                mem[_1449 + 228] = 96
                mem[_1449 + 292] = uint256(stor3[_1408])
                mem[0] = _1408 + 3
                s = 0
                t = _1449 + 324
                u = sha3(mem[0])
                while s < uint256(stor3[_1408]):
                    mem[t] = stor[u]
                    _1401 = mem[_1059]
                    s = s + 1
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1449 + 260] = (32 * uint256(stor3[_1408])) + 128
                _1744 = mem[_1450]
                mem[_1449 + (32 * uint256(stor3[_1408])) + 324] = mem[_1450]
                s = 0
                while s < _1744:
                    mem[s + _1449 + (32 * uint256(stor3[_1408])) + 356] = mem[s + _1450 + 32]
                    _1401 = mem[_1059]
                    s = s + 32
                    continue 
                if ceil32(_1744) <= _1744:
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1744) + _1449 + (32 * uint256(stor3[_1408])) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = uint256(stor3[_1408])
                    mem[0] = _1408 + 3
                    s = 0
                    t = mem[64] + 132
                    u = sha3(_1408 + 3)
                    while s < uint256(stor3[_1408]):
                        mem[t] = stor[u]
                        _1401 = mem[_1059]
                        s = s + 1
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[mem[64] + 68] = (32 * uint256(stor3[_1408])) + 128
                    _2595 = mem[_1449 + 96]
                    mem[mem[64] + (32 * uint256(stor3[_1408])) + 132] = mem[_1449 + 96]
                    s = 0
                    while s < _2595:
                        mem[s + mem[64] + (32 * uint256(stor3[_1408])) + 164] = mem[s + _1449 + 128]
                        _1401 = mem[_1059]
                        s = s + 32
                        continue 
                    if ceil32(_2595) > _2595:
                        mem[_2595 + mem[64] + (32 * uint256(stor3[_1408])) + 164] = 0
                    require ext_code.size(stor8)
                    call stor8.0xc10545ad with:
                         gas gas_remaining wei
                        args address(arg1), Array(len=uint256(stor3[_1408]), data=mem[mem[64] + 132 len ceil32(_2595) + (32 * uint256(stor3[_1408])) + 32]), (32 * uint256(stor3[_1408])) + 128
                else:
                    mem[_1744 + _1449 + (32 * uint256(stor3[_1408])) + 356] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_1744) + _1449 + (32 * uint256(stor3[_1408])) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = uint256(stor3[_1408])
                    mem[0] = _1408 + 3
                    s = 0
                    t = mem[64] + 132
                    u = sha3(_1408 + 3)
                    while s < uint256(stor3[_1408]):
                        mem[t] = stor[u]
                        _1401 = mem[_1059]
                        s = s + 1
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[mem[64] + 68] = (32 * uint256(stor3[_1408])) + 128
                    _2596 = mem[_1449 + 96]
                    mem[mem[64] + (32 * uint256(stor3[_1408])) + 132] = mem[_1449 + 96]
                    s = 0
                    while s < _2596:
                        mem[s + mem[64] + (32 * uint256(stor3[_1408])) + 164] = mem[s + _1449 + 128]
                        _1401 = mem[_1059]
                        s = s + 32
                        continue 
                    if ceil32(_2596) > _2596:
                        mem[_2596 + mem[64] + (32 * uint256(stor3[_1408])) + 164] = 0
                    require ext_code.size(stor8)
                    call stor8.0xc10545ad with:
                         gas gas_remaining wei
                        args address(arg1), Array(len=uint256(stor3[_1408]), data=mem[mem[64] + 132 len ceil32(_2596) + (32 * uint256(stor3[_1408])) + 32]), (32 * uint256(stor3[_1408])) + 128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[_1059]:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            _1401 = mem[_1059]
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = sha3(arg2, 2)
        if balanceOf[arg2][address(arg1)] > !arg3:
            revert with 0, 17
        balanceOf[arg2][address(arg1)] += arg3
        emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
        if ext_code.size(arg1):
            mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                require ext_code.size(arg1)
                call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, mem[96], mem[mem[64] + 196 len ceil32(mem[96])]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _1768 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1768] == Mask(32, 224, mem[_1768])
                if Mask(32, 224, mem[_1768]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[mem[96] + mem[64] + 196] = 0
                require ext_code.size(arg1)
                call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _1769 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1769] == Mask(32, 224, mem[_1769])
                if Mask(32, 224, mem[_1769]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        mem[0] = arg2
        mem[32] = 7
        if stor7[arg2].field_0 < 1:
            revert with 0, 17
        if stor6[arg2].field_2816 > !arg3:
            revert with 0, 17
        if var60002 >= stor6[arg2].field_2816 + arg3:
            if var64001 < arg3:
                revert with 0, 17
            idx = var66002 - arg3
            s = var66006
            while idx < stor7[arg2].field_0:
                if s >= stor7[arg2].field_0:
                    revert with 0, 50
                mem[0] = sha3(arg2, 7)
                address(stor7[arg2][s].field_0) = address(stor7[arg2][idx].field_0)
                stor7[arg2][s].field_256 = stor7[arg2][idx].field_256
                stor7[arg2][s].field_512 = stor7[arg2][idx].field_512
                if not s:
                    revert with 0, 17
                if stor6[arg2].field_2816 > !arg3:
                    revert with 0, 17
                if s - 1 >= stor6[arg2].field_2816 + arg3:
                    if s - 1 < arg3:
                        revert with 0, 17
                    idx = s + -arg3 - 1
                    s = s - 1
                    continue 
                idx = 0
                while idx < arg3:
                    _3454 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3454] = arg1
                    mem[_3454 + 32] = block.timestamp
                    mem[_3454 + 64] = arg4
                    if idx > !stor6[arg2].field_2816:
                        revert with 0, 17
                    if idx + stor6[arg2].field_2816 >= stor7[arg2].field_0:
                        revert with 0, 50
                    mem[0] = sha3(arg2, 7)
                    address(stor[(3 * idx) + (3 * stor6[arg2].field_2816) + ('map', ('param', 'arg2'), ('name', 'stor7', 7))].field_0) = arg1
                    stor[(3 * idx) + (3 * stor6[arg2].field_2816) + ('map', ('param', 'arg2'), ('name', 'stor7', 7))].field_256 = block.timestamp
                    stor[(3 * idx) + (3 * stor6[arg2].field_2816) + ('map', ('param', 'arg2'), ('name', 'stor7', 7))].field_512 = arg4
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if stor6[arg2].field_2816 > !arg3:
                    revert with 0, 17
                if not stor7[arg2].field_0:
                    revert with 0, 18
                stor6[arg2].field_2816 = stor6[arg2].field_2816 + arg3 % stor7[arg2].field_0
                mem[0] = arg2
                mem[32] = 6
                if stor6[arg2].field_512 > !arg3:
                    revert with 0, 17
                stor6[arg2].field_512 += arg3
                if not arg1:
                    revert with 0, 'ERC1155: mint to the zero address'
                _3478 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_3478]:
                    revert with 0, 50
                mem[_3478 + 32] = arg2
                mem[_3478 + 64] = 1
                mem[64] = _3478 + 128
                mem[_3478 + 96] = arg3
                if uint8(stor5.length):
                    revert with 0, 'ERC1155Pausable: token transfer while paused'
                _3633 = mem[_3478]
                idx = 0
                while idx < _3633:
                    if idx >= mem[_3478]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + _3478 + 32]
                    mem[32] = 6
                    _3640 = sha3(mem[0], 6)
                    if idx >= mem[_3478 + 64]:
                        revert with 0, 50
                    _3642 = mem[(32 * idx) + _3478 + 96]
                    if mem[(32 * idx) + _3478 + 96] and stor6[mem[0]].field_1024 > -1 / mem[(32 * idx) + _3478 + 96]:
                        revert with 0, 17
                    if mem[(32 * idx) + _3478 + 96] and stor6[mem[0]].field_1280 > -1 / mem[(32 * idx) + _3478 + 96]:
                        revert with 0, 17
                    if mem[(32 * idx) + _3478 + 96] * stor6[mem[0]].field_1024 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if mem[(32 * idx) + _3478 + 96] * stor6[mem[0]].field_1280 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    _3663 = mem[64]
                    mem[mem[64] + 32] = -1 * mem[(32 * idx) + _3478 + 96] * stor6[mem[0]].field_1024
                    mem[mem[64] + 64] = -1 * _3642 * uint256(stor5[_3640])
                    _3664 = mem[64]
                    mem[mem[64] + 128] = _3642 * stor4[_3640].field_0
                    mem[mem[64] + 160] = _3642 * uint256(stor5[_3640])
                    mem[mem[64] + 96] = 64
                    mem[64] = mem[64] + 192
                    if not uint256(stor3[_3640]):
                        mem[_3663 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                        mem[_3663 + 196] = 0
                        mem[_3663 + 228] = 64
                        _3675 = mem[_3664]
                        mem[_3663 + 260] = mem[_3664]
                        s = 0
                        while s < _3675:
                            mem[s + _3663 + 292] = mem[s + _3664 + 32]
                            _3633 = mem[_3478]
                            s = s + 32
                            continue 
                        if ceil32(_3675) > _3675:
                            mem[_3675 + _3663 + 292] = 0
                        require ext_code.size(stor8)
                        call stor8.0x3c12014 with:
                             gas gas_remaining wei
                            args 0, 64, mem[_3663 + 260 len ceil32(_3675) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3663 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                        mem[_3663 + 196] = arg1
                        mem[_3663 + 228] = 64
                        mem[_3663 + 260] = mem[_3663 + 96]
                        s = 0
                        while s < mem[_3663 + 96]:
                            mem[s + _3663 + 292] = mem[s + _3663 + 128]
                            _3633 = mem[_3478]
                            s = s + 32
                            continue 
                        if ceil32(mem[_3663 + 96]) > mem[_3663 + 96]:
                            mem[mem[_3663 + 96] + _3663 + 292] = 0
                        require ext_code.size(stor8)
                        call stor8.0x3c12014 with:
                             gas gas_remaining wei
                            args address(arg1), Array(len=mem[_3663 + 96], data=mem[_3663 + 292 len ceil32(mem[_3663 + 96])])
                    else:
                        mem[_3663 + 192] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                        mem[_3663 + 196] = 0
                        mem[_3663 + 228] = 96
                        mem[_3663 + 292] = uint256(stor3[_3640])
                        mem[0] = _3640 + 3
                        s = 0
                        t = _3663 + 324
                        u = sha3(mem[0])
                        while s < uint256(stor3[_3640]):
                            mem[t] = stor[u]
                            _3633 = mem[_3478]
                            s = s + 1
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_3663 + 260] = (32 * uint256(stor3[_3640])) + 128
                        _3798 = mem[_3664]
                        mem[_3663 + (32 * uint256(stor3[_3640])) + 324] = mem[_3664]
                        s = 0
                        while s < _3798:
                            mem[s + _3663 + (32 * uint256(stor3[_3640])) + 356] = mem[s + _3664 + 32]
                            _3633 = mem[_3478]
                            s = s + 32
                            continue 
                        if ceil32(_3798) <= _3798:
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3798) + _3663 + (32 * uint256(stor3[_3640])) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3951 = mem[64]
                            mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = uint256(stor3[_3640])
                            mem[0] = _3640 + 3
                            s = 0
                            t = mem[64] + 132
                            u = sha3(_3640 + 3)
                            while s < uint256(stor3[_3640]):
                                mem[t] = stor[u]
                                _3633 = mem[_3478]
                                s = s + 1
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[mem[64] + 68] = (32 * uint256(stor3[_3640])) + 128
                            _3979 = mem[_3663 + 96]
                            mem[mem[64] + (32 * uint256(stor3[_3640])) + 132] = mem[_3663 + 96]
                            s = 0
                            while s < _3979:
                                mem[s + mem[64] + (32 * uint256(stor3[_3640])) + 164] = mem[s + _3663 + 128]
                                _3633 = mem[_3478]
                                s = s + 32
                                continue 
                            if ceil32(_3979) > _3979:
                                mem[_3979 + _3951 + (32 * uint256(stor3[_3640])) + 164] = 0
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3979) + _3951 + (32 * uint256(stor3[_3640])) + -mem[64] + 160]
                        else:
                            mem[_3798 + _3663 + (32 * uint256(stor3[_3640])) + 356] = 0
                            require ext_code.size(stor8)
                            call stor8.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3798) + _3663 + (32 * uint256(stor3[_3640])) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = uint256(stor3[_3640])
                            mem[0] = _3640 + 3
                            s = 0
                            t = mem[64] + 132
                            u = sha3(_3640 + 3)
                            while s < uint256(stor3[_3640]):
                                mem[t] = stor[u]
                                _3633 = mem[_3478]
                                s = s + 1
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[mem[64] + 68] = (32 * uint256(stor3[_3640])) + 128
                            _3980 = mem[_3663 + 96]
                            mem[mem[64] + (32 * uint256(stor3[_3640])) + 132] = mem[_3663 + 96]
                            s = 0
                            while s < _3980:
                                mem[s + mem[64] + (32 * uint256(stor3[_3640])) + 164] = mem[s + _3663 + 128]
                                _3633 = mem[_3478]
                                s = s + 32
                                continue 
                            if ceil32(_3980) > _3980:
                                mem[_3980 + mem[64] + (32 * uint256(stor3[_3640])) + 164] = 0
                            require ext_code.size(stor8)
                            call stor8.0xc10545ad with:
                                 gas gas_remaining wei
                                args address(arg1), Array(len=uint256(stor3[_3640]), data=mem[mem[64] + 132 len ceil32(_3980) + (32 * uint256(stor3[_3640])) + 32]), (32 * uint256(stor3[_3640])) + 128
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_3478]:
                        revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    _3633 = mem[_3478]
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = sha3(arg2, 2)
                if balanceOf[arg2][address(arg1)] > !arg3:
                    revert with 0, 17
                balanceOf[arg2][address(arg1)] += arg3
                emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
                if not ext_code.size(arg1):
                    _3658 = mem[64]
                    mem[mem[64]] = 0x731133e900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[96]
                    idx = 0
                    while idx < mem[96]:
                        mem[idx + mem[64] + 164] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[96]) > mem[96]:
                        mem[mem[96] + _3658 + 164] = 0
                    require ext_code.size(stor9)
                    call stor9.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[96]) + _3658 + -mem[64] + 160]
                else:
                    _3649 = mem[64]
                    mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = arg2
                    mem[mem[64] + 100] = arg3
                    mem[mem[64] + 132] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    while idx < mem[96]:
                        mem[idx + mem[64] + 196] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[96]) <= mem[96]:
                        require ext_code.size(arg1)
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[96]) + _3649 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _3810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3810] == Mask(32, 224, mem[_3810])
                        if Mask(32, 224, mem[_3810]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        _3851 = mem[64]
                        mem[mem[64]] = 0x731133e900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[idx + mem[64] + 164] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + _3851 + 164] = 0
                        require ext_code.size(stor9)
                        call stor9.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[96]) + _3851 + -mem[64] + 160]
                    else:
                        mem[mem[96] + _3649 + 196] = 0
                        require ext_code.size(arg1)
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[96]) + _3649 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        _3811 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3811] == Mask(32, 224, mem[_3811])
                        if Mask(32, 224, mem[_3811]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                        _3854 = mem[64]
                        mem[mem[64]] = 0x731133e900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[idx + mem[64] + 164] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[96]) > mem[96]:
                            mem[mem[96] + _3854 + 164] = 0
                        require ext_code.size(stor9)
                        call stor9.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[96]) + _3854 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb1a02882: arg3, arg4, arg1, arg2
            revert with 0, 50
        idx = 0
        while idx < arg3:
            _2214 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2214] = arg1
            mem[_2214 + 32] = block.timestamp
            mem[_2214 + 64] = arg4
            if idx > !stor6[arg2].field_2816:
                revert with 0, 17
            if idx + stor6[arg2].field_2816 >= stor7[arg2].field_0:
                revert with 0, 50
            mem[0] = sha3(arg2, 7)
            address(stor[(3 * idx) + (3 * stor6[arg2].field_2816) + ('map', ('param', 'arg2'), ('name', 'stor7', 7))].field_0) = arg1
            stor[(3 * idx) + (3 * stor6[arg2].field_2816) + ('map', ('param', 'arg2'), ('name', 'stor7', 7))].field_256 = block.timestamp
            stor[(3 * idx) + (3 * stor6[arg2].field_2816) + ('map', ('param', 'arg2'), ('name', 'stor7', 7))].field_512 = arg4
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor6[arg2].field_2816 > !arg3:
            revert with 0, 17
        if not stor7[arg2].field_0:
            revert with 0, 18
        stor6[arg2].field_2816 = stor6[arg2].field_2816 + arg3 % stor7[arg2].field_0
        mem[0] = arg2
        mem[32] = 6
        if stor6[arg2].field_512 > !arg3:
            revert with 0, 17
        stor6[arg2].field_512 += arg3
        if not arg1:
            revert with 0, 'ERC1155: mint to the zero address'
        _2264 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_2264]:
            revert with 0, 50
        mem[_2264 + 32] = arg2
        mem[_2264 + 64] = 1
        mem[64] = _2264 + 128
        mem[_2264 + 96] = arg3
        if uint8(stor5.length):
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        _2593 = mem[_2264]
        idx = 0
        while idx < _2593:
            if idx >= mem[_2264]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + _2264 + 32]
            mem[32] = 6
            _2600 = sha3(mem[0], 6)
            if idx >= mem[_2264 + 64]:
                revert with 0, 50
            _2602 = mem[(32 * idx) + _2264 + 96]
            if mem[(32 * idx) + _2264 + 96] and stor6[mem[0]].field_1024 > -1 / mem[(32 * idx) + _2264 + 96]:
                revert with 0, 17
            if mem[(32 * idx) + _2264 + 96] and stor6[mem[0]].field_1280 > -1 / mem[(32 * idx) + _2264 + 96]:
                revert with 0, 17
            if mem[(32 * idx) + _2264 + 96] * stor6[mem[0]].field_1024 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if mem[(32 * idx) + _2264 + 96] * stor6[mem[0]].field_1280 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            _2629 = mem[64]
            mem[mem[64] + 32] = -1 * mem[(32 * idx) + _2264 + 96] * stor6[mem[0]].field_1024
            mem[mem[64] + 64] = -1 * _2602 * uint256(stor5[_2600])
            _2630 = mem[64]
            mem[mem[64] + 128] = _2602 * stor4[_2600].field_0
            mem[mem[64] + 160] = _2602 * uint256(stor5[_2600])
            mem[mem[64] + 96] = 64
            mem[64] = mem[64] + 192
            if not uint256(stor3[_2600]):
                mem[_2629 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                mem[_2629 + 196] = 0
                mem[_2629 + 228] = 64
                _2641 = mem[_2630]
                mem[_2629 + 260] = mem[_2630]
                s = 0
                while s < _2641:
                    mem[s + _2629 + 292] = mem[s + _2630 + 32]
                    _2593 = mem[_2264]
                    s = s + 32
                    continue 
                if ceil32(_2641) > _2641:
                    mem[_2641 + _2629 + 292] = 0
                require ext_code.size(stor8)
                call stor8.0x3c12014 with:
                     gas gas_remaining wei
                    args 0, 64, mem[_2629 + 260 len ceil32(_2641) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2629 + 192] = 0x3c1201400000000000000000000000000000000000000000000000000000000
                mem[_2629 + 196] = arg1
                mem[_2629 + 228] = 64
                mem[_2629 + 260] = mem[_2629 + 96]
                s = 0
                while s < mem[_2629 + 96]:
                    mem[s + _2629 + 292] = mem[s + _2629 + 128]
                    _2593 = mem[_2264]
                    s = s + 32
                    continue 
                if ceil32(mem[_2629 + 96]) > mem[_2629 + 96]:
                    mem[mem[_2629 + 96] + _2629 + 292] = 0
                require ext_code.size(stor8)
                call stor8.0x3c12014 with:
                     gas gas_remaining wei
                    args address(arg1), Array(len=mem[_2629 + 96], data=mem[_2629 + 292 len ceil32(mem[_2629 + 96])])
            else:
                mem[_2629 + 192] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                mem[_2629 + 196] = 0
                mem[_2629 + 228] = 96
                mem[_2629 + 292] = uint256(stor3[_2600])
                mem[0] = _2600 + 3
                s = 0
                t = _2629 + 324
                u = sha3(mem[0])
                while s < uint256(stor3[_2600]):
                    mem[t] = stor[u]
                    _2593 = mem[_2264]
                    s = s + 1
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_2629 + 260] = (32 * uint256(stor3[_2600])) + 128
                _2928 = mem[_2630]
                mem[_2629 + (32 * uint256(stor3[_2600])) + 324] = mem[_2630]
                s = 0
                while s < _2928:
                    mem[s + _2629 + (32 * uint256(stor3[_2600])) + 356] = mem[s + _2630 + 32]
                    _2593 = mem[_2264]
                    s = s + 32
                    continue 
                if ceil32(_2928) <= _2928:
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_2928) + _2629 + (32 * uint256(stor3[_2600])) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3261 = mem[64]
                    mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = uint256(stor3[_2600])
                    mem[0] = _2600 + 3
                    s = 0
                    t = mem[64] + 132
                    u = sha3(mem[0])
                    while s < uint256(stor3[_2600]):
                        mem[t] = stor[u]
                        _2593 = mem[_2264]
                        s = s + 1
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_3261 + 68] = (32 * uint256(stor3[_2600])) + 128
                    _3455 = mem[_2629 + 96]
                    mem[_3261 + (32 * uint256(stor3[_2600])) + 132] = mem[_2629 + 96]
                    s = 0
                    while s < _3455:
                        mem[s + _3261 + (32 * uint256(stor3[_2600])) + 164] = mem[s + _2629 + 128]
                        _2593 = mem[_2264]
                        s = s + 32
                        continue 
                    if ceil32(_3455) > _3455:
                        mem[_3455 + _3261 + (32 * uint256(stor3[_2600])) + 164] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_3455) + _3261 + (32 * uint256(stor3[_2600])) + -mem[64] + 160]
                else:
                    mem[_2928 + _2629 + (32 * uint256(stor3[_2600])) + 356] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_2928) + _2629 + (32 * uint256(stor3[_2600])) + -mem[64] + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3262 = mem[64]
                    mem[mem[64]] = 0xc10545ad00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = uint256(stor3[_2600])
                    mem[0] = _2600 + 3
                    s = 0
                    t = mem[64] + 132
                    u = sha3(mem[0])
                    while s < uint256(stor3[_2600]):
                        mem[t] = stor[u]
                        _2593 = mem[_2264]
                        s = s + 1
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_3262 + 68] = (32 * uint256(stor3[_2600])) + 128
                    _3456 = mem[_2629 + 96]
                    mem[_3262 + (32 * uint256(stor3[_2600])) + 132] = mem[_2629 + 96]
                    s = 0
                    while s < _3456:
                        mem[s + _3262 + (32 * uint256(stor3[_2600])) + 164] = mem[s + _2629 + 128]
                        _2593 = mem[_2264]
                        s = s + 32
                        continue 
                    if ceil32(_3456) > _3456:
                        mem[_3456 + _3262 + (32 * uint256(stor3[_2600])) + 164] = 0
                    require ext_code.size(stor8)
                    call stor8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_3456) + _3262 + (32 * uint256(stor3[_2600])) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[_2264]:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            _2593 = mem[_2264]
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = sha3(arg2, 2)
        if balanceOf[arg2][address(arg1)] > !arg3:
            revert with 0, 17
        balanceOf[arg2][address(arg1)] += arg3
        emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
        if ext_code.size(arg1):
            mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                require ext_code.size(arg1)
                call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, mem[96], mem[mem[64] + 196 len ceil32(mem[96])]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _2946 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2946] == Mask(32, 224, mem[_2946])
                if Mask(32, 224, mem[_2946]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[mem[96] + mem[64] + 196] = 0
                require ext_code.size(arg1)
                call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg2, arg3, 160, mem[mem[64] + 164 len ceil32(mem[96]) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _2947 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2947] == Mask(32, 224, mem[_2947])
                if Mask(32, 224, mem[_2947]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    mem[mem[64]] = 0x731133e900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = arg2
    mem[mem[64] + 68] = arg3
    mem[mem[64] + 100] = 128
    mem[mem[64] + 132] = mem[96]
    mem[mem[64] + 164 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        require ext_code.size(stor9)
        call stor9.0x731133e9 with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])])
    else:
        mem[mem[96] + mem[64] + 164] = 0
        require ext_code.size(stor9)
        call stor9.0x731133e9 with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3, 128, mem[mem[64] + 132 len ceil32(mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb1a02882: arg3, arg4, arg1, arg2
}



}
