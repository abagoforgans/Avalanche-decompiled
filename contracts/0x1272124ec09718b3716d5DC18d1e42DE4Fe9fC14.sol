contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_2dc387b3(?) = 1

const sub_dbe4613d(?) = 0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec

const URI_SETTER_ROLE = 0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c

const REDEEMER_ROLE = 0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86


mapping of struct roleAdmin;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of struct stor3;
array of struct roleMember;
uint8 stor5;
address owner; offset 8
address sellerAddress;
array of struct stor7;
mapping of uint8 stor8;
mapping of uint256 sub_a6401250;
mapping of uint256 sub_9143abe0;
uint8 stor11;

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

function sellerAddress() payable {
    return sellerAddress
}

function sub_3f1773c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function paused() payable {
    return bool(stor5)
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function sub_9143abe0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9143abe0[arg1]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_a6401250(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a6401250[arg1]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_d1164826(?) payable {
    require calldata.size - 4 >= 32
    if sub_a6401250[msg.sender] > !arg1:
        revert with 0, 17
    sub_a6401250[msg.sender] += arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor2[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_ee88f123(?) payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[1][address(msg.sender)] <= sub_a6401250[msg.sender]:
        return 0
    if balanceOf[1][address(msg.sender)] < sub_a6401250[msg.sender]:
        revert with 0, 17
    return (balanceOf[1][address(msg.sender)] - sub_a6401250[msg.sender])
}

function sub_7a7ed451(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[arg1][address(arg3)] <= sub_a6401250[address(arg3)]:
        if 0 >= arg2:
            return 1
    else:
        if balanceOf[arg1][address(arg3)] < sub_a6401250[address(arg3)]:
            revert with 0, 17
        if balanceOf[arg1][address(arg3)] - sub_a6401250[address(arg3)] >= arg2:
            return 1
    return 0
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function pauseRedeemedKeyTrading() payable {
    if uint8(roleAdmin[0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        stor11 = 1
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
        s = 0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86
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

function unpauseRedeemedKeyTrading() payable {
    if uint8(roleAdmin[0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        stor11 = 0
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
        s = 0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86
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

function sub_fff44692(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint8(roleAdmin[address(msg.sender)].field_0):
        sub_a6401250[address(arg1)] = 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function pause() payable {
    if uint8(roleAdmin[0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        if stor5:
            revert with 0, 'Pausable: paused'
        stor5 = 1
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
        s = 0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86
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
    if uint8(roleAdmin[0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        if not stor5:
            revert with 0, 'Pausable: not paused'
        stor5 = 0
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
        s = 0xde65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86
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

function sub_4a731b40(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
        if sub_a6401250[address(arg1)] > !arg2:
            revert with 0, 17
        sub_a6401250[address(arg1)] += arg2
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
        s = 0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec
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

function sub_8513cbe3(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(1, 1)
        if balanceOf[1][address(mem[(32 * idx) + 128])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ('cd', 36).length == ('cd', 4).length:
        return 1
    return 0
}

function sub_e62de86c(?) payable {
    if not uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
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
            s = 0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577
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
    mem[64] = (32 * stor7.length) + 128
    mem[96] = stor7.length
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        idx = 0
        s = 128
        t = (32 * stor7.length) + 192
        while idx < stor7.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = address(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = address(stor7[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 128] = 32
    mem[(32 * stor7.length) + 160] = stor7.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor7.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor7.length) + -mem[64] + 192
}

function sub_44f9106d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if not address(cd[68]):
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = address(cd[68])
        mem[32] = 9
        if balanceOf[mem[(32 * idx) + 128]][address(cd[68])] <= sub_a6401250[address(cd[68])]:
            if 0 < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                return 0
        else:
            mem[0] = address(cd[68])
            mem[32] = 9
            if balanceOf[mem[(32 * idx) + 128]][address(cd[68])] < sub_a6401250[address(cd[68])]:
                revert with 0, 17
            if balanceOf[mem[(32 * idx) + 128]][address(cd[68])] - sub_a6401250[address(cd[68])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg1 != msg.sender:
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[128] = arg2
    mem[160] = 1
    mem[192] = arg3
    mem[224] = 0
    if stor5:
        revert with 0, 'Pausable: paused'
    if not uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if idx >= 1:
                    revert with 0, 50
                if not arg1:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg1
                mem[32] = 9
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] <= sub_a6401250[address(arg1)]:
                    if 0 < mem[(32 * idx) + 192]:
                        revert with 0, 'This token is not tradable'
                else:
                    mem[0] = arg1
                    mem[32] = 9
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < sub_a6401250[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] - sub_a6401250[address(arg1)] < mem[(32 * idx) + 192]:
                        revert with 0, 'This token is not tradable'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
        revert with 0, 50
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
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
    if not uint8(roleAdmin[0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c][address(msg.sender)].field_0):
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
            s = 0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c
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
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3.length = 0
            idx = 0
            while (uint255(stor3.length) * 0.5) + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3.length = 0
            idx = 0
            while stor3.length.field_1 % 128 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
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
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 1)
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

function setNewAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have admin role to set new admin'
    if 0 >= roleMember[0].field_0:
        revert with 0, 50
    if not uint8(roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0):
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
        s = uint256(roleAdmin.field_256)
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
        if uint256(roleAdmin.field_256) + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[address(stor4[0].field_0)].field_0):
        uint8(roleAdmin[address(stor4[0].field_0)].field_0) = 0
        emit RoleRevoked(0, address(roleMember[0].field_0), msg.sender);
    if roleMember[0][1][address(roleMember[0].field_0)].field_0:
        if roleMember[0][1][address(roleMember[0].field_0)].field_0 < 1:
            revert with 0, 17
        if roleMember[0].field_0 < 1:
            revert with 0, 17
        if roleMember[0].field_0 - 1 != roleMember[0][1][address(roleMember[0].field_0)].field_0 - 1:
            if roleMember[0].field_0 - 1 >= roleMember[0].field_0:
                revert with 0, 50
            if roleMember[0][1][address(roleMember[0].field_0)].field_0 - 1 >= roleMember[0].field_0:
                revert with 0, 50
            roleMember[0][roleMember[0][1][address(roleMember[0].field_0)].field_0].field_0 = roleMember[0][roleMember[0].field_0].field_0
            roleMember[0][1][roleMember[0][roleMember[0].field_0].field_0].field_0 = roleMember[0][1][address(roleMember[0].field_0)].field_0
        if not roleMember[0].field_0:
            revert with 0, 49
        roleMember[0][roleMember[0].field_0].field_0 = 0
        roleMember[0].field_0--
        roleMember[0][1][address(roleMember[0].field_0)].field_0 = 0
    if not uint8(roleAdmin[address(arg1)].field_0):
        uint8(roleAdmin[address(arg1)].field_0) = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not roleMember[0][1][address(arg1)].field_0:
        roleMember[0].field_0++
        address(roleMember[0][roleMember[0].field_0].field_0) = arg1
        Mask(96, 0, roleMember[0][roleMember[0].field_0].field_160) = 0
        roleMember[0][1][address(arg1)].field_0 = roleMember[0].field_0
}

function burnUnsoldKeys() payable {
    if not uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
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
            s = 0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec
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
    if not sellerAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if sellerAddress != msg.sender:
        if not stor2[stor6][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not sellerAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    mem[128] = 1
    mem[160] = 1
    mem[192] = balanceOf[1][stor6]
    mem[224] = 0
    if stor5:
        revert with 0, 'Pausable: paused'
    if not uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if idx >= 1:
                    revert with 0, 50
                if not sellerAddress:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = sellerAddress
                mem[32] = 9
                if balanceOf[mem[(32 * idx) + 128]][stor6] <= sub_a6401250[stor6]:
                    if 0 < mem[(32 * idx) + 192]:
                        revert with 0, 'This token is not tradable'
                else:
                    mem[0] = sellerAddress
                    mem[32] = 9
                    if balanceOf[mem[(32 * idx) + 128]][stor6] < sub_a6401250[stor6]:
                        revert with 0, 17
                    if balanceOf[mem[(32 * idx) + 128]][stor6] - sub_a6401250[stor6] < mem[(32 * idx) + 192]:
                        revert with 0, 'This token is not tradable'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
        revert with 0, 50
    if balanceOf[1][stor6] < balanceOf[1][stor6]:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[1][stor6] = 0
    emit TransferSingle(1, balanceOf[1][stor6], msg.sender, sellerAddress, 0);
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function getRedeemableKeyholders() payable {
    mem[0] = msg.sender
    mem[32] = sha3(0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577, 0)
    if not uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
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
            s = 0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577
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
    idx = 0
    s = 0
    while idx < stor7.length:
        if not address(stor7[idx].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        mem[0] = address(stor7[idx].field_0)
        mem[32] = sha3(1, 1)
        if balanceOf[1][address(stor7[idx].field_0)] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor7.length:
            revert with 0, 50
        mem[0] = address(stor7[idx].field_0)
        mem[32] = 9
        if sub_a6401250[address(stor7[idx].field_0)] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    if s > test266151307():
        revert with 0, 65
    mem[(32 * s) + 128] = s
    mem[64] = (64 * s) + 160
    if s:
        mem[(32 * s) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < stor7.length:
        if not address(stor7[idx].field_0):
            revert with 0, 'ERC1155: balance query for the zero address'
        if idx >= stor7.length:
            revert with 0, 50
        mem[0] = address(stor7[idx].field_0)
        mem[32] = 9
        if not balanceOf[1][address(stor7[idx].field_0)]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if sub_a6401250[address(stor7[idx].field_0)] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if idx >= stor7.length:
            revert with 0, 50
        mem[0] = 7
        if t >= s:
            revert with 0, 50
        mem[(32 * t) + 128] = address(stor7[idx].field_0)
        if t >= mem[(32 * s) + 128]:
            revert with 0, 50
        if sub_a6401250[address(stor7[idx].field_0)] > balanceOf[1][address(stor7[idx].field_0)]:
            mem[(32 * t) + (32 * s) + 160] = balanceOf[1][address(stor7[idx].field_0)]
        else:
            mem[(32 * t) + (32 * s) + 160] = sub_a6401250[address(stor7[idx].field_0)]
        if t == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + 1
        continue 
    mem[(64 * s) + 160] = 64
    mem[(64 * s) + 224] = s
    t = 0
    u = 128
    v = mem[64] + 96
    while t < s:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    mem[(64 * s) + 192] = (32 * s) + 96
    mem[(98 * s) + 256] = mem[(32 * s) + 128]
    mem[(98 * s) + 288 len 32 * mem[(32 * s) + 128]] = mem[(32 * s) + 160 len 32 * mem[(32 * s) + 128]]
    return memory
      from mem[64]
       len (98 * s) + (32 * mem[(32 * s) + 128]) + -mem[64] + 288
}

function mintKeys(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
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
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
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
    mem[96] = 0
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[128] = 1
    mem[160] = 1
    mem[192] = 1
    mem[64] = 256
    mem[224] = arg2
    if stor5:
        revert with 0, 'Pausable: paused'
    if not uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
            revert with 0, 'ERC1155: balance query for the zero address'
    mem[32] = 4
    if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
        revert with 0, 50
    mem[0] = sha3(0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec, 4)
    if arg1 != address(roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0):
        if arg1:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if mem[(32 * idx) + 160] != 1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 8
                if stor8[address(arg1)]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor7.length++
                address(stor7[stor7.length].field_0) = arg1
                stor8[address(arg1)] = 1
                if balanceOf[1][address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[1][address(arg1)] += arg2
                emit TransferSingle(1, arg2, msg.sender, 0, arg1);
                if ext_code.size(arg1):
                    idx = 0
                    while idx < 0:
                        mem[idx + 452] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, 1, arg2, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if balanceOf[1][address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[1][address(arg1)] += arg2
    emit TransferSingle(1, arg2, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 1, arg2, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
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
    if arg1 != msg.sender:
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg5.length)) + 97] = 1
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[64] = ceil32(ceil32(arg5.length)) + 225
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    if stor5:
        revert with 0, 'Pausable: paused'
    if not uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if idx >= 1:
                    revert with 0, 50
                if not arg1:
                    revert with 0, 'ERC1155: balance query for the zero address'
                mem[0] = arg1
                mem[32] = 9
                if balanceOf[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)] <= sub_a6401250[address(arg1)]:
                    if 0 < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 'This token is not tradable'
                else:
                    mem[0] = arg1
                    mem[32] = 9
                    if balanceOf[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)] < sub_a6401250[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]][address(arg1)] - sub_a6401250[address(arg1)] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                        revert with 0, 'This token is not tradable'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    mem[32] = 4
    if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
        revert with 0, 50
    mem[0] = sha3(0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec, 4)
    if arg2 != address(roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0):
        if arg2:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129] != 1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = arg2
                mem[32] = 8
                if stor8[address(arg2)]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor7.length++
                address(stor7[stor7.length].field_0) = arg2
                stor8[address(arg2)] = 1
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][arg2] > !arg4:
                    revert with 0, 17
                balanceOf[arg3][arg2] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2):
                    idx = 0
                    while idx < arg5.length:
                        mem[idx + ceil32(ceil32(arg5.length)) + 421] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(arg5.length) > arg5.length:
                        mem[arg5.length + ceil32(ceil32(arg5.length)) + 421] = 0
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function sub_b2d551f2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
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
    mem[0] = msg.sender
    mem[32] = sha3(0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577, 0)
    if uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(1, 1)
            if balanceOf[1][address(mem[(32 * idx) + 128])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 'array length or balance mismatch'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'array length or balance mismatch'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1031 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _1035 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'ERC1155: burn from the zero address'
            _1040 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_1040]:
                revert with 0, 50
            mem[_1040 + 32] = 1
            mem[_1040 + 64] = 1
            mem[_1040 + 96] = _1035
            mem[64] = _1040 + 160
            mem[_1040 + 128] = 0
            if stor5:
                revert with 0, 'Pausable: paused'
            if not uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
                mem[0] = msg.sender
                mem[32] = sha3(0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577, 0)
                if not uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
                    _1282 = mem[_1040]
                    s = 0
                    while s < _1282:
                        if s >= mem[_1040]:
                            revert with 0, 50
                        if s >= 1:
                            revert with 0, 50
                        if not address(_1031):
                            revert with 0, 'ERC1155: balance query for the zero address'
                        _1294 = sha3(address(_1031), sha3(mem[(32 * s) + _1040 + 32], 1))
                        mem[0] = address(_1031)
                        mem[32] = 9
                        if stor[_1294] <= sub_a6401250[address(_1031)]:
                            if 0 < mem[(32 * s) + _1040 + 96]:
                                revert with 0, 'This token is not tradable'
                        else:
                            mem[0] = address(_1031)
                            mem[32] = 9
                            if stor[_1294] < sub_a6401250[address(_1031)]:
                                revert with 0, 17
                            if stor[_1294] - sub_a6401250[address(_1031)] < mem[(32 * s) + _1040 + 96]:
                                revert with 0, 'This token is not tradable'
                        if s == -1:
                            revert with 0, 17
                        _1282 = mem[_1040]
                        s = s + 1
                        continue 
            if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
                revert with 0, 50
            if balanceOf[1][address(_1031)] < _1035:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[1][address(_1031)] -= _1035
            mem[_1040 + 160] = 1
            mem[_1040 + 192] = _1035
            emit TransferSingle(1, _1035, msg.sender, address(_1031), 0);
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if sub_9143abe0[mem[(32 * idx) + 140 len 20]] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 17
            sub_9143abe0[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if sub_a6401250[mem[(32 * idx) + 140 len 20]] <= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 9
                sub_a6401250[mem[(32 * idx) + 140 len 20]] = 0
            else:
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                if sub_a6401250[mem[(32 * idx) + 140 len 20]] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 9
                sub_a6401250[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = ceil32(32 * arg2.length) + 129
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
        if stor5:
            revert with 0, 'Pausable: paused'
        if uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
            if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
                revert with 0, 50
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if 0 == address(roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0):
                var70001 = arg3.length
            else:
                var66001 = arg2.length
                var71001 = arg3.length
        else:
            if uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
                if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
                    revert with 0, 50
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if 0 == address(roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0):
                    var68001 = arg2.length
                else:
                    var69001 = arg2.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = 9
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] <= sub_a6401250[address(arg1)]:
                        if 0 < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'This token is not tradable'
                    else:
                        mem[0] = arg1
                        mem[32] = 9
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < sub_a6401250[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] - sub_a6401250[address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'This token is not tradable'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
                    revert with 0, 50
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if 0 == address(roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0):
                else:
                    var75001 = arg2.length
    else:
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
        if stor5:
            revert with 0, 'Pausable: paused'
        if uint8(roleAdmin[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec][address(msg.sender)].field_0):
            if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
                revert with 0, 50
            idx = 0
            while idx < arg2.length:
                if idx >= arg2.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 1)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if address(roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0) != 0:
                var68001 = arg2.length
            else:
                var67001 = arg2.length
                var72001 = arg3.length
        else:
            if uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
                if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
                    revert with 0, 50
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if 0 == address(roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0):
                    var70001 = arg2.length
                    var75001 = arg3.length
                else:
                    var71001 = arg2.length
                    var76001 = arg3.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if not arg1:
                        revert with 0, 'ERC1155: balance query for the zero address'
                    mem[0] = arg1
                    mem[32] = 9
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] <= sub_a6401250[address(arg1)]:
                        if 0 < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'This token is not tradable'
                    else:
                        mem[0] = arg1
                        mem[32] = 9
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < sub_a6401250[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] - sub_a6401250[address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'This token is not tradable'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if 0 >= roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0:
                    revert with 0, 50
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 1)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if 0 == address(roleMember[0xfe43f25613eb2f15fb17222a5d424ca2655743e71265d98e4b93c05e5fb589ec].field_0):
                    var76001 = arg2.length
                else:
                    var77001 = arg2.length
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function sub_9221357e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577, 0)
    if not uint8(roleAdmin[0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577][address(msg.sender)].field_0):
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x2a44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'array length mismatch'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] <= sub_9143abe0[mem[(32 * idx) + 140 len 20]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(1, 1)
        if balanceOf[1][address(mem[(32 * idx) + 128])] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = s
    if not s:
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130] = s
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * s) + 162
        if not s:
            idx = 0
            t = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'ERC1155: balance query for the zero address'
                _315 = sha3(address(mem[(32 * idx) + 128]), sha3(1, 1))
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 10
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] <= sub_9143abe0[mem[(32 * idx) + 140 len 20]]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if balanceOf[1][address(mem[(32 * idx) + 128])] <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if t >= s:
                    revert with 0, 50
                mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[(32 * idx) + 140 len 20]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if stor[_315] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]:
                        revert with 0, 50
                    mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162] = stor[_315]
                else:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]:
                        revert with 0, 50
                    mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                if t == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + 1
                continue 
        else:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = 0
            t = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'ERC1155: balance query for the zero address'
                _319 = sha3(address(mem[(32 * idx) + 128]), sha3(1, 1))
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 10
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] <= sub_9143abe0[mem[(32 * idx) + 140 len 20]]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if balanceOf[1][address(mem[(32 * idx) + 128])] <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if t >= s:
                    revert with 0, 50
                mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[(32 * idx) + 140 len 20]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if stor[_319] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]:
                        revert with 0, 50
                    mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162] = stor[_319]
                else:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]:
                        revert with 0, 50
                    mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                if t == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + 1
                continue 
    else:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 32 * s] = call.data[calldata.size len 32 * s]
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130] = s
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * s) + 162
        if not s:
            idx = 0
            t = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'ERC1155: balance query for the zero address'
                _323 = sha3(address(mem[(32 * idx) + 128]), sha3(1, 1))
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 10
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] <= sub_9143abe0[mem[(32 * idx) + 140 len 20]]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if balanceOf[1][address(mem[(32 * idx) + 128])] <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if t >= s:
                    revert with 0, 50
                mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[(32 * idx) + 140 len 20]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if stor[_323] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]:
                        revert with 0, 50
                    mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162] = stor[_323]
                else:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]:
                        revert with 0, 50
                    mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                if t == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + 1
                continue 
        else:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = 0
            t = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'ERC1155: balance query for the zero address'
                _327 = sha3(address(mem[(32 * idx) + 128]), sha3(1, 1))
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 10
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] <= sub_9143abe0[mem[(32 * idx) + 140 len 20]]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if balanceOf[1][address(mem[(32 * idx) + 128])] <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if t >= s:
                    revert with 0, 50
                mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[(32 * idx) + 140 len 20]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if stor[_327] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]:
                        revert with 0, 50
                    mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162] = stor[_327]
                else:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if t >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]:
                        revert with 0, 50
                    mem[(32 * t) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                if t == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + 1
                continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * s) + 162] = 64
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * s) + 226] = s
    t = 0
    u = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    v = mem[64] + 96
    while t < s:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (64 * s) + 194] = (32 * s) + 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (98 * s) + 258] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (98 * s) + 290 len 32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 162 len 32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]]
    return memory
      from mem[64]
       len ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (98 * s) + (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * s) + 130]) + -mem[64] + 290
}



}
