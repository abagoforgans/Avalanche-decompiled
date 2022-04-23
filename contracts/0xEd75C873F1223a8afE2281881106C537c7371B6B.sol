contract main {




// =====================  Runtime code  =====================


#
#  - castVote(uint256 arg1, uint256 arg2)
#  - grantRole(bytes32 arg1, address arg2)
#
const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


address owner;
array of struct roleAdmin;
uint256 sub_0c1bc91c;
array of address stor3;
mapping of struct stor5;
mapping of uint256 stor6;

function sub_0c1bc91c(?) payable {
    return sub_0c1bc91c
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_d37b42d6(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if arg1 > sub_0c1bc91c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    return bool(stor5[arg1][address(arg2)].field_0)
}

function checkOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_fbc759a1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if arg1 > sub_0c1bc91c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if not uint8(stor4[arg1].field_1536):
        if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'MultipleVoting#getVoterInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
    return stor5[arg1][address(arg2)].field_0, stor5[arg1][address(arg2)].field_256
}

function sub_e59544ef(?) payable {
    if stor3.length > test266151307():
        revert with 0, 65
    mem[96] = stor3.length
    mem[64] = (32 * stor3.length) + 128
    if stor3.length:
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if idx >= stor3.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor3[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3.length) + -mem[64] + 192
}

function sub_0f772a1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MultipleVoting#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MultipleVoting#addStakePool: STAKE_POOL_ADDRESS_INVALID'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] == address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'MultipleVoting#addStakePool: STAKE_POOL_ADDRESS_ALREADY_FOUND'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor3.length++
    stor3[stor3.length] = address(arg1)
}

function sub_2f1c3c2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MultipleVoting#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MultipleVoting#removeStakePool: STAKE_POOL_ADDRESS_INVALID'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor3.length < 1:
            revert with 0, 17
        if idx != stor3.length - 1:
            if stor3.length < 1:
                revert with 0, 17
            if stor3.length - 1 >= stor3.length:
                revert with 0, 50
            if idx >= stor3.length:
                revert with 0, 50
            stor3[idx] = stor3[stor3.length]
        if not stor3.length:
            revert with 0, 49
        stor3[stor3.length] = 0
        stor3.length--
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'MultipleVoting#removeStakePool: STAKE_POOL_ADDRESS_NOT_FOUND'
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
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
}

function sub_f43b8778(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MultipleVoting#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if arg1 > sub_0c1bc91c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if block.timestamp < stor4[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#endPoll: VOTING_PERIOD_NOT_EXPIRED'
    if uint8(stor4[arg1].field_1536):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#endPoll: POLL_ALREADY_ENDED'
    uint8(stor4[arg1].field_1536) = 1
    idx = 1
    s = 0
    t = 0
    while idx < stor4[arg1].field_1280:
        mem[0] = idx
        mem[32] = sha3(arg1, 6)
        if s >= stor6[arg1][idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[0] = idx
        mem[32] = sha3(arg1, 6)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = stor6[arg1][idx]
        t = idx
        continue 
    stor4[arg1].field_768 = t
    emit 0x3ca759e1: arg1, t
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#addOperator: ALREADY_OERATOR_ROLE'
    if uint8(roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
            uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0) = 1
            emit RoleGranted(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
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
    s = roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256
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
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#removeOperator: NO_OPERATOR_ROLE'
    if uint8(roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0):
            uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0) = 0
            emit RoleRevoked(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
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
    s = roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256
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
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_7a061a0c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 4).length)) + 97 < 96 or ceil32(ceil32(('cd', 4).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(('cd', 4).length)) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(ceil32(('cd', 4).length)) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _304 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_304] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_304 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_304 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _304
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0, 'MultipleVoting#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if mem[96] <= 0:
        revert with 0, 'MultipleVoting#createPoll: DESCRIPTION_INVALID'
    if mem[ceil32(ceil32(('cd', 4).length)) + 97] <= 1:
        revert with 0, 'MultipleVoting#createPoll: OPTIONS_INVALID'
    if cd[68] <= 0:
        revert with 0, 'MultipleVoting#createPoll: DURATION_TIME_INVALID'
    sub_0c1bc91c++
    mem[32] = 4
    stor4[stor2].field_0 = block.timestamp
    if cd[68] and 24 * 3600 > -1 / cd[68]:
        revert with 0, 17
    if block.timestamp > !(24 * 3600 * cd[68]):
        revert with 0, 17
    stor4[stor2].field_256 = block.timestamp + (24 * 3600 * cd[68])
    stor4[stor2].field_512 = cd[100]
    if bool(stor4[stor2].field_1024):
        if bool(stor4[stor2].field_1024) == uint255(stor4[stor2].field_1024) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            stor4[stor2][4][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
            stor4[stor2].field_1280++
            mem[0] = sha3(sub_0c1bc91c, 4) + 5
            _868 = mem[64]
            mem[64] = mem[64] + 32
            mem[_868] = 0
            if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                idx = 0
                while (uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32 > idx:
                    stor[idx + sha3(stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4))))].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                    if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                        revert with 0, 50
                    stor4[stor2].field_1280++
                    mem[0] = sha3(sub_0c1bc91c, 4) + 5
                    _1398 = mem[mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]]
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                        if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                        if not _1398:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1398) + 1
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                            while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1398 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                    if not _1398:
                        stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                        s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                        while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1398) + 1
                    s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                    t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                    while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1398 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    if sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    t = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) + 1
                    continue 
            else:
                if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                idx = 0
                while stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32 > idx:
                    stor[idx + sha3(stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4))))].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                    if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                        revert with 0, 50
                    stor4[stor2].field_1280++
                    mem[0] = sha3(sub_0c1bc91c, 4) + 5
                    _1402 = mem[mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]]
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                        if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                        if not _1402:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1402) + 1
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                            while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1402 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                    if not _1402:
                        stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                        s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                        while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1402) + 1
                    s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                    t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                    while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1402 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    if sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    t = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) + 1
                    continue 
        else:
            stor4[stor2].field_1024 = 0
            idx = 0
            while (uint255(stor4[stor2].field_1024) * 0.5) + 31 / 32 > idx:
                stor4[stor2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            stor4[stor2].field_1280++
            mem[0] = sha3(sub_0c1bc91c, 4) + 5
            _600 = mem[64]
            mem[64] = mem[64] + 32
            mem[_600] = 0
            if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                idx = 0
                while (uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32 > idx:
                    stor[idx + sha3(stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4))))].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                    if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                        revert with 0, 50
                    stor4[stor2].field_1280++
                    mem[0] = sha3(sub_0c1bc91c, 4) + 5
                    _1182 = mem[mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]]
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                        if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                        if not _1182:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1182) + 1
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                            while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1182 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                    if not _1182:
                        stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                        s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                        while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1182) + 1
                    s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                    t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                    while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1182 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    if sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    t = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) + 1
                    continue 
            else:
                if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                idx = 0
                while stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32 > idx:
                    stor[idx + sha3(stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4))))].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                    if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                        revert with 0, 50
                    stor4[stor2].field_1280++
                    mem[0] = sha3(sub_0c1bc91c, 4) + 5
                    _1186 = mem[mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]]
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                        if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                        if not _1186:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1186) + 1
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                            while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1186 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                    if not _1186:
                        stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                        s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                        while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1186) + 1
                    s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                    t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                    while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1186 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    if sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    t = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) + 1
                    continue 
    else:
        if bool(stor4[stor2].field_1024) == stor4[stor2].field_1025 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            stor4[stor2][4][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
            stor4[stor2].field_1280++
            mem[0] = sha3(sub_0c1bc91c, 4) + 5
            _870 = mem[64]
            mem[64] = mem[64] + 32
            mem[_870] = 0
            if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                idx = 0
                while (uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32 > idx:
                    stor[idx + sha3(stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4))))].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                    if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                        revert with 0, 50
                    stor4[stor2].field_1280++
                    mem[0] = sha3(sub_0c1bc91c, 4) + 5
                    _1406 = mem[mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]]
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                        if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                        if not _1406:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1406) + 1
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                            while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1406 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                    if not _1406:
                        stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                        s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                        while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1406) + 1
                    s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                    t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                    while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1406 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    if sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    t = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) + 1
                    continue 
            else:
                if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                idx = 0
                while stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32 > idx:
                    stor[idx + sha3(stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4))))].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                    if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                        revert with 0, 50
                    stor4[stor2].field_1280++
                    mem[0] = sha3(sub_0c1bc91c, 4) + 5
                    _1410 = mem[mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]]
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                        if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                        if not _1410:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1410) + 1
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                            while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1410 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                    if not _1410:
                        stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                        s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                        while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1410) + 1
                    s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                    t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                    while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1410 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    if sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    t = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) + 1
                    continue 
        else:
            stor4[stor2].field_1024 = 0
            idx = 0
            while stor4[stor2].field_1025 % 128 + 31 / 32 > idx:
                stor4[stor2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            stor4[stor2].field_1280++
            mem[0] = sha3(sub_0c1bc91c, 4) + 5
            _606 = mem[64]
            mem[64] = mem[64] + 32
            mem[_606] = 0
            if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                idx = 0
                while (uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32 > idx:
                    stor[idx + sha3(stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4))))].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                    if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                        revert with 0, 50
                    stor4[stor2].field_1280++
                    mem[0] = sha3(sub_0c1bc91c, 4) + 5
                    _1206 = mem[mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]]
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                        if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                        if not _1206:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1206) + 1
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                            while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1206 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                    if not _1206:
                        stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                        s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                        while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1206) + 1
                    s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                    t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                    while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1206 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    if sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    t = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) + 1
                    continue 
            else:
                if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                idx = 0
                while stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32 > idx:
                    stor[idx + sha3(stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4))))].field_0 = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                    if idx >= mem[ceil32(ceil32(('cd', 4).length)) + 97]:
                        revert with 0, 50
                    stor4[stor2].field_1280++
                    mem[0] = sha3(sub_0c1bc91c, 4) + 5
                    _1210 = mem[mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129]]
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0):
                        if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                        if not _1210:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1210) + 1
                            s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                            t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                            while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1210 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + ((uint255(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) * 0.5) + 31 / 32) > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if bool(stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0) == stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)
                    if not _1210:
                        stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = 0
                        s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                        while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_0 = (2 * _1210) + 1
                    s = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5))
                    t = mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + 32
                    while mem[(32 * idx) + ceil32(ceil32(('cd', 4).length)) + 129] + _1210 + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    if sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    t = sha3(stor4[stor2].field_1280 + sha3(sha3(sub_0c1bc91c, 4) + 5)) + (stor[stor4[stor2].field_1280 + ('array', 5, ('map', ('stor', ('name', 'stor2', 2)), ('name', 'stor4', 4)))].field_1 % 128 + 31 / 32) + 1
                    continue 
    Mask(248, 0, stor4[stor2].field_1544) = Mask(248, 0, msg.sender)
    emit 0xb7414c57: sub_0c1bc91c, cd[68], msg.sender
    return sub_0c1bc91c
}

function sub_29b8f44a(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if arg1 > sub_0c1bc91c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    mem[0] = arg1
    mem[32] = 4
    mem[96] = stor4[arg1].field_0
    mem[128] = stor4[arg1].field_256
    mem[160] = stor4[arg1].field_512
    mem[192] = stor4[arg1].field_768
    if bool(stor4[arg1].field_1024):
        if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        mem[384] = uint255(stor4[arg1].field_1024) * 0.5
        if bool(stor4[arg1].field_1024):
            if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[arg1].field_1024):
                mem[224] = 384
                mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                idx = 0
                while idx < stor4[arg1].field_1280:
                    mem[0] = sha3(arg1, 4) + 5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _542 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                        mem[_542] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                    mem[_542 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    mem[_542 + 32] = stor4[arg1][idx + 5].field_0
                                    t = _542 + 32
                                    u = sha3(mem[0])
                                    while _542 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                        mem[t + 32] = roleAdmin[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _542
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[arg1][idx + 5].field_1 % 128:
                            mem[s] = _542
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_542 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _542
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_542 + 32] = stor4[arg1][idx + 5].field_0
                        t = _542 + 32
                        u = sha3(mem[0])
                        while _542 + stor4[arg1][u + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _542
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    _593 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                    mem[_593] = stor4[arg1][idx + 5].field_1 % 128
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            mem[s] = _593
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_593 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _593
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_593 + 32] = stor4[arg1][idx + 5].field_0
                        t = _593 + 32
                        u = sha3(mem[0])
                        while _593 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _593
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor4[arg1][idx + 5].field_1 % 128:
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_593 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_593 + 32] = stor4[arg1][idx + 5].field_0
                            t = _593 + 32
                            u = sha3(mem[0])
                            while _593 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _593
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                mem[288] = bool(uint8(stor4[arg1].field_1536))
                mem[320] = address(stor4[arg1].field_1544)
                _433 = mem[64]
                mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                mem[_433] = stor4[arg1].field_1792
                if not stor4[arg1].field_1792:
                    mem[352] = _433
                    _449 = mem[224]
                    _451 = mem[96]
                    _452 = mem[128]
                    _453 = mem[160]
                    _525 = mem[64]
                    mem[mem[64]] = 256
                    _541 = mem[_449]
                    mem[mem[64] + 256] = mem[_449]
                    mem[mem[64] + 288 len ceil32(_541)] = mem[_449 + 32 len ceil32(_541)]
                    if ceil32(_541) <= _541:
                        mem[mem[64] + 32] = ceil32(_541) + 288
                        _901 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                        mem[ceil32(_541) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                        idx = 0
                        s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                        t = ceil32(_541) + mem[64] + (32 * _901) + 320
                        u = ceil32(_541) + mem[64] + 320
                        while idx < _901:
                            mem[u] = t + -ceil32(_541) + -_525 - 320
                            _1165 = mem[s]
                            _1193 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _1193:
                                mem[v + t + 32] = mem[v + _1165 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1193) > _1193:
                                mem[t + _1193 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_1193) + t + 32
                            u = u + 32
                            continue 
                        mem[_525 + 64] = _451
                        mem[_525 + 96] = _452
                        mem[_525 + 128] = _453
                        mem[_525 + 160] = bool(uint8(stor4[arg1].field_1536))
                        mem[_525 + 192] = address(stor4[arg1].field_1544)
                        mem[_525 + 224] = t - _525
                        _1209 = mem[_433]
                        mem[t] = mem[_433]
                        idx = 0
                        s = _433 + 32
                        u = t + 32
                        while idx < _1209:
                            mem[u] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t + (32 * _1209) + -mem[64] + 32
                    mem[mem[64] + _541 + 288] = 0
                    mem[mem[64] + 32] = ceil32(_541) + 288
                    _909 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[ceil32(_541) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    idx = 0
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    t = ceil32(_541) + mem[64] + (32 * _909) + 320
                    u = ceil32(_541) + mem[64] + 320
                    while idx < _909:
                        mem[u] = t + -ceil32(_541) + -_525 - 320
                        _1166 = mem[s]
                        _1194 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1194:
                            mem[v + t + 32] = mem[v + _1166 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1194) > _1194:
                            mem[t + _1194 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1194) + t + 32
                        u = u + 32
                        continue 
                    mem[_525 + 64] = _451
                    mem[_525 + 96] = _452
                    mem[_525 + 128] = _453
                    mem[_525 + 160] = bool(uint8(stor4[arg1].field_1536))
                    mem[_525 + 192] = address(stor4[arg1].field_1544)
                    mem[_525 + 224] = t - _525
                    _1210 = mem[_433]
                    mem[t] = mem[_433]
                    idx = 0
                    s = _433 + 32
                    u = t + 32
                    while idx < _1210:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1210) + -mem[64] + 32
                mem[0] = sha3(arg1, 4) + 7
                mem[_433 + 32] = address(stor4[arg1][7].field_0)
                idx = _433 + 32
                s = 0
                while _433 + (32 * stor4[arg1].field_1792) > idx:
                    mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[352] = _433
                _1101 = mem[224]
                _1102 = mem[256]
                _1103 = mem[96]
                _1104 = mem[128]
                _1105 = mem[160]
                _1106 = mem[288]
                _1107 = mem[320]
                _1167 = mem[64]
                mem[mem[64]] = 256
                _1211 = mem[_1101]
                mem[mem[64] + 256] = mem[_1101]
                mem[mem[64] + 288 len ceil32(_1211)] = mem[_1101 + 32 len ceil32(_1211)]
                if ceil32(_1211) <= _1211:
                    mem[mem[64] + 32] = ceil32(_1211) + 288
                    _1577 = mem[_1102]
                    mem[ceil32(_1211) + mem[64] + 288] = mem[_1102]
                    idx = 0
                    s = _1102 + 32
                    t = ceil32(_1211) + mem[64] + (32 * _1577) + 320
                    u = ceil32(_1211) + mem[64] + 320
                    while idx < _1577:
                        mem[u] = t + -ceil32(_1211) + -_1167 - 320
                        _1773 = mem[s]
                        _1809 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1809:
                            mem[v + t + 32] = mem[v + _1773 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1809) > _1809:
                            mem[t + _1809 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1809) + t + 32
                        u = u + 32
                        continue 
                    mem[_1167 + 64] = _1103
                    mem[_1167 + 96] = _1104
                    mem[_1167 + 128] = _1105
                    mem[_1167 + 160] = bool(_1106)
                    mem[_1167 + 192] = address(_1107)
                    mem[_1167 + 224] = t - _1167
                    _1825 = mem[_433]
                    mem[t] = mem[_433]
                    idx = 0
                    s = _433 + 32
                    u = t + 32
                    while idx < _1825:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1825) + -mem[64] + 32
                mem[mem[64] + _1211 + 288] = 0
                mem[mem[64] + 32] = ceil32(_1211) + 288
                _1585 = mem[_1102]
                mem[ceil32(_1211) + mem[64] + 288] = mem[_1102]
                idx = 0
                s = _1102 + 32
                t = ceil32(_1211) + mem[64] + (32 * _1585) + 320
                u = ceil32(_1211) + mem[64] + 320
                while idx < _1585:
                    mem[u] = t + -ceil32(_1211) + -_1167 - 320
                    _1774 = mem[s]
                    _1810 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1810:
                        mem[v + t + 32] = mem[v + _1774 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1810) > _1810:
                        mem[t + _1810 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1810) + t + 32
                    u = u + 32
                    continue 
                mem[_1167 + 64] = _1103
                mem[_1167 + 96] = _1104
                mem[_1167 + 128] = _1105
                mem[_1167 + 160] = bool(_1106)
                mem[_1167 + 192] = address(_1107)
                mem[_1167 + 224] = t - _1167
                _1826 = mem[_433]
                mem[t] = mem[_433]
                idx = 0
                s = _433 + 32
                u = t + 32
                while idx < _1826:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1826) + -mem[64] + 32
            if 31 >= uint255(stor4[arg1].field_1024) * 0.5:
                mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
                mem[224] = 384
                mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                idx = 0
                while idx < stor4[arg1].field_1280:
                    mem[0] = sha3(arg1, 4) + 5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _553 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                        mem[_553] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                    mem[_553 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    mem[_553 + 32] = stor4[arg1][idx + 5].field_0
                                    t = _553 + 32
                                    u = sha3(mem[0])
                                    while _553 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                        mem[t + 32] = roleAdmin[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _553
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[arg1][idx + 5].field_1 % 128:
                            mem[s] = _553
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_553 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _553
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_553 + 32] = stor4[arg1][idx + 5].field_0
                        t = _553 + 32
                        u = sha3(mem[0])
                        while _553 + stor4[arg1][u + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _553
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    _595 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                    mem[_595] = stor4[arg1][idx + 5].field_1 % 128
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            mem[s] = _595
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_595 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _595
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_595 + 32] = stor4[arg1][idx + 5].field_0
                        t = _595 + 32
                        u = sha3(mem[0])
                        while _595 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _595
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor4[arg1][idx + 5].field_1 % 128:
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_595 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_595 + 32] = stor4[arg1][idx + 5].field_0
                            t = _595 + 32
                            u = sha3(mem[0])
                            while _595 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _595
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                mem[288] = bool(uint8(stor4[arg1].field_1536))
                mem[320] = address(stor4[arg1].field_1544)
                _435 = mem[64]
                mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                mem[_435] = stor4[arg1].field_1792
                if not stor4[arg1].field_1792:
                    mem[352] = _435
                    _459 = mem[224]
                    _461 = mem[96]
                    _462 = mem[128]
                    _463 = mem[160]
                    _526 = mem[64]
                    mem[mem[64]] = 256
                    _552 = mem[_459]
                    mem[mem[64] + 256] = mem[_459]
                    mem[mem[64] + 288 len ceil32(_552)] = mem[_459 + 32 len ceil32(_552)]
                    if ceil32(_552) <= _552:
                        mem[mem[64] + 32] = ceil32(_552) + 288
                        _902 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                        mem[ceil32(_552) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                        idx = 0
                        s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                        t = ceil32(_552) + mem[64] + (32 * _902) + 320
                        u = ceil32(_552) + mem[64] + 320
                        while idx < _902:
                            mem[u] = t + -ceil32(_552) + -_526 - 320
                            _1169 = mem[s]
                            _1195 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _1195:
                                mem[v + t + 32] = mem[v + _1169 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1195) > _1195:
                                mem[t + _1195 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_1195) + t + 32
                            u = u + 32
                            continue 
                        mem[_526 + 64] = _461
                        mem[_526 + 96] = _462
                        mem[_526 + 128] = _463
                        mem[_526 + 160] = bool(uint8(stor4[arg1].field_1536))
                        mem[_526 + 192] = address(stor4[arg1].field_1544)
                        mem[_526 + 224] = t - _526
                        _1212 = mem[_435]
                        mem[t] = mem[_435]
                        idx = 0
                        s = _435 + 32
                        u = t + 32
                        while idx < _1212:
                            mem[u] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t + (32 * _1212) + -mem[64] + 32
                    mem[mem[64] + _552 + 288] = 0
                    mem[mem[64] + 32] = ceil32(_552) + 288
                    _912 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[ceil32(_552) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    idx = 0
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    t = ceil32(_552) + mem[64] + (32 * _912) + 320
                    u = ceil32(_552) + mem[64] + 320
                    while idx < _912:
                        mem[u] = t + -ceil32(_552) + -_526 - 320
                        _1170 = mem[s]
                        _1196 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1196:
                            mem[v + t + 32] = mem[v + _1170 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1196) > _1196:
                            mem[t + _1196 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1196) + t + 32
                        u = u + 32
                        continue 
                    mem[_526 + 64] = _461
                    mem[_526 + 96] = _462
                    mem[_526 + 128] = _463
                    mem[_526 + 160] = bool(uint8(stor4[arg1].field_1536))
                    mem[_526 + 192] = address(stor4[arg1].field_1544)
                    mem[_526 + 224] = t - _526
                    _1213 = mem[_435]
                    mem[t] = mem[_435]
                    idx = 0
                    s = _435 + 32
                    u = t + 32
                    while idx < _1213:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1213) + -mem[64] + 32
                mem[0] = sha3(arg1, 4) + 7
                mem[_435 + 32] = address(stor4[arg1][7].field_0)
                idx = _435 + 32
                s = 0
                while _435 + (32 * stor4[arg1].field_1792) > idx:
                    mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[352] = _435
                _1109 = mem[224]
                _1110 = mem[256]
                _1111 = mem[96]
                _1112 = mem[128]
                _1113 = mem[160]
                _1114 = mem[288]
                _1115 = mem[320]
                _1171 = mem[64]
                mem[mem[64]] = 256
                _1214 = mem[_1109]
                mem[mem[64] + 256] = mem[_1109]
                mem[mem[64] + 288 len ceil32(_1214)] = mem[_1109 + 32 len ceil32(_1214)]
                if ceil32(_1214) <= _1214:
                    mem[mem[64] + 32] = ceil32(_1214) + 288
                    _1578 = mem[_1110]
                    mem[ceil32(_1214) + mem[64] + 288] = mem[_1110]
                    idx = 0
                    s = _1110 + 32
                    t = ceil32(_1214) + mem[64] + (32 * _1578) + 320
                    u = ceil32(_1214) + mem[64] + 320
                    while idx < _1578:
                        mem[u] = t + -ceil32(_1214) + -_1171 - 320
                        _1780 = mem[s]
                        _1811 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1811:
                            mem[v + t + 32] = mem[v + _1780 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1811) > _1811:
                            mem[t + _1811 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1811) + t + 32
                        u = u + 32
                        continue 
                    mem[_1171 + 64] = _1111
                    mem[_1171 + 96] = _1112
                    mem[_1171 + 128] = _1113
                    mem[_1171 + 160] = bool(_1114)
                    mem[_1171 + 192] = address(_1115)
                    mem[_1171 + 224] = t - _1171
                    _1829 = mem[_435]
                    mem[t] = mem[_435]
                    idx = 0
                    s = _435 + 32
                    u = t + 32
                    while idx < _1829:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1829) + -mem[64] + 32
                mem[mem[64] + _1214 + 288] = 0
                mem[mem[64] + 32] = ceil32(_1214) + 288
                _1590 = mem[_1110]
                mem[ceil32(_1214) + mem[64] + 288] = mem[_1110]
                idx = 0
                s = _1110 + 32
                t = ceil32(_1214) + mem[64] + (32 * _1590) + 320
                u = ceil32(_1214) + mem[64] + 320
                while idx < _1590:
                    mem[u] = t + -ceil32(_1214) + -_1171 - 320
                    _1781 = mem[s]
                    _1812 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1812:
                        mem[v + t + 32] = mem[v + _1781 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1812) > _1812:
                        mem[t + _1812 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1812) + t + 32
                    u = u + 32
                    continue 
                mem[_1171 + 64] = _1111
                mem[_1171 + 96] = _1112
                mem[_1171 + 128] = _1113
                mem[_1171 + 160] = bool(_1114)
                mem[_1171 + 192] = address(_1115)
                mem[_1171 + 224] = t - _1171
                _1830 = mem[_435]
                mem[t] = mem[_435]
                idx = 0
                s = _435 + 32
                u = t + 32
                while idx < _1830:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1830) + -mem[64] + 32
            mem[0] = sha3(arg1, 4) + 4
            mem[416] = stor4[arg1][4].field_0
            idx = 416
            s = 0
            while (uint255(stor4[arg1].field_1024) * 0.5) + 384 > idx:
                mem[idx + 32] = stor4[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[224] = 384
            mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
            s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _911 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_911] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_911 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_911 + 32] = stor4[arg1][idx + 5].field_0
                                t = _911 + 32
                                u = sha3(mem[0])
                                while _911 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _911
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _911
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_911 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _911
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_911 + 32] = stor4[arg1][idx + 5].field_0
                    t = _911 + 32
                    u = sha3(mem[0])
                    while _911 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _911
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _926 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_926] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _926
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_926 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _926
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_926 + 32] = stor4[arg1][idx + 5].field_0
                    t = _926 + 32
                    u = sha3(mem[0])
                    while _926 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _926
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_926 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_926 + 32] = stor4[arg1][idx + 5].field_0
                        t = _926 + 32
                        u = sha3(mem[0])
                        while _926 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _926
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _846 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_846] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _846
                _861 = mem[224]
                _863 = mem[96]
                _864 = mem[128]
                _865 = mem[160]
                _897 = mem[64]
                mem[mem[64]] = 256
                _910 = mem[_861]
                mem[mem[64] + 256] = mem[_861]
                mem[mem[64] + 288 len ceil32(_910)] = mem[_861 + 32 len ceil32(_910)]
                if ceil32(_910) <= _910:
                    mem[mem[64] + 32] = ceil32(_910) + 288
                    _1233 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[ceil32(_910) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    idx = 0
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    t = ceil32(_910) + mem[64] + (32 * _1233) + 320
                    u = ceil32(_910) + mem[64] + 320
                    while idx < _1233:
                        mem[u] = t + -ceil32(_910) + -_897 - 320
                        _1494 = mem[s]
                        _1541 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1541:
                            mem[v + t + 32] = mem[v + _1494 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1541) > _1541:
                            mem[t + _1541 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1541) + t + 32
                        u = u + 32
                        continue 
                    mem[_897 + 64] = _863
                    mem[_897 + 96] = _864
                    mem[_897 + 128] = _865
                    mem[_897 + 160] = bool(uint8(stor4[arg1].field_1536))
                    mem[_897 + 192] = address(stor4[arg1].field_1544)
                    mem[_897 + 224] = t - _897
                    _1551 = mem[_846]
                    mem[t] = mem[_846]
                    idx = 0
                    s = _846 + 32
                    u = t + 32
                    while idx < _1551:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1551) + -mem[64] + 32
                mem[mem[64] + _910 + 288] = 0
                mem[mem[64] + 32] = ceil32(_910) + 288
                _1241 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                mem[ceil32(_910) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                idx = 0
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                t = ceil32(_910) + mem[64] + (32 * _1241) + 320
                u = ceil32(_910) + mem[64] + 320
                while idx < _1241:
                    mem[u] = t + -ceil32(_910) + -_897 - 320
                    _1495 = mem[s]
                    _1542 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1542:
                        mem[v + t + 32] = mem[v + _1495 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1542) > _1542:
                        mem[t + _1542 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1542) + t + 32
                    u = u + 32
                    continue 
                mem[_897 + 64] = _863
                mem[_897 + 96] = _864
                mem[_897 + 128] = _865
                mem[_897 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_897 + 192] = address(stor4[arg1].field_1544)
                mem[_897 + 224] = t - _897
                _1552 = mem[_846]
                mem[t] = mem[_846]
                idx = 0
                s = _846 + 32
                u = t + 32
                while idx < _1552:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1552) + -mem[64] + 32
            mem[0] = sha3(arg1, 4) + 7
            mem[_846 + 32] = address(stor4[arg1][7].field_0)
            idx = _846 + 32
            s = 0
            while _846 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _846
            _1457 = mem[224]
            _1458 = mem[256]
            _1459 = mem[96]
            _1460 = mem[128]
            _1461 = mem[160]
            _1462 = mem[288]
            _1463 = mem[320]
            _1496 = mem[64]
            mem[mem[64]] = 256
            _1553 = mem[_1457]
            mem[mem[64] + 256] = mem[_1457]
            mem[mem[64] + 288 len ceil32(_1553)] = mem[_1457 + 32 len ceil32(_1553)]
            var37001 = ceil32(_1553)
            if ceil32(_1553) <= _1553:
                mem[mem[64] + 32] = ceil32(_1553) + 288
                _1849 = mem[_1458]
                mem[ceil32(_1553) + mem[64] + 288] = mem[_1458]
                idx = 0
                s = _1458 + 32
                t = ceil32(_1553) + mem[64] + (32 * _1849) + 320
                u = ceil32(_1553) + mem[64] + 320
                while idx < _1849:
                    mem[u] = t + -ceil32(_1553) + -_1496 - 320
                    _1957 = mem[s]
                    _1993 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1993:
                        mem[v + t + 32] = mem[v + _1957 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1993) > _1993:
                        mem[t + _1993 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1993) + t + 32
                    u = u + 32
                    continue 
                mem[_1496 + 64] = _1459
                mem[_1496 + 96] = _1460
                mem[_1496 + 128] = _1461
                mem[_1496 + 160] = bool(_1462)
                mem[_1496 + 192] = address(_1463)
                mem[_1496 + 224] = t - _1496
                _2003 = mem[_846]
                mem[t] = mem[_846]
                idx = 0
                s = _846 + 32
                u = t + 32
                while idx < _2003:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _2003) + -mem[64] + 32
            mem[mem[64] + _1553 + 288] = 0
            mem[mem[64] + 32] = ceil32(_1553) + 288
            _1857 = mem[_1458]
            mem[ceil32(_1553) + _1496 + 288] = mem[_1458]
            idx = 0
            s = _1458 + 32
            t = ceil32(_1553) + _1496 + (32 * _1857) + 320
            u = ceil32(_1553) + _1496 + 320
            while idx < _1857:
                mem[u] = t + -ceil32(_1553) + -_1496 - 320
                _1958 = mem[s]
                _1994 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1994:
                    mem[v + t + 32] = mem[v + _1958 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1994) > _1994:
                    mem[t + _1994 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1994) + t + 32
                u = u + 32
                continue 
            mem[_1496 + 64] = _1459
            mem[_1496 + 96] = _1460
            mem[_1496 + 128] = _1461
            mem[_1496 + 160] = bool(_1462)
            mem[_1496 + 192] = address(_1463)
            mem[_1496 + 224] = t - _1496
            _2004 = mem[_846]
            mem[t] = mem[_846]
            idx = 0
            s = _846 + 32
            u = t + 32
            while idx < _2004:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _2004) + -mem[64] + 32
        if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
            revert with 0, 34
        if not stor4[arg1].field_1025 % 128:
            mem[224] = 384
            mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
            s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_555] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_555 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_555 + 32] = stor4[arg1][idx + 5].field_0
                                t = _555 + 32
                                u = sha3(mem[0])
                                while _555 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _555
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _555
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_555 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _555
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_555 + 32] = stor4[arg1][idx + 5].field_0
                    t = _555 + 32
                    u = sha3(mem[0])
                    while _555 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _555
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _596 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_596] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _596
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_596 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _596
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_596 + 32] = stor4[arg1][idx + 5].field_0
                    t = _596 + 32
                    u = sha3(mem[0])
                    while _596 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _596
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_596 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_596 + 32] = stor4[arg1][idx + 5].field_0
                        t = _596 + 32
                        u = sha3(mem[0])
                        while _596 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _596
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _437 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_437] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _437
                _468 = mem[224]
                _470 = mem[96]
                _471 = mem[128]
                _472 = mem[160]
                _527 = mem[64]
                mem[mem[64]] = 256
                _554 = mem[_468]
                mem[mem[64] + 256] = mem[_468]
                mem[mem[64] + 288 len ceil32(_554)] = mem[_468 + 32 len ceil32(_554)]
                if ceil32(_554) <= _554:
                    mem[mem[64] + 32] = ceil32(_554) + 288
                    _903 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[ceil32(_554) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    idx = 0
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    t = ceil32(_554) + mem[64] + (32 * _903) + 320
                    u = ceil32(_554) + mem[64] + 320
                    while idx < _903:
                        mem[u] = t + -ceil32(_554) + -_527 - 320
                        _1172 = mem[s]
                        _1197 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1197:
                            mem[v + t + 32] = mem[v + _1172 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1197) > _1197:
                            mem[t + _1197 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1197) + t + 32
                        u = u + 32
                        continue 
                    mem[_527 + 64] = _470
                    mem[_527 + 96] = _471
                    mem[_527 + 128] = _472
                    mem[_527 + 160] = bool(uint8(stor4[arg1].field_1536))
                    mem[_527 + 192] = address(stor4[arg1].field_1544)
                    mem[_527 + 224] = t - _527
                    _1215 = mem[_437]
                    mem[t] = mem[_437]
                    idx = 0
                    s = _437 + 32
                    u = t + 32
                    while idx < _1215:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1215) + -mem[64] + 32
                mem[mem[64] + _554 + 288] = 0
                mem[mem[64] + 32] = ceil32(_554) + 288
                _913 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                mem[ceil32(_554) + _527 + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                idx = 0
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                t = ceil32(_554) + _527 + (32 * _913) + 320
                u = ceil32(_554) + _527 + 320
                while idx < _913:
                    mem[u] = t + -ceil32(_554) + -_527 - 320
                    _1173 = mem[s]
                    _1198 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1198:
                        mem[v + t + 32] = mem[v + _1173 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1198) > _1198:
                        mem[t + _1198 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1198) + t + 32
                    u = u + 32
                    continue 
                mem[_527 + 64] = _470
                mem[_527 + 96] = _471
                mem[_527 + 128] = _472
                mem[_527 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_527 + 192] = address(stor4[arg1].field_1544)
                mem[_527 + 224] = t - _527
                _1216 = mem[_437]
                mem[t] = mem[_437]
                idx = 0
                s = _437 + 32
                u = t + 32
                while idx < _1216:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1216) + -mem[64] + 32
            mem[0] = sha3(arg1, 4) + 7
            mem[_437 + 32] = address(stor4[arg1][7].field_0)
            idx = _437 + 32
            s = 0
            while _437 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _437
            _1117 = mem[224]
            _1118 = mem[256]
            _1119 = mem[96]
            _1120 = mem[128]
            _1121 = mem[160]
            _1122 = mem[288]
            _1123 = mem[320]
            _1174 = mem[64]
            mem[mem[64]] = 256
            _1217 = mem[_1117]
            mem[mem[64] + 256] = mem[_1117]
            mem[mem[64] + 288 len ceil32(_1217)] = mem[_1117 + 32 len ceil32(_1217)]
            if ceil32(_1217) <= _1217:
                mem[mem[64] + 32] = ceil32(_1217) + 288
                _1579 = mem[_1118]
                mem[ceil32(_1217) + mem[64] + 288] = mem[_1118]
                idx = 0
                s = _1118 + 32
                t = ceil32(_1217) + mem[64] + (32 * _1579) + 320
                u = ceil32(_1217) + mem[64] + 320
                while idx < _1579:
                    mem[u] = t + -ceil32(_1217) + -_1174 - 320
                    _1782 = mem[s]
                    _1813 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1813:
                        mem[v + t + 32] = mem[v + _1782 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1813) > _1813:
                        mem[t + _1813 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1813) + t + 32
                    u = u + 32
                    continue 
                mem[_1174 + 64] = _1119
                mem[_1174 + 96] = _1120
                mem[_1174 + 128] = _1121
                mem[_1174 + 160] = bool(_1122)
                mem[_1174 + 192] = address(_1123)
                mem[_1174 + 224] = t - _1174
                _1831 = mem[_437]
                mem[t] = mem[_437]
                idx = 0
                s = _437 + 32
                u = t + 32
                while idx < _1831:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1831) + -mem[64] + 32
            mem[mem[64] + _1217 + 288] = 0
            mem[mem[64] + 32] = ceil32(_1217) + 288
            _1591 = mem[_1118]
            mem[ceil32(_1217) + mem[64] + 288] = mem[_1118]
            idx = 0
            s = _1118 + 32
            t = ceil32(_1217) + mem[64] + (32 * _1591) + 320
            u = ceil32(_1217) + mem[64] + 320
            while idx < _1591:
                mem[u] = t + -ceil32(_1217) + -_1174 - 320
                _1783 = mem[s]
                _1814 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1814:
                    mem[v + t + 32] = mem[v + _1783 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1814) > _1814:
                    mem[t + _1814 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1814) + t + 32
                u = u + 32
                continue 
            mem[_1174 + 64] = _1119
            mem[_1174 + 96] = _1120
            mem[_1174 + 128] = _1121
            mem[_1174 + 160] = bool(_1122)
            mem[_1174 + 192] = address(_1123)
            mem[_1174 + 224] = t - _1174
            _1832 = mem[_437]
            mem[t] = mem[_437]
            idx = 0
            s = _437 + 32
            u = t + 32
            while idx < _1832:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1832) + -mem[64] + 32
        if 31 >= stor4[arg1].field_1025 % 128:
            mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
            mem[224] = 384
            mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
            s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _566 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_566] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_566 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_566 + 32] = stor4[arg1][idx + 5].field_0
                                t = _566 + 32
                                u = sha3(mem[0])
                                while _566 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _566
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _566
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_566 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _566
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_566 + 32] = stor4[arg1][idx + 5].field_0
                    t = _566 + 32
                    u = sha3(mem[0])
                    while _566 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _566
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _598 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_598] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _598
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_598 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _598
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_598 + 32] = stor4[arg1][idx + 5].field_0
                    t = _598 + 32
                    u = sha3(mem[0])
                    while _598 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _598
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_598 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_598 + 32] = stor4[arg1][idx + 5].field_0
                        t = _598 + 32
                        u = sha3(mem[0])
                        while _598 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _598
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _439 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_439] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _439
                _478 = mem[224]
                _480 = mem[96]
                _481 = mem[128]
                _482 = mem[160]
                _528 = mem[64]
                mem[mem[64]] = 256
                _565 = mem[_478]
                mem[mem[64] + 256] = mem[_478]
                mem[mem[64] + 288 len ceil32(_565)] = mem[_478 + 32 len ceil32(_565)]
                if ceil32(_565) <= _565:
                    mem[mem[64] + 32] = ceil32(_565) + 288
                    _904 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[ceil32(_565) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    idx = 0
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    t = ceil32(_565) + mem[64] + (32 * _904) + 320
                    u = ceil32(_565) + mem[64] + 320
                    while idx < _904:
                        mem[u] = t + -ceil32(_565) + -_528 - 320
                        _1176 = mem[s]
                        _1199 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1199:
                            mem[v + t + 32] = mem[v + _1176 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1199) > _1199:
                            mem[t + _1199 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1199) + t + 32
                        u = u + 32
                        continue 
                    mem[_528 + 64] = _480
                    mem[_528 + 96] = _481
                    mem[_528 + 128] = _482
                    mem[_528 + 160] = bool(uint8(stor4[arg1].field_1536))
                    mem[_528 + 192] = address(stor4[arg1].field_1544)
                    mem[_528 + 224] = t - _528
                    _1218 = mem[_439]
                    mem[t] = mem[_439]
                    idx = 0
                    s = _439 + 32
                    u = t + 32
                    while idx < _1218:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1218) + -mem[64] + 32
                mem[mem[64] + _565 + 288] = 0
                mem[mem[64] + 32] = ceil32(_565) + 288
                _916 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                mem[ceil32(_565) + _528 + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                idx = 0
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                t = ceil32(_565) + _528 + (32 * _916) + 320
                u = ceil32(_565) + _528 + 320
                while idx < _916:
                    mem[u] = t + -ceil32(_565) + -_528 - 320
                    _1177 = mem[s]
                    _1200 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1200:
                        mem[v + t + 32] = mem[v + _1177 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1200) > _1200:
                        mem[t + _1200 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1200) + t + 32
                    u = u + 32
                    continue 
                mem[_528 + 64] = _480
                mem[_528 + 96] = _481
                mem[_528 + 128] = _482
                mem[_528 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_528 + 192] = address(stor4[arg1].field_1544)
                mem[_528 + 224] = t - _528
                _1219 = mem[_439]
                mem[t] = mem[_439]
                idx = 0
                s = _439 + 32
                u = t + 32
                while idx < _1219:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1219) + -mem[64] + 32
            mem[0] = sha3(arg1, 4) + 7
            mem[_439 + 32] = address(stor4[arg1][7].field_0)
            idx = _439 + 32
            s = 0
            while _439 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _439
            _1125 = mem[224]
            _1126 = mem[256]
            _1127 = mem[96]
            _1128 = mem[128]
            _1129 = mem[160]
            _1130 = mem[288]
            _1131 = mem[320]
            _1178 = mem[64]
            mem[mem[64]] = 256
            _1220 = mem[_1125]
            mem[mem[64] + 256] = mem[_1125]
            mem[mem[64] + 288 len ceil32(_1220)] = mem[_1125 + 32 len ceil32(_1220)]
            if ceil32(_1220) <= _1220:
                mem[mem[64] + 32] = ceil32(_1220) + 288
                _1580 = mem[_1126]
                mem[ceil32(_1220) + mem[64] + 288] = mem[_1126]
                idx = 0
                s = _1126 + 32
                t = ceil32(_1220) + mem[64] + (32 * _1580) + 320
                u = ceil32(_1220) + mem[64] + 320
                while idx < _1580:
                    mem[u] = t + -ceil32(_1220) + -_1178 - 320
                    _1789 = mem[s]
                    _1815 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1815:
                        mem[v + t + 32] = mem[v + _1789 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1815) > _1815:
                        mem[t + _1815 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1815) + t + 32
                    u = u + 32
                    continue 
                mem[_1178 + 64] = _1127
                mem[_1178 + 96] = _1128
                mem[_1178 + 128] = _1129
                mem[_1178 + 160] = bool(_1130)
                mem[_1178 + 192] = address(_1131)
                mem[_1178 + 224] = t - _1178
                _1835 = mem[_439]
                mem[t] = mem[_439]
                idx = 0
                s = _439 + 32
                u = t + 32
                while idx < _1835:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1835) + -mem[64] + 32
            mem[mem[64] + _1220 + 288] = 0
            mem[mem[64] + 32] = ceil32(_1220) + 288
            _1596 = mem[_1126]
            mem[ceil32(_1220) + mem[64] + 288] = mem[_1126]
            idx = 0
            s = _1126 + 32
            t = ceil32(_1220) + mem[64] + (32 * _1596) + 320
            u = ceil32(_1220) + mem[64] + 320
            while idx < _1596:
                mem[u] = t + -ceil32(_1220) + -_1178 - 320
                _1790 = mem[s]
                _1816 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1816:
                    mem[v + t + 32] = mem[v + _1790 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1816) > _1816:
                    mem[t + _1816 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1816) + t + 32
                u = u + 32
                continue 
            mem[_1178 + 64] = _1127
            mem[_1178 + 96] = _1128
            mem[_1178 + 128] = _1129
            mem[_1178 + 160] = bool(_1130)
            mem[_1178 + 192] = address(_1131)
            mem[_1178 + 224] = t - _1178
            _1836 = mem[_439]
            mem[t] = mem[_439]
            idx = 0
            s = _439 + 32
            u = t + 32
            while idx < _1836:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1836) + -mem[64] + 32
        mem[0] = sha3(arg1, 4) + 4
        mem[416] = stor4[arg1][4].field_0
        idx = 416
        s = 0
        while stor4[arg1].field_1025 % 128 + 384 > idx:
            mem[idx + 32] = stor4[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[224] = 384
        mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
        mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
        s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
        idx = 0
        while idx < stor4[arg1].field_1280:
            mem[0] = sha3(arg1, 4) + 5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                _915 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                mem[_915] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_915 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_915 + 32] = stor4[arg1][idx + 5].field_0
                            t = _915 + 32
                            u = sha3(mem[0])
                            while _915 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _915
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[arg1][idx + 5].field_1 % 128:
                    mem[s] = _915
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_915 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _915
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_915 + 32] = stor4[arg1][idx + 5].field_0
                t = _915 + 32
                u = sha3(mem[0])
                while _915 + stor4[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _915
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _929 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
            mem[_929] = stor4[arg1][idx + 5].field_1 % 128
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    mem[s] = _929
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                    mem[_929 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _929
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_929 + 32] = stor4[arg1][idx + 5].field_0
                t = _929 + 32
                u = sha3(mem[0])
                while _929 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _929
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][idx + 5].field_1 % 128:
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_929 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_929 + 32] = stor4[arg1][idx + 5].field_0
                    t = _929 + 32
                    u = sha3(mem[0])
                    while _929 + stor4[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _929
            s = s + 32
            idx = idx + 1
            continue 
        mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
        mem[288] = bool(uint8(stor4[arg1].field_1536))
        mem[320] = address(stor4[arg1].field_1544)
        _850 = mem[64]
        mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
        mem[_850] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[352] = _850
            _870 = mem[224]
            _872 = mem[96]
            _873 = mem[128]
            _874 = mem[160]
            _898 = mem[64]
            mem[mem[64]] = 256
            _914 = mem[_870]
            mem[mem[64] + 256] = mem[_870]
            mem[mem[64] + 288 len ceil32(_914)] = mem[_870 + 32 len ceil32(_914)]
            if ceil32(_914) <= _914:
                mem[mem[64] + 32] = ceil32(_914) + 288
                _1234 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                mem[ceil32(_914) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                idx = 0
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                t = ceil32(_914) + mem[64] + (32 * _1234) + 320
                u = ceil32(_914) + mem[64] + 320
                while idx < _1234:
                    mem[u] = t + -ceil32(_914) + -_898 - 320
                    _1507 = mem[s]
                    _1543 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1543:
                        mem[v + t + 32] = mem[v + _1507 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1543) > _1543:
                        mem[t + _1543 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1543) + t + 32
                    u = u + 32
                    continue 
                mem[_898 + 64] = _872
                mem[_898 + 96] = _873
                mem[_898 + 128] = _874
                mem[_898 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_898 + 192] = address(stor4[arg1].field_1544)
                mem[_898 + 224] = t - _898
                _1558 = mem[_850]
                mem[t] = mem[_850]
                idx = 0
                s = _850 + 32
                u = t + 32
                while idx < _1558:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1558) + -mem[64] + 32
            mem[mem[64] + _914 + 288] = 0
            mem[mem[64] + 32] = ceil32(_914) + 288
            _1250 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
            mem[ceil32(_914) + mem[64] + 288] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
            idx = 0
            s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
            t = ceil32(_914) + mem[64] + (32 * _1250) + 320
            u = ceil32(_914) + mem[64] + 320
            while idx < _1250:
                mem[u] = t + -ceil32(_914) + -_898 - 320
                _1508 = mem[s]
                _1544 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1544:
                    mem[v + t + 32] = mem[v + _1508 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1544) > _1544:
                    mem[t + _1544 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1544) + t + 32
                u = u + 32
                continue 
            mem[_898 + 64] = _872
            mem[_898 + 96] = _873
            mem[_898 + 128] = _874
            mem[_898 + 160] = bool(uint8(stor4[arg1].field_1536))
            mem[_898 + 192] = address(stor4[arg1].field_1544)
            mem[_898 + 224] = t - _898
            _1559 = mem[_850]
            mem[t] = mem[_850]
            idx = 0
            s = _850 + 32
            u = t + 32
            while idx < _1559:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1559) + -mem[64] + 32
        mem[0] = sha3(arg1, 4) + 7
        mem[_850 + 32] = address(stor4[arg1][7].field_0)
        idx = _850 + 32
        s = 0
        while _850 + (32 * stor4[arg1].field_1792) > idx:
            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[352] = _850
        _1465 = mem[224]
        _1466 = mem[256]
        _1467 = mem[96]
        _1468 = mem[128]
        _1469 = mem[160]
        _1470 = mem[288]
        _1471 = mem[320]
        _1509 = mem[64]
        mem[mem[64]] = 256
        _1560 = mem[_1465]
        mem[mem[64] + 256] = mem[_1465]
        mem[mem[64] + 288 len ceil32(_1560)] = mem[_1465 + 32 len ceil32(_1560)]
        var38001 = ceil32(_1560)
        if ceil32(_1560) <= _1560:
            mem[mem[64] + 32] = ceil32(_1560) + 288
            _1850 = mem[_1466]
            mem[ceil32(_1560) + mem[64] + 288] = mem[_1466]
            idx = 0
            s = _1466 + 32
            t = ceil32(_1560) + mem[64] + (32 * _1850) + 320
            u = ceil32(_1560) + mem[64] + 320
            while idx < _1850:
                mem[u] = t + -ceil32(_1560) + -_1509 - 320
                _1967 = mem[s]
                _1995 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1995:
                    mem[v + t + 32] = mem[v + _1967 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1995) > _1995:
                    mem[t + _1995 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1995) + t + 32
                u = u + 32
                continue 
            mem[_1509 + 64] = _1467
            mem[_1509 + 96] = _1468
            mem[_1509 + 128] = _1469
            mem[_1509 + 160] = bool(_1470)
            mem[_1509 + 192] = address(_1471)
            mem[_1509 + 224] = t - _1509
            _2009 = mem[_850]
            mem[t] = mem[_850]
            idx = 0
            s = _850 + 32
            u = t + 32
            while idx < _2009:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _2009) + -mem[64] + 32
        mem[mem[64] + _1560 + 288] = 0
        mem[mem[64] + 32] = ceil32(_1560) + 288
        _1866 = mem[_1466]
        mem[ceil32(_1560) + mem[64] + 288] = mem[_1466]
        idx = 0
        s = _1466 + 32
        t = ceil32(_1560) + mem[64] + (32 * _1866) + 320
        u = ceil32(_1560) + mem[64] + 320
        while idx < _1866:
            mem[u] = t + -ceil32(_1560) + -_1509 - 320
            _1968 = mem[s]
            _1996 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1996:
                mem[v + t + 32] = mem[v + _1968 + 32]
                v = v + 32
                continue 
            if ceil32(_1996) > _1996:
                mem[t + _1996 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1996) + t + 32
            u = u + 32
            continue 
        mem[_1509 + 64] = _1467
        mem[_1509 + 96] = _1468
        mem[_1509 + 128] = _1469
        mem[_1509 + 160] = bool(_1470)
        mem[_1509 + 192] = address(_1471)
        mem[_1509 + 224] = t - _1509
        _2010 = mem[_850]
        mem[t] = mem[_850]
        idx = 0
        s = _850 + 32
        u = t + 32
        while idx < _2010:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _2010) + -mem[64] + 32
    if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
        revert with 0, 34
    mem[384] = stor4[arg1].field_1025 % 128
    if bool(stor4[arg1].field_1024):
        if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor4[arg1].field_1024):
            mem[224] = 384
            mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
            s = ceil32(stor4[arg1].field_1025 % 128) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _568 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_568] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_568 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_568 + 32] = stor4[arg1][idx + 5].field_0
                                t = _568 + 32
                                u = sha3(mem[0])
                                while _568 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _568
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _568
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_568 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _568
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_568 + 32] = stor4[arg1][idx + 5].field_0
                    t = _568 + 32
                    u = sha3(mem[0])
                    while _568 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _568
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _599 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_599] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _599
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_599 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _599
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_599 + 32] = stor4[arg1][idx + 5].field_0
                    t = _599 + 32
                    u = sha3(mem[0])
                    while _599 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _599
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_599 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_599 + 32] = stor4[arg1][idx + 5].field_0
                        t = _599 + 32
                        u = sha3(mem[0])
                        while _599 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _599
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _441 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_441] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _441
                _487 = mem[224]
                _489 = mem[96]
                _490 = mem[128]
                _491 = mem[160]
                _529 = mem[64]
                mem[mem[64]] = 256
                _567 = mem[_487]
                mem[mem[64] + 256] = mem[_487]
                mem[mem[64] + 288 len ceil32(_567)] = mem[_487 + 32 len ceil32(_567)]
                if ceil32(_567) <= _567:
                    mem[mem[64] + 32] = ceil32(_567) + 288
                    _905 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                    mem[ceil32(_567) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                    idx = 0
                    s = ceil32(stor4[arg1].field_1025 % 128) + 448
                    t = ceil32(_567) + mem[64] + (32 * _905) + 320
                    u = ceil32(_567) + mem[64] + 320
                    while idx < _905:
                        mem[u] = t + -ceil32(_567) + -_529 - 320
                        _1179 = mem[s]
                        _1201 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1201:
                            mem[v + t + 32] = mem[v + _1179 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1201) > _1201:
                            mem[t + _1201 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1201) + t + 32
                        u = u + 32
                        continue 
                    mem[_529 + 64] = _489
                    mem[_529 + 96] = _490
                    mem[_529 + 128] = _491
                    mem[_529 + 160] = bool(uint8(stor4[arg1].field_1536))
                    mem[_529 + 192] = address(stor4[arg1].field_1544)
                    mem[_529 + 224] = t - _529
                    _1221 = mem[_441]
                    mem[t] = mem[_441]
                    idx = 0
                    s = _441 + 32
                    u = t + 32
                    while idx < _1221:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1221) + -mem[64] + 32
                mem[mem[64] + _567 + 288] = 0
                mem[mem[64] + 32] = ceil32(_567) + 288
                _917 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[ceil32(_567) + _529 + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                idx = 0
                s = ceil32(stor4[arg1].field_1025 % 128) + 448
                t = ceil32(_567) + _529 + (32 * _917) + 320
                u = ceil32(_567) + _529 + 320
                while idx < _917:
                    mem[u] = t + -ceil32(_567) + -_529 - 320
                    _1180 = mem[s]
                    _1202 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1202:
                        mem[v + t + 32] = mem[v + _1180 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1202) > _1202:
                        mem[t + _1202 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1202) + t + 32
                    u = u + 32
                    continue 
                mem[_529 + 64] = _489
                mem[_529 + 96] = _490
                mem[_529 + 128] = _491
                mem[_529 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_529 + 192] = address(stor4[arg1].field_1544)
                mem[_529 + 224] = t - _529
                _1222 = mem[_441]
                mem[t] = mem[_441]
                idx = 0
                s = _441 + 32
                u = t + 32
                while idx < _1222:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1222) + -mem[64] + 32
            mem[0] = sha3(arg1, 4) + 7
            mem[_441 + 32] = address(stor4[arg1][7].field_0)
            idx = _441 + 32
            s = 0
            while _441 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _441
            _1133 = mem[224]
            _1134 = mem[256]
            _1135 = mem[96]
            _1136 = mem[128]
            _1137 = mem[160]
            _1138 = mem[288]
            _1139 = mem[320]
            _1181 = mem[64]
            mem[mem[64]] = 256
            _1223 = mem[_1133]
            mem[mem[64] + 256] = mem[_1133]
            mem[mem[64] + 288 len ceil32(_1223)] = mem[_1133 + 32 len ceil32(_1223)]
            if ceil32(_1223) <= _1223:
                mem[mem[64] + 32] = ceil32(_1223) + 288
                _1581 = mem[_1134]
                mem[ceil32(_1223) + mem[64] + 288] = mem[_1134]
                idx = 0
                s = _1134 + 32
                t = ceil32(_1223) + mem[64] + (32 * _1581) + 320
                u = ceil32(_1223) + mem[64] + 320
                while idx < _1581:
                    mem[u] = t + -ceil32(_1223) + -_1181 - 320
                    _1791 = mem[s]
                    _1817 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1817:
                        mem[v + t + 32] = mem[v + _1791 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1817) > _1817:
                        mem[t + _1817 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1817) + t + 32
                    u = u + 32
                    continue 
                mem[_1181 + 64] = _1135
                mem[_1181 + 96] = _1136
                mem[_1181 + 128] = _1137
                mem[_1181 + 160] = bool(_1138)
                mem[_1181 + 192] = address(_1139)
                mem[_1181 + 224] = t - _1181
                _1837 = mem[_441]
                mem[t] = mem[_441]
                idx = 0
                s = _441 + 32
                u = t + 32
                while idx < _1837:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1837) + -mem[64] + 32
            mem[mem[64] + _1223 + 288] = 0
            mem[mem[64] + 32] = ceil32(_1223) + 288
            _1597 = mem[_1134]
            mem[ceil32(_1223) + mem[64] + 288] = mem[_1134]
            idx = 0
            s = _1134 + 32
            t = ceil32(_1223) + mem[64] + (32 * _1597) + 320
            u = ceil32(_1223) + mem[64] + 320
            while idx < _1597:
                mem[u] = t + -ceil32(_1223) + -_1181 - 320
                _1792 = mem[s]
                _1818 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1818:
                    mem[v + t + 32] = mem[v + _1792 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1818) > _1818:
                    mem[t + _1818 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1818) + t + 32
                u = u + 32
                continue 
            mem[_1181 + 64] = _1135
            mem[_1181 + 96] = _1136
            mem[_1181 + 128] = _1137
            mem[_1181 + 160] = bool(_1138)
            mem[_1181 + 192] = address(_1139)
            mem[_1181 + 224] = t - _1181
            _1838 = mem[_441]
            mem[t] = mem[_441]
            idx = 0
            s = _441 + 32
            u = t + 32
            while idx < _1838:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1838) + -mem[64] + 32
        if 31 >= uint255(stor4[arg1].field_1024) * 0.5:
            mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
            mem[224] = 384
            mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
            s = ceil32(stor4[arg1].field_1025 % 128) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _579 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_579] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_579 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_579 + 32] = stor4[arg1][idx + 5].field_0
                                t = _579 + 32
                                u = sha3(mem[0])
                                while _579 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _579
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _579
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_579 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _579
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_579 + 32] = stor4[arg1][idx + 5].field_0
                    t = _579 + 32
                    u = sha3(mem[0])
                    while _579 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _579
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _601 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_601] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _601
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_601 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _601
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_601 + 32] = stor4[arg1][idx + 5].field_0
                    t = _601 + 32
                    u = sha3(mem[0])
                    while _601 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _601
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_601 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_601 + 32] = stor4[arg1][idx + 5].field_0
                        t = _601 + 32
                        u = sha3(mem[0])
                        while _601 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _601
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _443 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_443] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _443
                _497 = mem[224]
                _499 = mem[96]
                _500 = mem[128]
                _501 = mem[160]
                _530 = mem[64]
                mem[mem[64]] = 256
                _578 = mem[_497]
                mem[mem[64] + 256] = mem[_497]
                mem[mem[64] + 288 len ceil32(_578)] = mem[_497 + 32 len ceil32(_578)]
                if ceil32(_578) <= _578:
                    mem[mem[64] + 32] = ceil32(_578) + 288
                    _906 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                    mem[ceil32(_578) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                    idx = 0
                    s = ceil32(stor4[arg1].field_1025 % 128) + 448
                    t = ceil32(_578) + mem[64] + (32 * _906) + 320
                    u = ceil32(_578) + mem[64] + 320
                    while idx < _906:
                        mem[u] = t + -ceil32(_578) + -_530 - 320
                        _1183 = mem[s]
                        _1203 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1203:
                            mem[v + t + 32] = mem[v + _1183 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1203) > _1203:
                            mem[t + _1203 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1203) + t + 32
                        u = u + 32
                        continue 
                    mem[_530 + 64] = _499
                    mem[_530 + 96] = _500
                    mem[_530 + 128] = _501
                    mem[_530 + 160] = bool(uint8(stor4[arg1].field_1536))
                    mem[_530 + 192] = address(stor4[arg1].field_1544)
                    mem[_530 + 224] = t - _530
                    _1224 = mem[_443]
                    mem[t] = mem[_443]
                    idx = 0
                    s = _443 + 32
                    u = t + 32
                    while idx < _1224:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len t + (32 * _1224) + -mem[64] + 32
                mem[mem[64] + _578 + 288] = 0
                mem[mem[64] + 32] = ceil32(_578) + 288
                _920 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[ceil32(_578) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                idx = 0
                s = ceil32(stor4[arg1].field_1025 % 128) + 448
                t = ceil32(_578) + mem[64] + (32 * _920) + 320
                u = ceil32(_578) + mem[64] + 320
                while idx < _920:
                    mem[u] = t + -ceil32(_578) + -_530 - 320
                    _1184 = mem[s]
                    _1204 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1204:
                        mem[v + t + 32] = mem[v + _1184 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1204) > _1204:
                        mem[t + _1204 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1204) + t + 32
                    u = u + 32
                    continue 
                mem[_530 + 64] = _499
                mem[_530 + 96] = _500
                mem[_530 + 128] = _501
                mem[_530 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_530 + 192] = address(stor4[arg1].field_1544)
                mem[_530 + 224] = t - _530
                _1225 = mem[_443]
                mem[t] = mem[_443]
                idx = 0
                s = _443 + 32
                u = t + 32
                while idx < _1225:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1225) + -mem[64] + 32
            mem[0] = sha3(arg1, 4) + 7
            mem[_443 + 32] = address(stor4[arg1][7].field_0)
            idx = _443 + 32
            s = 0
            while _443 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _443
            _1141 = mem[224]
            _1142 = mem[256]
            _1143 = mem[96]
            _1144 = mem[128]
            _1145 = mem[160]
            _1146 = mem[288]
            _1147 = mem[320]
            _1185 = mem[64]
            mem[mem[64]] = 256
            _1226 = mem[_1141]
            mem[mem[64] + 256] = mem[_1141]
            mem[mem[64] + 288 len ceil32(_1226)] = mem[_1141 + 32 len ceil32(_1226)]
            if ceil32(_1226) <= _1226:
                mem[mem[64] + 32] = ceil32(_1226) + 288
                _1582 = mem[_1142]
                mem[ceil32(_1226) + mem[64] + 288] = mem[_1142]
                idx = 0
                s = _1142 + 32
                t = ceil32(_1226) + mem[64] + (32 * _1582) + 320
                u = ceil32(_1226) + mem[64] + 320
                while idx < _1582:
                    mem[u] = t + -ceil32(_1226) + -_1185 - 320
                    _1798 = mem[s]
                    _1819 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1819:
                        mem[v + t + 32] = mem[v + _1798 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1819) > _1819:
                        mem[t + _1819 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1819) + t + 32
                    u = u + 32
                    continue 
                mem[_1185 + 64] = _1143
                mem[_1185 + 96] = _1144
                mem[_1185 + 128] = _1145
                mem[_1185 + 160] = bool(_1146)
                mem[_1185 + 192] = address(_1147)
                mem[_1185 + 224] = t - _1185
                _1841 = mem[_443]
                mem[t] = mem[_443]
                idx = 0
                s = _443 + 32
                u = t + 32
                while idx < _1841:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1841) + -mem[64] + 32
            mem[mem[64] + _1226 + 288] = 0
            mem[mem[64] + 32] = ceil32(_1226) + 288
            _1602 = mem[_1142]
            mem[ceil32(_1226) + mem[64] + 288] = mem[_1142]
            idx = 0
            s = _1142 + 32
            t = ceil32(_1226) + mem[64] + (32 * _1602) + 320
            u = ceil32(_1226) + mem[64] + 320
            while idx < _1602:
                mem[u] = t + -ceil32(_1226) + -_1185 - 320
                _1799 = mem[s]
                _1820 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1820:
                    mem[v + t + 32] = mem[v + _1799 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1820) > _1820:
                    mem[t + _1820 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1820) + t + 32
                u = u + 32
                continue 
            mem[_1185 + 64] = _1143
            mem[_1185 + 96] = _1144
            mem[_1185 + 128] = _1145
            mem[_1185 + 160] = bool(_1146)
            mem[_1185 + 192] = address(_1147)
            mem[_1185 + 224] = t - _1185
            _1842 = mem[_443]
            mem[t] = mem[_443]
            idx = 0
            s = _443 + 32
            u = t + 32
            while idx < _1842:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1842) + -mem[64] + 32
        mem[0] = sha3(arg1, 4) + 4
        mem[416] = stor4[arg1][4].field_0
        idx = 416
        s = 0
        while (uint255(stor4[arg1].field_1024) * 0.5) + 384 > idx:
            mem[idx + 32] = stor4[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[224] = 384
        mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
        mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
        s = ceil32(stor4[arg1].field_1025 % 128) + 448
        idx = 0
        while idx < stor4[arg1].field_1280:
            mem[0] = sha3(arg1, 4) + 5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                _919 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                mem[_919] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_919 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_919 + 32] = stor4[arg1][idx + 5].field_0
                            t = _919 + 32
                            u = sha3(mem[0])
                            while _919 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _919
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[arg1][idx + 5].field_1 % 128:
                    mem[s] = _919
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_919 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _919
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_919 + 32] = stor4[arg1][idx + 5].field_0
                t = _919 + 32
                u = sha3(mem[0])
                while _919 + stor4[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _919
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _932 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
            mem[_932] = stor4[arg1][idx + 5].field_1 % 128
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    mem[s] = _932
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                    mem[_932 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _932
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_932 + 32] = stor4[arg1][idx + 5].field_0
                t = _932 + 32
                u = sha3(mem[0])
                while _932 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _932
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][idx + 5].field_1 % 128:
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_932 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_932 + 32] = stor4[arg1][idx + 5].field_0
                    t = _932 + 32
                    u = sha3(mem[0])
                    while _932 + stor4[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _932
            s = s + 32
            idx = idx + 1
            continue 
        mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
        mem[288] = bool(uint8(stor4[arg1].field_1536))
        mem[320] = address(stor4[arg1].field_1544)
        _854 = mem[64]
        mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
        mem[_854] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[352] = _854
            _879 = mem[224]
            _881 = mem[96]
            _882 = mem[128]
            _883 = mem[160]
            _899 = mem[64]
            mem[mem[64]] = 256
            _918 = mem[_879]
            mem[mem[64] + 256] = mem[_879]
            mem[mem[64] + 288 len ceil32(_918)] = mem[_879 + 32 len ceil32(_918)]
            if ceil32(_918) <= _918:
                mem[mem[64] + 32] = ceil32(_918) + 288
                _1235 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[ceil32(_918) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                idx = 0
                s = ceil32(stor4[arg1].field_1025 % 128) + 448
                t = ceil32(_918) + mem[64] + (32 * _1235) + 320
                u = ceil32(_918) + mem[64] + 320
                while idx < _1235:
                    mem[u] = t + -ceil32(_918) + -_899 - 320
                    _1520 = mem[s]
                    _1545 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1545:
                        mem[v + t + 32] = mem[v + _1520 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1545) > _1545:
                        mem[t + _1545 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1545) + t + 32
                    u = u + 32
                    continue 
                mem[_899 + 64] = _881
                mem[_899 + 96] = _882
                mem[_899 + 128] = _883
                mem[_899 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_899 + 192] = address(stor4[arg1].field_1544)
                mem[_899 + 224] = t - _899
                _1565 = mem[_854]
                mem[t] = mem[_854]
                idx = 0
                s = _854 + 32
                u = t + 32
                while idx < _1565:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1565) + -mem[64] + 32
            mem[mem[64] + _918 + 288] = 0
            mem[mem[64] + 32] = ceil32(_918) + 288
            _1259 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            mem[ceil32(_918) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            idx = 0
            s = ceil32(stor4[arg1].field_1025 % 128) + 448
            t = ceil32(_918) + mem[64] + (32 * _1259) + 320
            u = ceil32(_918) + mem[64] + 320
            while idx < _1259:
                mem[u] = t + -ceil32(_918) + -_899 - 320
                _1521 = mem[s]
                _1546 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1546:
                    mem[v + t + 32] = mem[v + _1521 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1546) > _1546:
                    mem[t + _1546 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1546) + t + 32
                u = u + 32
                continue 
            mem[_899 + 64] = _881
            mem[_899 + 96] = _882
            mem[_899 + 128] = _883
            mem[_899 + 160] = bool(uint8(stor4[arg1].field_1536))
            mem[_899 + 192] = address(stor4[arg1].field_1544)
            mem[_899 + 224] = t - _899
            _1566 = mem[_854]
            mem[t] = mem[_854]
            idx = 0
            s = _854 + 32
            u = t + 32
            while idx < _1566:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1566) + -mem[64] + 32
        mem[0] = sha3(arg1, 4) + 7
        mem[_854 + 32] = address(stor4[arg1][7].field_0)
        idx = _854 + 32
        s = 0
        while _854 + (32 * stor4[arg1].field_1792) > idx:
            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[352] = _854
        _1473 = mem[224]
        _1474 = mem[256]
        _1475 = mem[96]
        _1476 = mem[128]
        _1477 = mem[160]
        _1478 = mem[288]
        _1479 = mem[320]
        _1522 = mem[64]
        mem[mem[64]] = 256
        _1567 = mem[_1473]
        mem[mem[64] + 256] = mem[_1473]
        mem[mem[64] + 288 len ceil32(_1567)] = mem[_1473 + 32 len ceil32(_1567)]
        var38001 = ceil32(_1567)
        if ceil32(_1567) <= _1567:
            mem[mem[64] + 32] = ceil32(_1567) + 288
            _1851 = mem[_1474]
            mem[ceil32(_1567) + mem[64] + 288] = mem[_1474]
            idx = 0
            s = _1474 + 32
            t = ceil32(_1567) + mem[64] + (32 * _1851) + 320
            u = ceil32(_1567) + mem[64] + 320
            while idx < _1851:
                mem[u] = t + -ceil32(_1567) + -_1522 - 320
                _1977 = mem[s]
                _1997 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1997:
                    mem[v + t + 32] = mem[v + _1977 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1997) > _1997:
                    mem[t + _1997 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1997) + t + 32
                u = u + 32
                continue 
            mem[_1522 + 64] = _1475
            mem[_1522 + 96] = _1476
            mem[_1522 + 128] = _1477
            mem[_1522 + 160] = bool(_1478)
            mem[_1522 + 192] = address(_1479)
            mem[_1522 + 224] = t - _1522
            _2015 = mem[_854]
            mem[t] = mem[_854]
            idx = 0
            s = _854 + 32
            u = t + 32
            while idx < _2015:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _2015) + -mem[64] + 32
        mem[mem[64] + _1567 + 288] = 0
        mem[mem[64] + 32] = ceil32(_1567) + 288
        _1875 = mem[_1474]
        mem[ceil32(_1567) + _1522 + 288] = mem[_1474]
        idx = 0
        s = _1474 + 32
        t = ceil32(_1567) + _1522 + (32 * _1875) + 320
        u = ceil32(_1567) + _1522 + 320
        while idx < _1875:
            mem[u] = t + -ceil32(_1567) + -_1522 - 320
            _1978 = mem[s]
            _1998 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1998:
                mem[v + t + 32] = mem[v + _1978 + 32]
                v = v + 32
                continue 
            if ceil32(_1998) > _1998:
                mem[t + _1998 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1998) + t + 32
            u = u + 32
            continue 
        mem[_1522 + 64] = _1475
        mem[_1522 + 96] = _1476
        mem[_1522 + 128] = _1477
        mem[_1522 + 160] = bool(_1478)
        mem[_1522 + 192] = address(_1479)
        mem[_1522 + 224] = t - _1522
        _2016 = mem[_854]
        mem[t] = mem[_854]
        idx = 0
        s = _854 + 32
        u = t + 32
        while idx < _2016:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _2016) + -mem[64] + 32
    if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
        revert with 0, 34
    if not stor4[arg1].field_1025 % 128:
        mem[224] = 384
        mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
        mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
        s = ceil32(stor4[arg1].field_1025 % 128) + 448
        idx = 0
        while idx < stor4[arg1].field_1280:
            mem[0] = sha3(arg1, 4) + 5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                _581 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                mem[_581] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_581 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_581 + 32] = stor4[arg1][idx + 5].field_0
                            t = _581 + 32
                            u = sha3(mem[0])
                            while _581 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _581
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[arg1][idx + 5].field_1 % 128:
                    mem[s] = _581
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_581 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _581
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_581 + 32] = stor4[arg1][idx + 5].field_0
                t = _581 + 32
                u = sha3(mem[0])
                while _581 + stor4[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _581
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _602 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
            mem[_602] = stor4[arg1][idx + 5].field_1 % 128
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    mem[s] = _602
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                    mem[_602 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _602
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_602 + 32] = stor4[arg1][idx + 5].field_0
                t = _602 + 32
                u = sha3(mem[0])
                while _602 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _602
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][idx + 5].field_1 % 128:
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_602 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_602 + 32] = stor4[arg1][idx + 5].field_0
                    t = _602 + 32
                    u = sha3(mem[0])
                    while _602 + stor4[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _602
            s = s + 32
            idx = idx + 1
            continue 
        mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
        mem[288] = bool(uint8(stor4[arg1].field_1536))
        mem[320] = address(stor4[arg1].field_1544)
        _445 = mem[64]
        mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
        mem[_445] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[352] = _445
            _506 = mem[224]
            _508 = mem[96]
            _509 = mem[128]
            _510 = mem[160]
            _531 = mem[64]
            mem[mem[64]] = 256
            _580 = mem[_506]
            mem[mem[64] + 256] = mem[_506]
            mem[mem[64] + 288 len ceil32(_580)] = mem[_506 + 32 len ceil32(_580)]
            if ceil32(_580) <= _580:
                mem[mem[64] + 32] = ceil32(_580) + 288
                _907 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[ceil32(_580) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                idx = 0
                s = ceil32(stor4[arg1].field_1025 % 128) + 448
                t = ceil32(_580) + mem[64] + (32 * _907) + 320
                u = ceil32(_580) + mem[64] + 320
                while idx < _907:
                    mem[u] = t + -ceil32(_580) + -_531 - 320
                    _1186 = mem[s]
                    _1205 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1205:
                        mem[v + t + 32] = mem[v + _1186 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1205) > _1205:
                        mem[t + _1205 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1205) + t + 32
                    u = u + 32
                    continue 
                mem[_531 + 64] = _508
                mem[_531 + 96] = _509
                mem[_531 + 128] = _510
                mem[_531 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_531 + 192] = address(stor4[arg1].field_1544)
                mem[_531 + 224] = t - _531
                _1227 = mem[_445]
                mem[t] = mem[_445]
                idx = 0
                s = _445 + 32
                u = t + 32
                while idx < _1227:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1227) + -mem[64] + 32
            mem[mem[64] + _580 + 288] = 0
            mem[mem[64] + 32] = ceil32(_580) + 288
            _921 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            mem[ceil32(_580) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            idx = 0
            s = ceil32(stor4[arg1].field_1025 % 128) + 448
            t = ceil32(_580) + mem[64] + (32 * _921) + 320
            u = ceil32(_580) + mem[64] + 320
            while idx < _921:
                mem[u] = t + -ceil32(_580) + -_531 - 320
                _1187 = mem[s]
                _1206 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1206:
                    mem[v + t + 32] = mem[v + _1187 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1206) > _1206:
                    mem[t + _1206 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1206) + t + 32
                u = u + 32
                continue 
            mem[_531 + 64] = _508
            mem[_531 + 96] = _509
            mem[_531 + 128] = _510
            mem[_531 + 160] = bool(uint8(stor4[arg1].field_1536))
            mem[_531 + 192] = address(stor4[arg1].field_1544)
            mem[_531 + 224] = t - _531
            _1228 = mem[_445]
            mem[t] = mem[_445]
            idx = 0
            s = _445 + 32
            u = t + 32
            while idx < _1228:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1228) + -mem[64] + 32
        mem[0] = sha3(arg1, 4) + 7
        mem[_445 + 32] = address(stor4[arg1][7].field_0)
        idx = _445 + 32
        s = 0
        while _445 + (32 * stor4[arg1].field_1792) > idx:
            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[352] = _445
        _1149 = mem[224]
        _1150 = mem[256]
        _1151 = mem[96]
        _1152 = mem[128]
        _1153 = mem[160]
        _1154 = mem[288]
        _1155 = mem[320]
        _1188 = mem[64]
        mem[mem[64]] = 256
        _1229 = mem[_1149]
        mem[mem[64] + 256] = mem[_1149]
        mem[mem[64] + 288 len ceil32(_1229)] = mem[_1149 + 32 len ceil32(_1229)]
        if ceil32(_1229) <= _1229:
            mem[mem[64] + 32] = ceil32(_1229) + 288
            _1583 = mem[_1150]
            mem[ceil32(_1229) + mem[64] + 288] = mem[_1150]
            idx = 0
            s = _1150 + 32
            t = ceil32(_1229) + mem[64] + (32 * _1583) + 320
            u = ceil32(_1229) + mem[64] + 320
            while idx < _1583:
                mem[u] = t + -ceil32(_1229) + -_1188 - 320
                _1800 = mem[s]
                _1821 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1821:
                    mem[v + t + 32] = mem[v + _1800 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1821) > _1821:
                    mem[t + _1821 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1821) + t + 32
                u = u + 32
                continue 
            mem[_1188 + 64] = _1151
            mem[_1188 + 96] = _1152
            mem[_1188 + 128] = _1153
            mem[_1188 + 160] = bool(_1154)
            mem[_1188 + 192] = address(_1155)
            mem[_1188 + 224] = t - _1188
            _1843 = mem[_445]
            mem[t] = mem[_445]
            idx = 0
            s = _445 + 32
            u = t + 32
            while idx < _1843:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1843) + -mem[64] + 32
        mem[mem[64] + _1229 + 288] = 0
        mem[mem[64] + 32] = ceil32(_1229) + 288
        _1603 = mem[_1150]
        mem[ceil32(_1229) + _1188 + 288] = mem[_1150]
        idx = 0
        s = _1150 + 32
        t = ceil32(_1229) + _1188 + (32 * _1603) + 320
        u = ceil32(_1229) + _1188 + 320
        while idx < _1603:
            mem[u] = t + -ceil32(_1229) + -_1188 - 320
            _1801 = mem[s]
            _1822 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1822:
                mem[v + t + 32] = mem[v + _1801 + 32]
                v = v + 32
                continue 
            if ceil32(_1822) > _1822:
                mem[t + _1822 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1822) + t + 32
            u = u + 32
            continue 
        mem[_1188 + 64] = _1151
        mem[_1188 + 96] = _1152
        mem[_1188 + 128] = _1153
        mem[_1188 + 160] = bool(_1154)
        mem[_1188 + 192] = address(_1155)
        mem[_1188 + 224] = t - _1188
        _1844 = mem[_445]
        mem[t] = mem[_445]
        idx = 0
        s = _445 + 32
        u = t + 32
        while idx < _1844:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _1844) + -mem[64] + 32
    if 31 >= stor4[arg1].field_1025 % 128:
        mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
        mem[224] = 384
        mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
        mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
        s = ceil32(stor4[arg1].field_1025 % 128) + 448
        idx = 0
        while idx < stor4[arg1].field_1280:
            mem[0] = sha3(arg1, 4) + 5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                mem[_592] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_592 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_592 + 32] = stor4[arg1][idx + 5].field_0
                            t = _592 + 32
                            u = sha3(mem[0])
                            while _592 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _592
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[arg1][idx + 5].field_1 % 128:
                    mem[s] = _592
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_592 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _592
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_592 + 32] = stor4[arg1][idx + 5].field_0
                t = _592 + 32
                u = sha3(mem[0])
                while _592 + stor4[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _592
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
            mem[_604] = stor4[arg1][idx + 5].field_1 % 128
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    mem[s] = _604
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                    mem[_604 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _604
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_604 + 32] = stor4[arg1][idx + 5].field_0
                t = _604 + 32
                u = sha3(mem[0])
                while _604 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _604
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][idx + 5].field_1 % 128:
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_604 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_604 + 32] = stor4[arg1][idx + 5].field_0
                    t = _604 + 32
                    u = sha3(mem[0])
                    while _604 + stor4[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _604
            s = s + 32
            idx = idx + 1
            continue 
        mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
        mem[288] = bool(uint8(stor4[arg1].field_1536))
        mem[320] = address(stor4[arg1].field_1544)
        _447 = mem[64]
        mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
        mem[_447] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[352] = _447
            _516 = mem[224]
            _518 = mem[96]
            _519 = mem[128]
            _520 = mem[160]
            _532 = mem[64]
            mem[mem[64]] = 256
            _591 = mem[_516]
            mem[mem[64] + 256] = mem[_516]
            mem[mem[64] + 288 len ceil32(_591)] = mem[_516 + 32 len ceil32(_591)]
            if ceil32(_591) <= _591:
                mem[mem[64] + 32] = ceil32(_591) + 288
                _908 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[ceil32(_591) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                idx = 0
                s = ceil32(stor4[arg1].field_1025 % 128) + 448
                t = ceil32(_591) + mem[64] + (32 * _908) + 320
                u = ceil32(_591) + mem[64] + 320
                while idx < _908:
                    mem[u] = t + -ceil32(_591) + -_532 - 320
                    _1190 = mem[s]
                    _1207 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1207:
                        mem[v + t + 32] = mem[v + _1190 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1207) > _1207:
                        mem[t + _1207 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1207) + t + 32
                    u = u + 32
                    continue 
                mem[_532 + 64] = _518
                mem[_532 + 96] = _519
                mem[_532 + 128] = _520
                mem[_532 + 160] = bool(uint8(stor4[arg1].field_1536))
                mem[_532 + 192] = address(stor4[arg1].field_1544)
                mem[_532 + 224] = t - _532
                _1230 = mem[_447]
                mem[t] = mem[_447]
                idx = 0
                s = _447 + 32
                u = t + 32
                while idx < _1230:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len t + (32 * _1230) + -mem[64] + 32
            mem[mem[64] + _591 + 288] = 0
            mem[mem[64] + 32] = ceil32(_591) + 288
            _924 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            mem[ceil32(_591) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            idx = 0
            s = ceil32(stor4[arg1].field_1025 % 128) + 448
            t = ceil32(_591) + mem[64] + (32 * _924) + 320
            u = ceil32(_591) + mem[64] + 320
            while idx < _924:
                mem[u] = t + -ceil32(_591) + -_532 - 320
                _1191 = mem[s]
                _1208 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1208:
                    mem[v + t + 32] = mem[v + _1191 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1208) > _1208:
                    mem[t + _1208 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1208) + t + 32
                u = u + 32
                continue 
            mem[_532 + 64] = _518
            mem[_532 + 96] = _519
            mem[_532 + 128] = _520
            mem[_532 + 160] = bool(uint8(stor4[arg1].field_1536))
            mem[_532 + 192] = address(stor4[arg1].field_1544)
            mem[_532 + 224] = t - _532
            _1231 = mem[_447]
            mem[t] = mem[_447]
            idx = 0
            s = _447 + 32
            u = t + 32
            while idx < _1231:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1231) + -mem[64] + 32
        mem[0] = sha3(arg1, 4) + 7
        mem[_447 + 32] = address(stor4[arg1][7].field_0)
        idx = _447 + 32
        s = 0
        while _447 + (32 * stor4[arg1].field_1792) > idx:
            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[352] = _447
        _1157 = mem[224]
        _1158 = mem[256]
        _1159 = mem[96]
        _1160 = mem[128]
        _1161 = mem[160]
        _1162 = mem[288]
        _1163 = mem[320]
        _1192 = mem[64]
        mem[mem[64]] = 256
        _1232 = mem[_1157]
        mem[mem[64] + 256] = mem[_1157]
        mem[mem[64] + 288 len ceil32(_1232)] = mem[_1157 + 32 len ceil32(_1232)]
        if ceil32(_1232) <= _1232:
            mem[mem[64] + 32] = ceil32(_1232) + 288
            _1584 = mem[_1158]
            mem[ceil32(_1232) + mem[64] + 288] = mem[_1158]
            idx = 0
            s = _1158 + 32
            t = ceil32(_1232) + mem[64] + (32 * _1584) + 320
            u = ceil32(_1232) + mem[64] + 320
            while idx < _1584:
                mem[u] = t + -ceil32(_1232) + -_1192 - 320
                _1807 = mem[s]
                _1823 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1823:
                    mem[v + t + 32] = mem[v + _1807 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1823) > _1823:
                    mem[t + _1823 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1823) + t + 32
                u = u + 32
                continue 
            mem[_1192 + 64] = _1159
            mem[_1192 + 96] = _1160
            mem[_1192 + 128] = _1161
            mem[_1192 + 160] = bool(_1162)
            mem[_1192 + 192] = address(_1163)
            mem[_1192 + 224] = t - _1192
            _1847 = mem[_447]
            mem[t] = mem[_447]
            idx = 0
            s = _447 + 32
            u = t + 32
            while idx < _1847:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1847) + -mem[64] + 32
        mem[mem[64] + _1232 + 288] = 0
        mem[mem[64] + 32] = ceil32(_1232) + 288
        _1608 = mem[_1158]
        mem[ceil32(_1232) + mem[64] + 288] = mem[_1158]
        idx = 0
        s = _1158 + 32
        t = ceil32(_1232) + mem[64] + (32 * _1608) + 320
        u = ceil32(_1232) + mem[64] + 320
        while idx < _1608:
            mem[u] = t + -ceil32(_1232) + -_1192 - 320
            _1808 = mem[s]
            _1824 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1824:
                mem[v + t + 32] = mem[v + _1808 + 32]
                v = v + 32
                continue 
            if ceil32(_1824) > _1824:
                mem[t + _1824 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1824) + t + 32
            u = u + 32
            continue 
        mem[_1192 + 64] = _1159
        mem[_1192 + 96] = _1160
        mem[_1192 + 128] = _1161
        mem[_1192 + 160] = bool(_1162)
        mem[_1192 + 192] = address(_1163)
        mem[_1192 + 224] = t - _1192
        _1848 = mem[_447]
        mem[t] = mem[_447]
        idx = 0
        s = _447 + 32
        u = t + 32
        while idx < _1848:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _1848) + -mem[64] + 32
    mem[0] = sha3(arg1, 4) + 4
    mem[416] = stor4[arg1][4].field_0
    idx = 416
    s = 0
    while stor4[arg1].field_1025 % 128 + 384 > idx:
        mem[idx + 32] = stor4[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[224] = 384
    mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
    mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
    s = ceil32(stor4[arg1].field_1025 % 128) + 448
    idx = 0
    while idx < stor4[arg1].field_1280:
        mem[0] = sha3(arg1, 4) + 5
        if bool(stor4[arg1][idx + 5].field_0):
            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                revert with 0, 34
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
            mem[_923] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_923 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_923 + 32] = stor4[arg1][idx + 5].field_0
                        t = _923 + 32
                        u = sha3(mem[0])
                        while _923 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _923
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if not stor4[arg1][idx + 5].field_1 % 128:
                mem[s] = _923
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                mem[_923 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                mem[s] = _923
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
            mem[_923 + 32] = stor4[arg1][idx + 5].field_0
            t = _923 + 32
            u = sha3(mem[0])
            while _923 + stor4[arg1][u + 5].field_1 % 128 > t:
                mem[t + 32] = roleAdmin[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _923
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
            revert with 0, 34
        _935 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
        mem[_935] = stor4[arg1][idx + 5].field_1 % 128
        if bool(stor4[arg1][idx + 5].field_0):
            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                mem[s] = _935
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                mem[_935 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                mem[s] = _935
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
            mem[_935 + 32] = stor4[arg1][idx + 5].field_0
            t = _935 + 32
            u = sha3(mem[0])
            while _935 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                mem[t + 32] = roleAdmin[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _935
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[arg1][idx + 5].field_1 % 128:
            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                mem[_935 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
            else:
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_935 + 32] = stor4[arg1][idx + 5].field_0
                t = _935 + 32
                u = sha3(mem[0])
                while _935 + stor4[arg1][idx + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _935
        s = s + 32
        idx = idx + 1
        continue 
    mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
    mem[288] = bool(uint8(stor4[arg1].field_1536))
    mem[320] = address(stor4[arg1].field_1544)
    _858 = mem[64]
    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
    mem[_858] = stor4[arg1].field_1792
    if not stor4[arg1].field_1792:
        mem[352] = _858
        _888 = mem[224]
        _890 = mem[96]
        _891 = mem[128]
        _892 = mem[160]
        _900 = mem[64]
        mem[mem[64]] = 256
        _922 = mem[_888]
        mem[mem[64] + 256] = mem[_888]
        mem[mem[64] + 288 len ceil32(_922)] = mem[_888 + 32 len ceil32(_922)]
        if ceil32(_922) <= _922:
            mem[mem[64] + 32] = ceil32(_922) + 288
            _1236 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            mem[ceil32(_922) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            idx = 0
            s = ceil32(stor4[arg1].field_1025 % 128) + 448
            t = ceil32(_922) + mem[64] + (32 * _1236) + 320
            u = ceil32(_922) + mem[64] + 320
            while idx < _1236:
                mem[u] = t + -ceil32(_922) + -_900 - 320
                _1533 = mem[s]
                _1547 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1547:
                    mem[v + t + 32] = mem[v + _1533 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1547) > _1547:
                    mem[t + _1547 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1547) + t + 32
                u = u + 32
                continue 
            mem[_900 + 64] = _890
            mem[_900 + 96] = _891
            mem[_900 + 128] = _892
            mem[_900 + 160] = bool(uint8(stor4[arg1].field_1536))
            mem[_900 + 192] = address(stor4[arg1].field_1544)
            mem[_900 + 224] = t - _900
            _1572 = mem[_858]
            mem[t] = mem[_858]
            idx = 0
            s = _858 + 32
            u = t + 32
            while idx < _1572:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _1572) + -mem[64] + 32
        mem[mem[64] + _922 + 288] = 0
        mem[mem[64] + 32] = ceil32(_922) + 288
        _1268 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
        mem[ceil32(_922) + mem[64] + 288] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
        idx = 0
        s = ceil32(stor4[arg1].field_1025 % 128) + 448
        t = ceil32(_922) + mem[64] + (32 * _1268) + 320
        u = ceil32(_922) + mem[64] + 320
        while idx < _1268:
            mem[u] = t + -ceil32(_922) + -_900 - 320
            _1534 = mem[s]
            _1548 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1548:
                mem[v + t + 32] = mem[v + _1534 + 32]
                v = v + 32
                continue 
            if ceil32(_1548) > _1548:
                mem[t + _1548 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1548) + t + 32
            u = u + 32
            continue 
        mem[_900 + 64] = _890
        mem[_900 + 96] = _891
        mem[_900 + 128] = _892
        mem[_900 + 160] = bool(uint8(stor4[arg1].field_1536))
        mem[_900 + 192] = address(stor4[arg1].field_1544)
        mem[_900 + 224] = t - _900
        _1573 = mem[_858]
        mem[t] = mem[_858]
        idx = 0
        s = _858 + 32
        u = t + 32
        while idx < _1573:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _1573) + -mem[64] + 32
    mem[0] = sha3(arg1, 4) + 7
    mem[_858 + 32] = address(stor4[arg1][7].field_0)
    idx = _858 + 32
    s = 0
    while _858 + (32 * stor4[arg1].field_1792) > idx:
        mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[352] = _858
    _1481 = mem[224]
    _1482 = mem[256]
    _1483 = mem[96]
    _1484 = mem[128]
    _1485 = mem[160]
    _1486 = mem[288]
    _1487 = mem[320]
    _1535 = mem[64]
    mem[mem[64]] = 256
    _1574 = mem[_1481]
    mem[mem[64] + 256] = mem[_1481]
    mem[mem[64] + 288 len ceil32(_1574)] = mem[_1481 + 32 len ceil32(_1574)]
    var39001 = ceil32(_1574)
    if ceil32(_1574) <= _1574:
        mem[mem[64] + 32] = ceil32(_1574) + 288
        _1852 = mem[_1482]
        mem[ceil32(_1574) + mem[64] + 288] = mem[_1482]
        idx = 0
        s = _1482 + 32
        t = ceil32(_1574) + mem[64] + (32 * _1852) + 320
        u = ceil32(_1574) + mem[64] + 320
        while idx < _1852:
            mem[u] = t + -ceil32(_1574) + -_1535 - 320
            _1987 = mem[s]
            _1999 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1999:
                mem[v + t + 32] = mem[v + _1987 + 32]
                v = v + 32
                continue 
            if ceil32(_1999) > _1999:
                mem[t + _1999 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1999) + t + 32
            u = u + 32
            continue 
        mem[_1535 + 64] = _1483
        mem[_1535 + 96] = _1484
        mem[_1535 + 128] = _1485
        mem[_1535 + 160] = bool(_1486)
        mem[_1535 + 192] = address(_1487)
        mem[_1535 + 224] = t - _1535
        _2021 = mem[_858]
        mem[t] = mem[_858]
        idx = 0
        s = _858 + 32
        u = t + 32
        while idx < _2021:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _2021) + -mem[64] + 32
    mem[mem[64] + _1574 + 288] = 0
    mem[mem[64] + 32] = ceil32(_1574) + 288
    _1884 = mem[_1482]
    mem[ceil32(_1574) + mem[64] + 288] = mem[_1482]
    idx = 0
    s = _1482 + 32
    t = ceil32(_1574) + mem[64] + (32 * _1884) + 320
    u = ceil32(_1574) + mem[64] + 320
    while idx < _1884:
        mem[u] = t + -ceil32(_1574) + -_1535 - 320
        _1988 = mem[s]
        _2000 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _2000:
            mem[v + t + 32] = mem[v + _1988 + 32]
            v = v + 32
            continue 
        if ceil32(_2000) > _2000:
            mem[t + _2000 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_2000) + t + 32
        u = u + 32
        continue 
    mem[_1535 + 64] = _1483
    mem[_1535 + 96] = _1484
    mem[_1535 + 128] = _1485
    mem[_1535 + 160] = bool(_1486)
    mem[_1535 + 192] = address(_1487)
    mem[_1535 + 224] = t - _1535
    _2022 = mem[_858]
    mem[t] = mem[_858]
    idx = 0
    s = _858 + 32
    u = t + 32
    while idx < _2022:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t + (32 * _2022) + -mem[64] + 32
}

function sub_5825432d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if arg1 > sub_0c1bc91c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#getWeight: ACCOUNT_INVALID'
    mem[0] = arg1
    mem[32] = 4
    mem[96] = stor4[arg1].field_0
    mem[128] = stor4[arg1].field_256
    mem[160] = stor4[arg1].field_512
    mem[192] = stor4[arg1].field_768
    if bool(stor4[arg1].field_1024):
        if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        mem[384] = uint255(stor4[arg1].field_1024) * 0.5
        if bool(stor4[arg1].field_1024):
            if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[arg1].field_1024):
                mem[224] = 384
                mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                idx = 0
                while idx < stor4[arg1].field_1280:
                    mem[0] = sha3(arg1, 4) + 5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _483 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                        mem[_483] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                    mem[_483 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    mem[_483 + 32] = stor4[arg1][idx + 5].field_0
                                    t = _483 + 32
                                    u = sha3(mem[0])
                                    while _483 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                        mem[t + 32] = roleAdmin[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _483
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[arg1][idx + 5].field_1 % 128:
                            mem[s] = _483
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_483 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _483
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_483 + 32] = stor4[arg1][idx + 5].field_0
                        t = _483 + 32
                        u = sha3(mem[0])
                        while _483 + stor4[arg1][u + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _483
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    _503 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                    mem[_503] = stor4[arg1][idx + 5].field_1 % 128
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            mem[s] = _503
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_503 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _503
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_503 + 32] = stor4[arg1][idx + 5].field_0
                        t = _503 + 32
                        u = sha3(mem[0])
                        while _503 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _503
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor4[arg1][idx + 5].field_1 % 128:
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_503 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_503 + 32] = stor4[arg1][idx + 5].field_0
                            t = _503 + 32
                            u = sha3(mem[0])
                            while _503 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _503
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                mem[288] = bool(uint8(stor4[arg1].field_1536))
                mem[320] = address(stor4[arg1].field_1544)
                _423 = mem[64]
                mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                mem[_423] = stor4[arg1].field_1792
                if not stor4[arg1].field_1792:
                    mem[352] = _423
                    if uint8(stor4[arg1].field_1536):
                        revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(stor3[idx])
                        call stor3[idx].getStakeTokenIds(address rg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _883 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _899 = mem[_883]
                        require mem[_883] <= test266151307()
                        require _883 + return_data.size > _883 + mem[_883] + 31
                        _931 = mem[_883 + mem[_883]]
                        if mem[_883 + mem[_883]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_883 + mem[_883]]) + 1 < 0 or _883 + ceil32(return_data.size) + ceil32(32 * mem[_883 + mem[_883]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _883 + ceil32(return_data.size) + ceil32(32 * mem[_883 + mem[_883]]) + 1
                        mem[_883 + ceil32(return_data.size)] = _931
                        require _899 + (32 * _931) + 32 <= return_data.size
                        t = _883 + _899 + 32
                        u = _883 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _931:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        s = 0
                        t = 0
                        while s < _931:
                            if s >= mem[_883 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeInfo(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(32 * s) + _883 + ceil32(return_data.size) + 32]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1623 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if mem[160] and 24 * 3600 > -1 / mem[160]:
                                revert with 0, 17
                            if mem[96] < 24 * 3600 * mem[160]:
                                revert with 0, 17
                            if mem[_1623 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if t > !mem[_1623]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_1623]
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = sha3(arg1, 4) + 7
                    mem[_423 + 32] = address(stor4[arg1][7].field_0)
                    idx = _423 + 32
                    s = 0
                    while _423 + (32 * stor4[arg1].field_1792) > idx:
                        mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[352] = _423
                    if mem[288]:
                        revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(stor3[idx])
                        call stor3[idx].getStakeTokenIds(address rg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1595 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1643 = mem[_1595]
                        require mem[_1595] <= test266151307()
                        require _1595 + return_data.size > _1595 + mem[_1595] + 31
                        _1684 = mem[_1595 + mem[_1595]]
                        if mem[_1595 + mem[_1595]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1595 + mem[_1595]]) + 1 < 0 or _1595 + ceil32(return_data.size) + ceil32(32 * mem[_1595 + mem[_1595]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1595 + ceil32(return_data.size) + ceil32(32 * mem[_1595 + mem[_1595]]) + 1
                        mem[_1595 + ceil32(return_data.size)] = _1684
                        require _1643 + (32 * _1684) + 32 <= return_data.size
                        t = _1595 + _1643 + 32
                        u = _1595 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1684:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        s = 0
                        t = 0
                        while s < _1684:
                            if s >= mem[_1595 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeInfo(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(32 * s) + _1595 + ceil32(return_data.size) + 32]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2171 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if mem[160] and 24 * 3600 > -1 / mem[160]:
                                revert with 0, 17
                            if mem[96] < 24 * 3600 * mem[160]:
                                revert with 0, 17
                            if mem[_2171 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if t > !mem[_2171]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_2171]
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if 31 >= uint255(stor4[arg1].field_1024) * 0.5:
                    mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
                    mem[224] = 384
                    mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                    mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    idx = 0
                    while idx < stor4[arg1].field_1280:
                        mem[0] = sha3(arg1, 4) + 5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            _486 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                            mem[_486] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                            if bool(stor4[arg1][idx + 5].field_0):
                                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                        mem[_486 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        mem[_486 + 32] = stor4[arg1][idx + 5].field_0
                                        t = _486 + 32
                                        u = sha3(mem[0])
                                        while _486 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                            mem[t + 32] = roleAdmin[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _486
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor4[arg1][idx + 5].field_1 % 128:
                                mem[s] = _486
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_486 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _486
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_486 + 32] = stor4[arg1][idx + 5].field_0
                            t = _486 + 32
                            u = sha3(mem[0])
                            while _486 + stor4[arg1][u + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _486
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        _509 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                        mem[_509] = stor4[arg1][idx + 5].field_1 % 128
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                mem[s] = _509
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_509 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _509
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_509 + 32] = stor4[arg1][idx + 5].field_0
                            t = _509 + 32
                            u = sha3(mem[0])
                            while _509 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _509
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor4[arg1][idx + 5].field_1 % 128:
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_509 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_509 + 32] = stor4[arg1][idx + 5].field_0
                                t = _509 + 32
                                u = sha3(mem[0])
                                while _509 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _509
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                    mem[288] = bool(uint8(stor4[arg1].field_1536))
                    mem[320] = address(stor4[arg1].field_1544)
                    _425 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                    mem[_425] = stor4[arg1].field_1792
                    if not stor4[arg1].field_1792:
                        mem[352] = _425
                        if uint8(stor4[arg1].field_1536):
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _885 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _905 = mem[_885]
                            require mem[_885] <= test266151307()
                            require _885 + return_data.size > _885 + mem[_885] + 31
                            _933 = mem[_885 + mem[_885]]
                            if mem[_885 + mem[_885]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_885 + mem[_885]]) + 1 < 0 or _885 + ceil32(return_data.size) + ceil32(32 * mem[_885 + mem[_885]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _885 + ceil32(return_data.size) + ceil32(32 * mem[_885 + mem[_885]]) + 1
                            mem[_885 + ceil32(return_data.size)] = _933
                            require _905 + (32 * _933) + 32 <= return_data.size
                            t = _885 + _905 + 32
                            u = _885 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _933:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _933:
                                if s >= mem[_885 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _885 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1627 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_1627 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_1627]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_1627]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(arg1, 4) + 7
                        mem[_425 + 32] = address(stor4[arg1][7].field_0)
                        idx = _425 + 32
                        s = 0
                        while _425 + (32 * stor4[arg1].field_1792) > idx:
                            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[352] = _425
                        if mem[288]:
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1601 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1646 = mem[_1601]
                            require mem[_1601] <= test266151307()
                            require _1601 + return_data.size > _1601 + mem[_1601] + 31
                            _1688 = mem[_1601 + mem[_1601]]
                            if mem[_1601 + mem[_1601]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1601 + mem[_1601]]) + 1 < 0 or _1601 + ceil32(return_data.size) + ceil32(32 * mem[_1601 + mem[_1601]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1601 + ceil32(return_data.size) + ceil32(32 * mem[_1601 + mem[_1601]]) + 1
                            mem[_1601 + ceil32(return_data.size)] = _1688
                            require _1646 + (32 * _1688) + 32 <= return_data.size
                            t = _1601 + _1646 + 32
                            u = _1601 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1688:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _1688:
                                if s >= mem[_1601 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1601 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2174 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_2174 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_2174]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_2174]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = sha3(arg1, 4) + 4
                    mem[416] = stor4[arg1][4].field_0
                    idx = 416
                    s = 0
                    while (uint255(stor4[arg1].field_1024) * 0.5) + 384 > idx:
                        mem[idx + 32] = stor4[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[224] = 384
                    mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                    mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    idx = 0
                    while idx < stor4[arg1].field_1280:
                        mem[0] = sha3(arg1, 4) + 5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            _895 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                            mem[_895] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                            if bool(stor4[arg1][idx + 5].field_0):
                                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                        mem[_895 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        mem[_895 + 32] = stor4[arg1][idx + 5].field_0
                                        t = _895 + 32
                                        u = sha3(mem[0])
                                        while _895 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                            mem[t + 32] = roleAdmin[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _895
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor4[arg1][idx + 5].field_1 % 128:
                                mem[s] = _895
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_895 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _895
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_895 + 32] = stor4[arg1][idx + 5].field_0
                            t = _895 + 32
                            u = sha3(mem[0])
                            while _895 + stor4[arg1][u + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _895
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                        mem[_904] = stor4[arg1][idx + 5].field_1 % 128
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                mem[s] = _904
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_904 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _904
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_904 + 32] = stor4[arg1][idx + 5].field_0
                            t = _904 + 32
                            u = sha3(mem[0])
                            while _904 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _904
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor4[arg1][idx + 5].field_1 % 128:
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_904 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_904 + 32] = stor4[arg1][idx + 5].field_0
                                t = _904 + 32
                                u = sha3(mem[0])
                                while _904 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _904
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                    mem[288] = bool(uint8(stor4[arg1].field_1536))
                    mem[320] = address(stor4[arg1].field_1544)
                    _823 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                    mem[_823] = stor4[arg1].field_1792
                    if not stor4[arg1].field_1792:
                        mem[352] = _823
                        if uint8(stor4[arg1].field_1536):
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1188 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1253 = mem[_1188]
                            require mem[_1188] <= test266151307()
                            require _1188 + return_data.size > _1188 + mem[_1188] + 31
                            _1273 = mem[_1188 + mem[_1188]]
                            if mem[_1188 + mem[_1188]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1188 + mem[_1188]]) + 1 < 0 or _1188 + ceil32(return_data.size) + ceil32(32 * mem[_1188 + mem[_1188]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1188 + ceil32(return_data.size) + ceil32(32 * mem[_1188 + mem[_1188]]) + 1
                            mem[_1188 + ceil32(return_data.size)] = _1273
                            require _1253 + (32 * _1273) + 32 <= return_data.size
                            t = _1188 + _1253 + 32
                            u = _1188 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1273:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _1273:
                                if s >= mem[_1188 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1188 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1965 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_1965 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_1965]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_1965]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(arg1, 4) + 7
                        mem[_823 + 32] = address(stor4[arg1][7].field_0)
                        idx = _823 + 32
                        s = 0
                        while _823 + (32 * stor4[arg1].field_1792) > idx:
                            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[352] = _823
                        if mem[288]:
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1952 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1984 = mem[_1952]
                            require mem[_1952] <= test266151307()
                            require _1952 + return_data.size > _1952 + mem[_1952] + 31
                            _2009 = mem[_1952 + mem[_1952]]
                            if mem[_1952 + mem[_1952]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1952 + mem[_1952]]) + 1 < 0 or _1952 + ceil32(return_data.size) + ceil32(32 * mem[_1952 + mem[_1952]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1952 + ceil32(return_data.size) + ceil32(32 * mem[_1952 + mem[_1952]]) + 1
                            mem[_1952 + ceil32(return_data.size)] = _2009
                            require _1984 + (32 * _2009) + 32 <= return_data.size
                            t = _1952 + _1984 + 32
                            u = _1952 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2009:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _2009:
                                if s >= mem[_1952 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1952 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2275 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_2275 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_2275]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_2275]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
                revert with 0, 34
            if not stor4[arg1].field_1025 % 128:
                mem[224] = 384
                mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                idx = 0
                while idx < stor4[arg1].field_1280:
                    mem[0] = sha3(arg1, 4) + 5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _487 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                        mem[_487] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                    mem[_487 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    mem[_487 + 32] = stor4[arg1][idx + 5].field_0
                                    t = _487 + 32
                                    u = sha3(mem[0])
                                    while _487 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                        mem[t + 32] = roleAdmin[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _487
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[arg1][idx + 5].field_1 % 128:
                            mem[s] = _487
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_487 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _487
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_487 + 32] = stor4[arg1][idx + 5].field_0
                        t = _487 + 32
                        u = sha3(mem[0])
                        while _487 + stor4[arg1][u + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _487
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                    mem[_514] = stor4[arg1][idx + 5].field_1 % 128
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            mem[s] = _514
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_514 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _514
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_514 + 32] = stor4[arg1][idx + 5].field_0
                        t = _514 + 32
                        u = sha3(mem[0])
                        while _514 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _514
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor4[arg1][idx + 5].field_1 % 128:
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_514 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_514 + 32] = stor4[arg1][idx + 5].field_0
                            t = _514 + 32
                            u = sha3(mem[0])
                            while _514 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _514
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                mem[288] = bool(uint8(stor4[arg1].field_1536))
                mem[320] = address(stor4[arg1].field_1544)
                _427 = mem[64]
                mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                mem[_427] = stor4[arg1].field_1792
                if not stor4[arg1].field_1792:
                    mem[352] = _427
                    if uint8(stor4[arg1].field_1536):
                        revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(stor3[idx])
                        call stor3[idx].getStakeTokenIds(address rg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _906 = mem[_886]
                        require mem[_886] <= test266151307()
                        require _886 + return_data.size > _886 + mem[_886] + 31
                        _934 = mem[_886 + mem[_886]]
                        if mem[_886 + mem[_886]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_886 + mem[_886]]) + 1 < 0 or _886 + ceil32(return_data.size) + ceil32(32 * mem[_886 + mem[_886]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _886 + ceil32(return_data.size) + ceil32(32 * mem[_886 + mem[_886]]) + 1
                        mem[_886 + ceil32(return_data.size)] = _934
                        require _906 + (32 * _934) + 32 <= return_data.size
                        t = _886 + _906 + 32
                        u = _886 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _934:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        s = 0
                        t = 0
                        while s < _934:
                            if s >= mem[_886 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeInfo(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(32 * s) + _886 + ceil32(return_data.size) + 32]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if mem[160] and 24 * 3600 > -1 / mem[160]:
                                revert with 0, 17
                            if mem[96] < 24 * 3600 * mem[160]:
                                revert with 0, 17
                            if mem[_1628 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if t > !mem[_1628]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_1628]
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = sha3(arg1, 4) + 7
                    mem[_427 + 32] = address(stor4[arg1][7].field_0)
                    idx = _427 + 32
                    s = 0
                    while _427 + (32 * stor4[arg1].field_1792) > idx:
                        mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[352] = _427
                    if mem[288]:
                        revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(stor3[idx])
                        call stor3[idx].getStakeTokenIds(address rg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1602 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1647 = mem[_1602]
                        require mem[_1602] <= test266151307()
                        require _1602 + return_data.size > _1602 + mem[_1602] + 31
                        _1690 = mem[_1602 + mem[_1602]]
                        if mem[_1602 + mem[_1602]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1602 + mem[_1602]]) + 1 < 0 or _1602 + ceil32(return_data.size) + ceil32(32 * mem[_1602 + mem[_1602]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1602 + ceil32(return_data.size) + ceil32(32 * mem[_1602 + mem[_1602]]) + 1
                        mem[_1602 + ceil32(return_data.size)] = _1690
                        require _1647 + (32 * _1690) + 32 <= return_data.size
                        t = _1602 + _1647 + 32
                        u = _1602 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1690:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        s = 0
                        t = 0
                        while s < _1690:
                            if s >= mem[_1602 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeInfo(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(32 * s) + _1602 + ceil32(return_data.size) + 32]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2175 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if mem[160] and 24 * 3600 > -1 / mem[160]:
                                revert with 0, 17
                            if mem[96] < 24 * 3600 * mem[160]:
                                revert with 0, 17
                            if mem[_2175 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if t > !mem[_2175]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_2175]
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if 31 >= stor4[arg1].field_1025 % 128:
                    mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
                    mem[224] = 384
                    mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                    mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    idx = 0
                    while idx < stor4[arg1].field_1280:
                        mem[0] = sha3(arg1, 4) + 5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            _490 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                            mem[_490] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                            if bool(stor4[arg1][idx + 5].field_0):
                                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                        mem[_490 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        mem[_490 + 32] = stor4[arg1][idx + 5].field_0
                                        t = _490 + 32
                                        u = sha3(mem[0])
                                        while _490 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                            mem[t + 32] = roleAdmin[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _490
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor4[arg1][idx + 5].field_1 % 128:
                                mem[s] = _490
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_490 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _490
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_490 + 32] = stor4[arg1][idx + 5].field_0
                            t = _490 + 32
                            u = sha3(mem[0])
                            while _490 + stor4[arg1][u + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _490
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        _520 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                        mem[_520] = stor4[arg1][idx + 5].field_1 % 128
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                mem[s] = _520
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_520 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _520
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_520 + 32] = stor4[arg1][idx + 5].field_0
                            t = _520 + 32
                            u = sha3(mem[0])
                            while _520 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _520
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor4[arg1][idx + 5].field_1 % 128:
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_520 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_520 + 32] = stor4[arg1][idx + 5].field_0
                                t = _520 + 32
                                u = sha3(mem[0])
                                while _520 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _520
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                    mem[288] = bool(uint8(stor4[arg1].field_1536))
                    mem[320] = address(stor4[arg1].field_1544)
                    _429 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                    mem[_429] = stor4[arg1].field_1792
                    if not stor4[arg1].field_1792:
                        mem[352] = _429
                        if uint8(stor4[arg1].field_1536):
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _888 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _912 = mem[_888]
                            require mem[_888] <= test266151307()
                            require _888 + return_data.size > _888 + mem[_888] + 31
                            _936 = mem[_888 + mem[_888]]
                            if mem[_888 + mem[_888]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_888 + mem[_888]]) + 1 < 0 or _888 + ceil32(return_data.size) + ceil32(32 * mem[_888 + mem[_888]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _888 + ceil32(return_data.size) + ceil32(32 * mem[_888 + mem[_888]]) + 1
                            mem[_888 + ceil32(return_data.size)] = _936
                            require _912 + (32 * _936) + 32 <= return_data.size
                            t = _888 + _912 + 32
                            u = _888 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _936:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _936:
                                if s >= mem[_888 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _888 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1632 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_1632 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_1632]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_1632]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(arg1, 4) + 7
                        mem[_429 + 32] = address(stor4[arg1][7].field_0)
                        idx = _429 + 32
                        s = 0
                        while _429 + (32 * stor4[arg1].field_1792) > idx:
                            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[352] = _429
                        if mem[288]:
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1608 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1650 = mem[_1608]
                            require mem[_1608] <= test266151307()
                            require _1608 + return_data.size > _1608 + mem[_1608] + 31
                            _1694 = mem[_1608 + mem[_1608]]
                            if mem[_1608 + mem[_1608]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1608 + mem[_1608]]) + 1 < 0 or _1608 + ceil32(return_data.size) + ceil32(32 * mem[_1608 + mem[_1608]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1608 + ceil32(return_data.size) + ceil32(32 * mem[_1608 + mem[_1608]]) + 1
                            mem[_1608 + ceil32(return_data.size)] = _1694
                            require _1650 + (32 * _1694) + 32 <= return_data.size
                            t = _1608 + _1650 + 32
                            u = _1608 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1694:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _1694:
                                if s >= mem[_1608 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1608 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2178 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_2178 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_2178]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_2178]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = sha3(arg1, 4) + 4
                    mem[416] = stor4[arg1][4].field_0
                    idx = 416
                    s = 0
                    while stor4[arg1].field_1025 % 128 + 384 > idx:
                        mem[idx + 32] = stor4[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[224] = 384
                    mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                    mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                    s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                    idx = 0
                    while idx < stor4[arg1].field_1280:
                        mem[0] = sha3(arg1, 4) + 5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            _896 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                            mem[_896] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                            if bool(stor4[arg1][idx + 5].field_0):
                                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                        mem[_896 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        mem[_896 + 32] = stor4[arg1][idx + 5].field_0
                                        t = _896 + 32
                                        u = sha3(mem[0])
                                        while _896 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                            mem[t + 32] = roleAdmin[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _896
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor4[arg1][idx + 5].field_1 % 128:
                                mem[s] = _896
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_896 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _896
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_896 + 32] = stor4[arg1][idx + 5].field_0
                            t = _896 + 32
                            u = sha3(mem[0])
                            while _896 + stor4[arg1][u + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _896
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        _911 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                        mem[_911] = stor4[arg1][idx + 5].field_1 % 128
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                mem[s] = _911
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_911 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _911
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_911 + 32] = stor4[arg1][idx + 5].field_0
                            t = _911 + 32
                            u = sha3(mem[0])
                            while _911 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _911
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor4[arg1][idx + 5].field_1 % 128:
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_911 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_911 + 32] = stor4[arg1][idx + 5].field_0
                                t = _911 + 32
                                u = sha3(mem[0])
                                while _911 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _911
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                    mem[288] = bool(uint8(stor4[arg1].field_1536))
                    mem[320] = address(stor4[arg1].field_1544)
                    _825 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                    mem[_825] = stor4[arg1].field_1792
                    if not stor4[arg1].field_1792:
                        mem[352] = _825
                        if uint8(stor4[arg1].field_1536):
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1199 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1258 = mem[_1199]
                            require mem[_1199] <= test266151307()
                            require _1199 + return_data.size > _1199 + mem[_1199] + 31
                            _1278 = mem[_1199 + mem[_1199]]
                            if mem[_1199 + mem[_1199]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1199 + mem[_1199]]) + 1 < 0 or _1199 + ceil32(return_data.size) + ceil32(32 * mem[_1199 + mem[_1199]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1199 + ceil32(return_data.size) + ceil32(32 * mem[_1199 + mem[_1199]]) + 1
                            mem[_1199 + ceil32(return_data.size)] = _1278
                            require _1258 + (32 * _1278) + 32 <= return_data.size
                            t = _1199 + _1258 + 32
                            u = _1199 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1278:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _1278:
                                if s >= mem[_1199 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1199 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1970 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_1970 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_1970]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_1970]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(arg1, 4) + 7
                        mem[_825 + 32] = address(stor4[arg1][7].field_0)
                        idx = _825 + 32
                        s = 0
                        while _825 + (32 * stor4[arg1].field_1792) > idx:
                            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[352] = _825
                        if mem[288]:
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1955 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1987 = mem[_1955]
                            require mem[_1955] <= test266151307()
                            require _1955 + return_data.size > _1955 + mem[_1955] + 31
                            _2013 = mem[_1955 + mem[_1955]]
                            if mem[_1955 + mem[_1955]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1955 + mem[_1955]]) + 1 < 0 or _1955 + ceil32(return_data.size) + ceil32(32 * mem[_1955 + mem[_1955]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1955 + ceil32(return_data.size) + ceil32(32 * mem[_1955 + mem[_1955]]) + 1
                            mem[_1955 + ceil32(return_data.size)] = _2013
                            require _1987 + (32 * _2013) + 32 <= return_data.size
                            t = _1955 + _1987 + 32
                            u = _1955 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2013:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _2013:
                                if s >= mem[_1955 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1955 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2276 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_2276 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_2276]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_2276]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
    else:
        if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
            revert with 0, 34
        mem[384] = stor4[arg1].field_1025 % 128
        if bool(stor4[arg1].field_1024):
            if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[arg1].field_1024):
                mem[224] = 384
                mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
                mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
                s = ceil32(stor4[arg1].field_1025 % 128) + 448
                idx = 0
                while idx < stor4[arg1].field_1280:
                    mem[0] = sha3(arg1, 4) + 5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _491 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                        mem[_491] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                    mem[_491 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    mem[_491 + 32] = stor4[arg1][idx + 5].field_0
                                    t = _491 + 32
                                    u = sha3(mem[0])
                                    while _491 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                        mem[t + 32] = roleAdmin[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _491
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[arg1][idx + 5].field_1 % 128:
                            mem[s] = _491
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_491 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _491
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_491 + 32] = stor4[arg1][idx + 5].field_0
                        t = _491 + 32
                        u = sha3(mem[0])
                        while _491 + stor4[arg1][u + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _491
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    _525 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                    mem[_525] = stor4[arg1][idx + 5].field_1 % 128
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            mem[s] = _525
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_525 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _525
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_525 + 32] = stor4[arg1][idx + 5].field_0
                        t = _525 + 32
                        u = sha3(mem[0])
                        while _525 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _525
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor4[arg1][idx + 5].field_1 % 128:
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_525 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_525 + 32] = stor4[arg1][idx + 5].field_0
                            t = _525 + 32
                            u = sha3(mem[0])
                            while _525 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _525
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
                mem[288] = bool(uint8(stor4[arg1].field_1536))
                mem[320] = address(stor4[arg1].field_1544)
                _431 = mem[64]
                mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                mem[_431] = stor4[arg1].field_1792
                if not stor4[arg1].field_1792:
                    mem[352] = _431
                    if uint8(stor4[arg1].field_1536):
                        revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(stor3[idx])
                        call stor3[idx].getStakeTokenIds(address rg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _889 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _913 = mem[_889]
                        require mem[_889] <= test266151307()
                        require _889 + return_data.size > _889 + mem[_889] + 31
                        _937 = mem[_889 + mem[_889]]
                        if mem[_889 + mem[_889]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_889 + mem[_889]]) + 1 < 0 or _889 + ceil32(return_data.size) + ceil32(32 * mem[_889 + mem[_889]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _889 + ceil32(return_data.size) + ceil32(32 * mem[_889 + mem[_889]]) + 1
                        mem[_889 + ceil32(return_data.size)] = _937
                        require _913 + (32 * _937) + 32 <= return_data.size
                        t = _889 + _913 + 32
                        u = _889 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _937:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        s = 0
                        t = 0
                        while s < _937:
                            if s >= mem[_889 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeInfo(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(32 * s) + _889 + ceil32(return_data.size) + 32]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1633 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if mem[160] and 24 * 3600 > -1 / mem[160]:
                                revert with 0, 17
                            if mem[96] < 24 * 3600 * mem[160]:
                                revert with 0, 17
                            if mem[_1633 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if t > !mem[_1633]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_1633]
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = sha3(arg1, 4) + 7
                    mem[_431 + 32] = address(stor4[arg1][7].field_0)
                    idx = _431 + 32
                    s = 0
                    while _431 + (32 * stor4[arg1].field_1792) > idx:
                        mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[352] = _431
                    if mem[288]:
                        revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(stor3[idx])
                        call stor3[idx].getStakeTokenIds(address rg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1609 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1651 = mem[_1609]
                        require mem[_1609] <= test266151307()
                        require _1609 + return_data.size > _1609 + mem[_1609] + 31
                        _1696 = mem[_1609 + mem[_1609]]
                        if mem[_1609 + mem[_1609]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1609 + mem[_1609]]) + 1 < 0 or _1609 + ceil32(return_data.size) + ceil32(32 * mem[_1609 + mem[_1609]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1609 + ceil32(return_data.size) + ceil32(32 * mem[_1609 + mem[_1609]]) + 1
                        mem[_1609 + ceil32(return_data.size)] = _1696
                        require _1651 + (32 * _1696) + 32 <= return_data.size
                        t = _1609 + _1651 + 32
                        u = _1609 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1696:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        s = 0
                        t = 0
                        while s < _1696:
                            if s >= mem[_1609 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeInfo(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(32 * s) + _1609 + ceil32(return_data.size) + 32]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2179 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if mem[160] and 24 * 3600 > -1 / mem[160]:
                                revert with 0, 17
                            if mem[96] < 24 * 3600 * mem[160]:
                                revert with 0, 17
                            if mem[_2179 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if t > !mem[_2179]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_2179]
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if 31 >= uint255(stor4[arg1].field_1024) * 0.5:
                    mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
                    mem[224] = 384
                    mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
                    mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
                    s = ceil32(stor4[arg1].field_1025 % 128) + 448
                    idx = 0
                    while idx < stor4[arg1].field_1280:
                        mem[0] = sha3(arg1, 4) + 5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            _494 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                            mem[_494] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                            if bool(stor4[arg1][idx + 5].field_0):
                                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                        mem[_494 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        mem[_494 + 32] = stor4[arg1][idx + 5].field_0
                                        t = _494 + 32
                                        u = sha3(mem[0])
                                        while _494 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                            mem[t + 32] = roleAdmin[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _494
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor4[arg1][idx + 5].field_1 % 128:
                                mem[s] = _494
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_494 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _494
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_494 + 32] = stor4[arg1][idx + 5].field_0
                            t = _494 + 32
                            u = sha3(mem[0])
                            while _494 + stor4[arg1][u + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _494
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        _531 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                        mem[_531] = stor4[arg1][idx + 5].field_1 % 128
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                mem[s] = _531
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_531 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _531
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_531 + 32] = stor4[arg1][idx + 5].field_0
                            t = _531 + 32
                            u = sha3(mem[0])
                            while _531 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _531
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor4[arg1][idx + 5].field_1 % 128:
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_531 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_531 + 32] = stor4[arg1][idx + 5].field_0
                                t = _531 + 32
                                u = sha3(mem[0])
                                while _531 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _531
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
                    mem[288] = bool(uint8(stor4[arg1].field_1536))
                    mem[320] = address(stor4[arg1].field_1544)
                    _433 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                    mem[_433] = stor4[arg1].field_1792
                    if not stor4[arg1].field_1792:
                        mem[352] = _433
                        if uint8(stor4[arg1].field_1536):
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _891 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _919 = mem[_891]
                            require mem[_891] <= test266151307()
                            require _891 + return_data.size > _891 + mem[_891] + 31
                            _939 = mem[_891 + mem[_891]]
                            if mem[_891 + mem[_891]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_891 + mem[_891]]) + 1 < 0 or _891 + ceil32(return_data.size) + ceil32(32 * mem[_891 + mem[_891]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _891 + ceil32(return_data.size) + ceil32(32 * mem[_891 + mem[_891]]) + 1
                            mem[_891 + ceil32(return_data.size)] = _939
                            require _919 + (32 * _939) + 32 <= return_data.size
                            t = _891 + _919 + 32
                            u = _891 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _939:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _939:
                                if s >= mem[_891 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _891 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_1637 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_1637]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_1637]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(arg1, 4) + 7
                        mem[_433 + 32] = address(stor4[arg1][7].field_0)
                        idx = _433 + 32
                        s = 0
                        while _433 + (32 * stor4[arg1].field_1792) > idx:
                            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[352] = _433
                        if mem[288]:
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1615 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1654 = mem[_1615]
                            require mem[_1615] <= test266151307()
                            require _1615 + return_data.size > _1615 + mem[_1615] + 31
                            _1700 = mem[_1615 + mem[_1615]]
                            if mem[_1615 + mem[_1615]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1615 + mem[_1615]]) + 1 < 0 or _1615 + ceil32(return_data.size) + ceil32(32 * mem[_1615 + mem[_1615]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1615 + ceil32(return_data.size) + ceil32(32 * mem[_1615 + mem[_1615]]) + 1
                            mem[_1615 + ceil32(return_data.size)] = _1700
                            require _1654 + (32 * _1700) + 32 <= return_data.size
                            t = _1615 + _1654 + 32
                            u = _1615 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1700:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _1700:
                                if s >= mem[_1615 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1615 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2182 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_2182 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_2182]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_2182]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = sha3(arg1, 4) + 4
                    mem[416] = stor4[arg1][4].field_0
                    idx = 416
                    s = 0
                    while (uint255(stor4[arg1].field_1024) * 0.5) + 384 > idx:
                        mem[idx + 32] = stor4[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[224] = 384
                    mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
                    mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
                    s = ceil32(stor4[arg1].field_1025 % 128) + 448
                    idx = 0
                    while idx < stor4[arg1].field_1280:
                        mem[0] = sha3(arg1, 4) + 5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            _897 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                            mem[_897] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                            if bool(stor4[arg1][idx + 5].field_0):
                                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                        mem[_897 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        mem[_897 + 32] = stor4[arg1][idx + 5].field_0
                                        t = _897 + 32
                                        u = sha3(mem[0])
                                        while _897 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                            mem[t + 32] = roleAdmin[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _897
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor4[arg1][idx + 5].field_1 % 128:
                                mem[s] = _897
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_897 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _897
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_897 + 32] = stor4[arg1][idx + 5].field_0
                            t = _897 + 32
                            u = sha3(mem[0])
                            while _897 + stor4[arg1][u + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _897
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        _918 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                        mem[_918] = stor4[arg1][idx + 5].field_1 % 128
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                mem[s] = _918
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_918 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _918
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_918 + 32] = stor4[arg1][idx + 5].field_0
                            t = _918 + 32
                            u = sha3(mem[0])
                            while _918 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _918
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor4[arg1][idx + 5].field_1 % 128:
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_918 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_918 + 32] = stor4[arg1][idx + 5].field_0
                                t = _918 + 32
                                u = sha3(mem[0])
                                while _918 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _918
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
                    mem[288] = bool(uint8(stor4[arg1].field_1536))
                    mem[320] = address(stor4[arg1].field_1544)
                    _827 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                    mem[_827] = stor4[arg1].field_1792
                    if not stor4[arg1].field_1792:
                        mem[352] = _827
                        if uint8(stor4[arg1].field_1536):
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1210 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1263 = mem[_1210]
                            require mem[_1210] <= test266151307()
                            require _1210 + return_data.size > _1210 + mem[_1210] + 31
                            _1283 = mem[_1210 + mem[_1210]]
                            if mem[_1210 + mem[_1210]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1210 + mem[_1210]]) + 1 < 0 or _1210 + ceil32(return_data.size) + ceil32(32 * mem[_1210 + mem[_1210]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1210 + ceil32(return_data.size) + ceil32(32 * mem[_1210 + mem[_1210]]) + 1
                            mem[_1210 + ceil32(return_data.size)] = _1283
                            require _1263 + (32 * _1283) + 32 <= return_data.size
                            t = _1210 + _1263 + 32
                            u = _1210 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1283:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _1283:
                                if s >= mem[_1210 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1210 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1975 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_1975 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_1975]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_1975]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(arg1, 4) + 7
                        mem[_827 + 32] = address(stor4[arg1][7].field_0)
                        idx = _827 + 32
                        s = 0
                        while _827 + (32 * stor4[arg1].field_1792) > idx:
                            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[352] = _827
                        if mem[288]:
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1958 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1990 = mem[_1958]
                            require mem[_1958] <= test266151307()
                            require _1958 + return_data.size > _1958 + mem[_1958] + 31
                            _2017 = mem[_1958 + mem[_1958]]
                            if mem[_1958 + mem[_1958]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1958 + mem[_1958]]) + 1 < 0 or _1958 + ceil32(return_data.size) + ceil32(32 * mem[_1958 + mem[_1958]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1958 + ceil32(return_data.size) + ceil32(32 * mem[_1958 + mem[_1958]]) + 1
                            mem[_1958 + ceil32(return_data.size)] = _2017
                            require _1990 + (32 * _2017) + 32 <= return_data.size
                            t = _1958 + _1990 + 32
                            u = _1958 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2017:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _2017:
                                if s >= mem[_1958 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1958 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2277 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_2277 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_2277]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_2277]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
                revert with 0, 34
            if not stor4[arg1].field_1025 % 128:
                mem[224] = 384
                mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
                mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
                s = ceil32(stor4[arg1].field_1025 % 128) + 448
                idx = 0
                while idx < stor4[arg1].field_1280:
                    mem[0] = sha3(arg1, 4) + 5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _495 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                        mem[_495] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                    mem[_495 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    mem[_495 + 32] = stor4[arg1][idx + 5].field_0
                                    t = _495 + 32
                                    u = sha3(mem[0])
                                    while _495 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                        mem[t + 32] = roleAdmin[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _495
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[arg1][idx + 5].field_1 % 128:
                            mem[s] = _495
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_495 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _495
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_495 + 32] = stor4[arg1][idx + 5].field_0
                        t = _495 + 32
                        u = sha3(mem[0])
                        while _495 + stor4[arg1][u + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _495
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    _536 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                    mem[_536] = stor4[arg1][idx + 5].field_1 % 128
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            mem[s] = _536
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_536 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _536
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_536 + 32] = stor4[arg1][idx + 5].field_0
                        t = _536 + 32
                        u = sha3(mem[0])
                        while _536 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _536
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor4[arg1][idx + 5].field_1 % 128:
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_536 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_536 + 32] = stor4[arg1][idx + 5].field_0
                            t = _536 + 32
                            u = sha3(mem[0])
                            while _536 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _536
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
                mem[288] = bool(uint8(stor4[arg1].field_1536))
                mem[320] = address(stor4[arg1].field_1544)
                _435 = mem[64]
                mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                mem[_435] = stor4[arg1].field_1792
                if not stor4[arg1].field_1792:
                    mem[352] = _435
                    if uint8(stor4[arg1].field_1536):
                        revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(stor3[idx])
                        call stor3[idx].getStakeTokenIds(address rg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _920 = mem[_892]
                        require mem[_892] <= test266151307()
                        require _892 + return_data.size > _892 + mem[_892] + 31
                        _940 = mem[_892 + mem[_892]]
                        if mem[_892 + mem[_892]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_892 + mem[_892]]) + 1 < 0 or _892 + ceil32(return_data.size) + ceil32(32 * mem[_892 + mem[_892]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _892 + ceil32(return_data.size) + ceil32(32 * mem[_892 + mem[_892]]) + 1
                        mem[_892 + ceil32(return_data.size)] = _940
                        require _920 + (32 * _940) + 32 <= return_data.size
                        t = _892 + _920 + 32
                        u = _892 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _940:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        s = 0
                        t = 0
                        while s < _940:
                            if s >= mem[_892 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeInfo(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(32 * s) + _892 + ceil32(return_data.size) + 32]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1638 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if mem[160] and 24 * 3600 > -1 / mem[160]:
                                revert with 0, 17
                            if mem[96] < 24 * 3600 * mem[160]:
                                revert with 0, 17
                            if mem[_1638 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if t > !mem[_1638]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_1638]
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = sha3(arg1, 4) + 7
                    mem[_435 + 32] = address(stor4[arg1][7].field_0)
                    idx = _435 + 32
                    s = 0
                    while _435 + (32 * stor4[arg1].field_1792) > idx:
                        mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[352] = _435
                    if mem[288]:
                        revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(arg2)
                        require ext_code.size(stor3[idx])
                        call stor3[idx].getStakeTokenIds(address rg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1616 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1655 = mem[_1616]
                        require mem[_1616] <= test266151307()
                        require _1616 + return_data.size > _1616 + mem[_1616] + 31
                        _1702 = mem[_1616 + mem[_1616]]
                        if mem[_1616 + mem[_1616]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1616 + mem[_1616]]) + 1 < 0 or _1616 + ceil32(return_data.size) + ceil32(32 * mem[_1616 + mem[_1616]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _1616 + ceil32(return_data.size) + ceil32(32 * mem[_1616 + mem[_1616]]) + 1
                        mem[_1616 + ceil32(return_data.size)] = _1702
                        require _1655 + (32 * _1702) + 32 <= return_data.size
                        t = _1616 + _1655 + 32
                        u = _1616 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _1702:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        s = 0
                        t = 0
                        while s < _1702:
                            if s >= mem[_1616 + ceil32(return_data.size)]:
                                revert with 0, 50
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeInfo(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(32 * s) + _1616 + ceil32(return_data.size) + 32]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2183 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            if mem[160] and 24 * 3600 > -1 / mem[160]:
                                revert with 0, 17
                            if mem[96] < 24 * 3600 * mem[160]:
                                revert with 0, 17
                            if mem[_2183 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if t > !mem[_2183]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_2183]
                            continue 
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if 31 >= stor4[arg1].field_1025 % 128:
                    mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
                    mem[224] = 384
                    mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
                    mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
                    s = ceil32(stor4[arg1].field_1025 % 128) + 448
                    idx = 0
                    while idx < stor4[arg1].field_1280:
                        mem[0] = sha3(arg1, 4) + 5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            _498 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                            mem[_498] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                            if bool(stor4[arg1][idx + 5].field_0):
                                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                        mem[_498 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        mem[_498 + 32] = stor4[arg1][idx + 5].field_0
                                        t = _498 + 32
                                        u = sha3(mem[0])
                                        while _498 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                            mem[t + 32] = roleAdmin[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _498
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor4[arg1][idx + 5].field_1 % 128:
                                mem[s] = _498
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_498 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _498
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_498 + 32] = stor4[arg1][idx + 5].field_0
                            t = _498 + 32
                            u = sha3(mem[0])
                            while _498 + stor4[arg1][u + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _498
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        _542 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                        mem[_542] = stor4[arg1][idx + 5].field_1 % 128
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                mem[s] = _542
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_542 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _542
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_542 + 32] = stor4[arg1][idx + 5].field_0
                            t = _542 + 32
                            u = sha3(mem[0])
                            while _542 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _542
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor4[arg1][idx + 5].field_1 % 128:
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_542 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_542 + 32] = stor4[arg1][idx + 5].field_0
                                t = _542 + 32
                                u = sha3(mem[0])
                                while _542 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _542
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
                    mem[288] = bool(uint8(stor4[arg1].field_1536))
                    mem[320] = address(stor4[arg1].field_1544)
                    _437 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                    mem[_437] = stor4[arg1].field_1792
                    if not stor4[arg1].field_1792:
                        mem[352] = _437
                        if uint8(stor4[arg1].field_1536):
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _894 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _926 = mem[_894]
                            require mem[_894] <= test266151307()
                            require _894 + return_data.size > _894 + mem[_894] + 31
                            _942 = mem[_894 + mem[_894]]
                            if mem[_894 + mem[_894]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_894 + mem[_894]]) + 1 < 0 or _894 + ceil32(return_data.size) + ceil32(32 * mem[_894 + mem[_894]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _894 + ceil32(return_data.size) + ceil32(32 * mem[_894 + mem[_894]]) + 1
                            mem[_894 + ceil32(return_data.size)] = _942
                            require _926 + (32 * _942) + 32 <= return_data.size
                            t = _894 + _926 + 32
                            u = _894 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _942:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _942:
                                if s >= mem[_894 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _894 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1642 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_1642 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_1642]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_1642]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(arg1, 4) + 7
                        mem[_437 + 32] = address(stor4[arg1][7].field_0)
                        idx = _437 + 32
                        s = 0
                        while _437 + (32 * stor4[arg1].field_1792) > idx:
                            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[352] = _437
                        if mem[288]:
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1622 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1658 = mem[_1622]
                            require mem[_1622] <= test266151307()
                            require _1622 + return_data.size > _1622 + mem[_1622] + 31
                            _1706 = mem[_1622 + mem[_1622]]
                            if mem[_1622 + mem[_1622]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1622 + mem[_1622]]) + 1 < 0 or _1622 + ceil32(return_data.size) + ceil32(32 * mem[_1622 + mem[_1622]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1622 + ceil32(return_data.size) + ceil32(32 * mem[_1622 + mem[_1622]]) + 1
                            mem[_1622 + ceil32(return_data.size)] = _1706
                            require _1658 + (32 * _1706) + 32 <= return_data.size
                            t = _1622 + _1658 + 32
                            u = _1622 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1706:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _1706:
                                if s >= mem[_1622 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1622 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2186 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_2186 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_2186]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_2186]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = sha3(arg1, 4) + 4
                    mem[416] = stor4[arg1][4].field_0
                    idx = 416
                    s = 0
                    while stor4[arg1].field_1025 % 128 + 384 > idx:
                        mem[idx + 32] = stor4[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[224] = 384
                    mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
                    mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
                    s = ceil32(stor4[arg1].field_1025 % 128) + 448
                    idx = 0
                    while idx < stor4[arg1].field_1280:
                        mem[0] = sha3(arg1, 4) + 5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            _898 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                            mem[_898] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                            if bool(stor4[arg1][idx + 5].field_0):
                                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                        mem[_898 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        mem[_898 + 32] = stor4[arg1][idx + 5].field_0
                                        t = _898 + 32
                                        u = sha3(mem[0])
                                        while _898 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                            mem[t + 32] = roleAdmin[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[s] = _898
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor4[arg1][idx + 5].field_1 % 128:
                                mem[s] = _898
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_898 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _898
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_898 + 32] = stor4[arg1][idx + 5].field_0
                            t = _898 + 32
                            u = sha3(mem[0])
                            while _898 + stor4[arg1][u + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _898
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        _925 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                        mem[_925] = stor4[arg1][idx + 5].field_1 % 128
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                mem[s] = _925
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_925 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                mem[s] = _925
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_925 + 32] = stor4[arg1][idx + 5].field_0
                            t = _925 + 32
                            u = sha3(mem[0])
                            while _925 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[t] = _925
                            t = t + 32
                            u = u + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor4[arg1][idx + 5].field_1 % 128:
                            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                                mem[_925 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_925 + 32] = stor4[arg1][idx + 5].field_0
                                t = _925 + 32
                                u = sha3(mem[0])
                                while _925 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _925
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
                    mem[288] = bool(uint8(stor4[arg1].field_1536))
                    mem[320] = address(stor4[arg1].field_1544)
                    _829 = mem[64]
                    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                    mem[_829] = stor4[arg1].field_1792
                    if not stor4[arg1].field_1792:
                        mem[352] = _829
                        if uint8(stor4[arg1].field_1536):
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1221 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1268 = mem[_1221]
                            require mem[_1221] <= test266151307()
                            require _1221 + return_data.size > _1221 + mem[_1221] + 31
                            _1288 = mem[_1221 + mem[_1221]]
                            if mem[_1221 + mem[_1221]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1221 + mem[_1221]]) + 1 < 0 or _1221 + ceil32(return_data.size) + ceil32(32 * mem[_1221 + mem[_1221]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1221 + ceil32(return_data.size) + ceil32(32 * mem[_1221 + mem[_1221]]) + 1
                            mem[_1221 + ceil32(return_data.size)] = _1288
                            require _1268 + (32 * _1288) + 32 <= return_data.size
                            t = _1221 + _1268 + 32
                            u = _1221 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1288:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _1288:
                                if s >= mem[_1221 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1221 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1980 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_1980 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_1980]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_1980]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(arg1, 4) + 7
                        mem[_829 + 32] = address(stor4[arg1][7].field_0)
                        idx = _829 + 32
                        s = 0
                        while _829 + (32 * stor4[arg1].field_1792) > idx:
                            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[352] = _829
                        if mem[288]:
                            revert with 0, 'MultipleVoting#getWeight: POLL_ALREADY_ENDED'
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            mem[mem[64]] = 0x4cea7a9000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(arg2)
                            require ext_code.size(stor3[idx])
                            call stor3[idx].getStakeTokenIds(address rg1) with:
                                 gas gas_remaining wei
                                args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1961 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1993 = mem[_1961]
                            require mem[_1961] <= test266151307()
                            require _1961 + return_data.size > _1961 + mem[_1961] + 31
                            _2021 = mem[_1961 + mem[_1961]]
                            if mem[_1961 + mem[_1961]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1961 + mem[_1961]]) + 1 < 0 or _1961 + ceil32(return_data.size) + ceil32(32 * mem[_1961 + mem[_1961]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1961 + ceil32(return_data.size) + ceil32(32 * mem[_1961 + mem[_1961]]) + 1
                            mem[_1961 + ceil32(return_data.size)] = _2021
                            require _1993 + (32 * _2021) + 32 <= return_data.size
                            t = _1961 + _1993 + 32
                            u = _1961 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2021:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            s = 0
                            t = 0
                            while s < _2021:
                                if s >= mem[_1961 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                require ext_code.size(stor3[idx])
                                call stor3[idx].getStakeInfo(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(32 * s) + _1961 + ceil32(return_data.size) + 32]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2278 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                if mem[160] and 24 * 3600 > -1 / mem[160]:
                                    revert with 0, 17
                                if mem[96] < 24 * 3600 * mem[160]:
                                    revert with 0, 17
                                if mem[_2278 + 64] >= mem[96] - (24 * 3600 * mem[160]):
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if t > !mem[_2278]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_2278]
                                continue 
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
    return 0
}

function sub_468e1e72(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    if arg1 > sub_0c1bc91c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MultipleVoting#validPoll: POLL_ID_INVALID'
    mem[0] = arg1
    mem[32] = 4
    mem[96] = stor4[arg1].field_0
    mem[128] = stor4[arg1].field_256
    mem[160] = stor4[arg1].field_512
    mem[192] = stor4[arg1].field_768
    if bool(stor4[arg1].field_1024):
        if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        mem[384] = uint255(stor4[arg1].field_1024) * 0.5
        if bool(stor4[arg1].field_1024):
            if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[arg1].field_1024):
                mem[224] = 384
                mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                idx = 0
                while idx < stor4[arg1].field_1280:
                    mem[0] = sha3(arg1, 4) + 5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _800 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                        mem[_800] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                    mem[_800 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    mem[_800 + 32] = stor4[arg1][idx + 5].field_0
                                    t = _800 + 32
                                    u = sha3(mem[0])
                                    while _800 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                        mem[t + 32] = roleAdmin[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _800
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[arg1][idx + 5].field_1 % 128:
                            mem[s] = _800
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_800 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _800
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_800 + 32] = stor4[arg1][idx + 5].field_0
                        t = _800 + 32
                        u = sha3(mem[0])
                        while _800 + stor4[arg1][u + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _800
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    _837 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                    mem[_837] = stor4[arg1][idx + 5].field_1 % 128
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            mem[s] = _837
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_837 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _837
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_837 + 32] = stor4[arg1][idx + 5].field_0
                        t = _837 + 32
                        u = sha3(mem[0])
                        while _837 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _837
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor4[arg1][idx + 5].field_1 % 128:
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_837 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_837 + 32] = stor4[arg1][idx + 5].field_0
                            t = _837 + 32
                            u = sha3(mem[0])
                            while _837 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _837
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                mem[288] = bool(uint8(stor4[arg1].field_1536))
                mem[320] = address(stor4[arg1].field_1544)
                _721 = mem[64]
                mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                mem[_721] = stor4[arg1].field_1792
                if not stor4[arg1].field_1792:
                    mem[352] = _721
                    if uint8(stor4[arg1].field_1536):
                        _758 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                        if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                            revert with 0, 65
                        _797 = mem[64]
                        mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                        mem[64] = mem[64] + (32 * _758) + 32
                        if not _758:
                            _1421 = mem[_797]
                            idx = 0
                            while idx < _1421:
                                mem[0] = idx
                                mem[32] = sha3(arg1, 6)
                                if idx >= mem[_797]:
                                    revert with 0, 50
                                mem[(32 * idx) + _797 + 32] = stor6[arg1][idx]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _1453 = mem[192]
                            _1589 = mem[64]
                            mem[mem[64]] = 64
                            _1629 = mem[_797]
                            mem[mem[64] + 64] = mem[_797]
                            mem[mem[64] + 96 len 32 * _1629] = mem[_797 + 32 len 32 * _1629]
                            mem[mem[64] + 32] = _1453
                            return memory
                              from mem[64]
                               len _1589 + (32 * _1629) + -mem[64] + 96
                        mem[_797 + 32 len 32 * _758] = call.data[calldata.size len 32 * _758]
                        _1422 = mem[_797]
                        idx = 0
                        while idx < _1422:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_797]:
                                revert with 0, 50
                            mem[(32 * idx) + _797 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1457 = mem[192]
                        _1590 = mem[64]
                        mem[mem[64]] = 64
                        _1630 = mem[_797]
                        mem[mem[64] + 64] = mem[_797]
                        mem[mem[64] + 96 len 32 * _1630] = mem[_797 + 32 len 32 * _1630]
                        mem[mem[64] + 32] = _1457
                        return memory
                          from mem[64]
                           len _1590 + (32 * _1630) + -mem[64] + 96
                    mem[0] = msg.sender
                    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                        revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                    _875 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                        revert with 0, 65
                    _954 = mem[64]
                    mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[64] = mem[64] + (32 * _875) + 32
                    if not _875:
                        _1423 = mem[_954]
                        idx = 0
                        while idx < _1423:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_954]:
                                revert with 0, 50
                            mem[(32 * idx) + _954 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1461 = mem[192]
                        _1591 = mem[64]
                        mem[mem[64]] = 64
                        _1631 = mem[_954]
                        mem[mem[64] + 64] = mem[_954]
                        mem[mem[64] + 96 len 32 * _1631] = mem[_954 + 32 len 32 * _1631]
                        mem[mem[64] + 32] = _1461
                        return memory
                          from mem[64]
                           len _1591 + (32 * _1631) + -mem[64] + 96
                    mem[_954 + 32 len 32 * _875] = call.data[calldata.size len 32 * _875]
                    _1424 = mem[_954]
                    idx = 0
                    while idx < _1424:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_954]:
                            revert with 0, 50
                        mem[(32 * idx) + _954 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1465 = mem[192]
                    _1592 = mem[64]
                    mem[mem[64]] = 64
                    _1632 = mem[_954]
                    mem[mem[64] + 64] = mem[_954]
                    mem[mem[64] + 96 len 32 * _1632] = mem[_954 + 32 len 32 * _1632]
                    mem[mem[64] + 32] = _1465
                    return memory
                      from mem[64]
                       len _1592 + (32 * _1632) + -mem[64] + 96
                mem[0] = sha3(arg1, 4) + 7
                mem[_721 + 32] = address(stor4[arg1][7].field_0)
                idx = _721 + 32
                s = 0
                while _721 + (32 * stor4[arg1].field_1792) > idx:
                    mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[352] = _721
                if mem[288]:
                    _2066 = mem[mem[256]]
                    if mem[mem[256]] > test266151307():
                        revert with 0, 65
                    _2141 = mem[64]
                    mem[mem[64]] = mem[mem[256]]
                    mem[64] = mem[64] + (32 * _2066) + 32
                    if not _2066:
                        _2541 = mem[_2141]
                        idx = 0
                        while idx < _2541:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_2141]:
                                revert with 0, 50
                            mem[(32 * idx) + _2141 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            _2541 = mem[_2141]
                            idx = idx + 1
                            continue 
                        _2577 = mem[192]
                        _2721 = mem[64]
                        mem[mem[64]] = 64
                        _2785 = mem[_2141]
                        mem[mem[64] + 64] = mem[_2141]
                        mem[mem[64] + 96 len 32 * _2785] = mem[_2141 + 32 len 32 * _2785]
                        var37001 = _2785
                        mem[mem[64] + 32] = _2577
                        return memory
                          from mem[64]
                           len _2721 + (32 * _2785) + -mem[64] + 96
                    mem[_2141 + 32 len 32 * _2066] = call.data[calldata.size len 32 * _2066]
                    _2542 = mem[_2141]
                    idx = 0
                    while idx < _2542:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2141]:
                            revert with 0, 50
                        mem[(32 * idx) + _2141 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _2542 = mem[_2141]
                        idx = idx + 1
                        continue 
                    _2581 = mem[192]
                    _2722 = mem[64]
                    mem[mem[64]] = 64
                    _2786 = mem[_2141]
                    mem[mem[64] + 64] = mem[_2141]
                    mem[mem[64] + 96 len 32 * _2786] = mem[_2141 + 32 len 32 * _2786]
                    mem[mem[64] + 32] = _2581
                    return memory
                      from mem[64]
                       len _2722 + (32 * _2786) + -mem[64] + 96
                mem[0] = msg.sender
                mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                    revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                _2211 = mem[mem[256]]
                if mem[mem[256]] > test266151307():
                    revert with 0, 65
                _2290 = mem[64]
                mem[mem[64]] = mem[mem[256]]
                mem[64] = mem[64] + (32 * _2211) + 32
                if not _2211:
                    _2543 = mem[_2290]
                    idx = 0
                    while idx < _2543:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2290]:
                            revert with 0, 50
                        mem[(32 * idx) + _2290 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _2543 = mem[_2290]
                        idx = idx + 1
                        continue 
                    _2585 = mem[192]
                    _2723 = mem[64]
                    mem[mem[64]] = 64
                    _2787 = mem[_2290]
                    mem[mem[64] + 64] = mem[_2290]
                    mem[mem[64] + 96 len 32 * _2787] = mem[_2290 + 32 len 32 * _2787]
                    var41001 = _2787
                    mem[mem[64] + 32] = _2585
                    return memory
                      from mem[64]
                       len _2723 + (32 * _2787) + -mem[64] + 96
                mem[_2290 + 32 len 32 * _2211] = call.data[calldata.size len 32 * _2211]
                _2544 = mem[_2290]
                idx = 0
                while idx < _2544:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2290]:
                        revert with 0, 50
                    mem[(32 * idx) + _2290 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2544 = mem[_2290]
                    idx = idx + 1
                    continue 
                _2589 = mem[192]
                _2724 = mem[64]
                mem[mem[64]] = 64
                _2788 = mem[_2290]
                mem[mem[64] + 64] = mem[_2290]
                mem[mem[64] + 96 len 32 * _2788] = mem[_2290 + 32 len 32 * _2788]
                mem[mem[64] + 32] = _2589
                return memory
                  from mem[64]
                   len _2724 + (32 * _2788) + -mem[64] + 96
            if 31 >= uint255(stor4[arg1].field_1024) * 0.5:
                mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
                mem[224] = 384
                mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
                mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
                s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
                idx = 0
                while idx < stor4[arg1].field_1280:
                    mem[0] = sha3(arg1, 4) + 5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _806 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                        mem[_806] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                        if bool(stor4[arg1][idx + 5].field_0):
                            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                    mem[_806 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    mem[_806 + 32] = stor4[arg1][idx + 5].field_0
                                    t = _806 + 32
                                    u = sha3(mem[0])
                                    while _806 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                        mem[t + 32] = roleAdmin[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[s] = _806
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor4[arg1][idx + 5].field_1 % 128:
                            mem[s] = _806
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_806 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _806
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_806 + 32] = stor4[arg1][idx + 5].field_0
                        t = _806 + 32
                        u = sha3(mem[0])
                        while _806 + stor4[arg1][u + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _806
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    _838 = mem[64]
                    mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                    mem[_838] = stor4[arg1][idx + 5].field_1 % 128
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            mem[s] = _838
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_838 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            mem[s] = _838
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_838 + 32] = stor4[arg1][idx + 5].field_0
                        t = _838 + 32
                        u = sha3(mem[0])
                        while _838 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[t] = _838
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor4[arg1][idx + 5].field_1 % 128:
                        if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                            mem[_838 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_838 + 32] = stor4[arg1][idx + 5].field_0
                            t = _838 + 32
                            u = sha3(mem[0])
                            while _838 + stor4[arg1][idx + 5].field_1 % 128 > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _838
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
                mem[288] = bool(uint8(stor4[arg1].field_1536))
                mem[320] = address(stor4[arg1].field_1544)
                _723 = mem[64]
                mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
                mem[_723] = stor4[arg1].field_1792
                if not stor4[arg1].field_1792:
                    mem[352] = _723
                    if uint8(stor4[arg1].field_1536):
                        _764 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                        if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                            revert with 0, 65
                        _803 = mem[64]
                        mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                        mem[64] = mem[64] + (32 * _764) + 32
                        if not _764:
                            _1425 = mem[_803]
                            idx = 0
                            while idx < _1425:
                                mem[0] = idx
                                mem[32] = sha3(arg1, 6)
                                if idx >= mem[_803]:
                                    revert with 0, 50
                                mem[(32 * idx) + _803 + 32] = stor6[arg1][idx]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            _1471 = mem[192]
                            _1595 = mem[64]
                            mem[mem[64]] = 64
                            _1633 = mem[_803]
                            mem[mem[64] + 64] = mem[_803]
                            mem[mem[64] + 96 len 32 * _1633] = mem[_803 + 32 len 32 * _1633]
                            mem[mem[64] + 32] = _1471
                            return memory
                              from mem[64]
                               len _1595 + (32 * _1633) + -mem[64] + 96
                        mem[_803 + 32 len 32 * _764] = call.data[calldata.size len 32 * _764]
                        _1426 = mem[_803]
                        idx = 0
                        while idx < _1426:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_803]:
                                revert with 0, 50
                            mem[(32 * idx) + _803 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1475 = mem[192]
                        _1596 = mem[64]
                        mem[mem[64]] = 64
                        _1634 = mem[_803]
                        mem[mem[64] + 64] = mem[_803]
                        mem[mem[64] + 96 len 32 * _1634] = mem[_803 + 32 len 32 * _1634]
                        mem[mem[64] + 32] = _1475
                        return memory
                          from mem[64]
                           len _1596 + (32 * _1634) + -mem[64] + 96
                    mem[0] = msg.sender
                    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                        revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                    _887 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                        revert with 0, 65
                    _962 = mem[64]
                    mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[64] = mem[64] + (32 * _887) + 32
                    if not _887:
                        _1427 = mem[_962]
                        idx = 0
                        while idx < _1427:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_962]:
                                revert with 0, 50
                            mem[(32 * idx) + _962 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1479 = mem[192]
                        _1597 = mem[64]
                        mem[mem[64]] = 64
                        _1635 = mem[_962]
                        mem[mem[64] + 64] = mem[_962]
                        mem[mem[64] + 96 len 32 * _1635] = mem[_962 + 32 len 32 * _1635]
                        mem[mem[64] + 32] = _1479
                        return memory
                          from mem[64]
                           len _1597 + (32 * _1635) + -mem[64] + 96
                    mem[_962 + 32 len 32 * _887] = call.data[calldata.size len 32 * _887]
                    _1428 = mem[_962]
                    idx = 0
                    while idx < _1428:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_962]:
                            revert with 0, 50
                        mem[(32 * idx) + _962 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1483 = mem[192]
                    _1598 = mem[64]
                    mem[mem[64]] = 64
                    _1636 = mem[_962]
                    mem[mem[64] + 64] = mem[_962]
                    mem[mem[64] + 96 len 32 * _1636] = mem[_962 + 32 len 32 * _1636]
                    mem[mem[64] + 32] = _1483
                    return memory
                      from mem[64]
                       len _1598 + (32 * _1636) + -mem[64] + 96
                mem[0] = sha3(arg1, 4) + 7
                mem[_723 + 32] = address(stor4[arg1][7].field_0)
                idx = _723 + 32
                s = 0
                while _723 + (32 * stor4[arg1].field_1792) > idx:
                    mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[352] = _723
                if mem[288]:
                    _2078 = mem[mem[256]]
                    if mem[mem[256]] > test266151307():
                        revert with 0, 65
                    _2148 = mem[64]
                    mem[mem[64]] = mem[mem[256]]
                    mem[64] = mem[64] + (32 * _2078) + 32
                    if not _2078:
                        _2546 = mem[_2148]
                        idx = 0
                        while idx < _2546:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_2148]:
                                revert with 0, 50
                            mem[(32 * idx) + _2148 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            _2546 = mem[_2148]
                            idx = idx + 1
                            continue 
                        _2597 = mem[192]
                        _2733 = mem[64]
                        mem[mem[64]] = 64
                        _2792 = mem[_2148]
                        mem[mem[64] + 64] = mem[_2148]
                        mem[mem[64] + 96 len 32 * _2792] = mem[_2148 + 32 len 32 * _2792]
                        var39001 = _2792
                        mem[mem[64] + 32] = _2597
                        return memory
                          from mem[64]
                           len _2733 + (32 * _2792) + -mem[64] + 96
                    mem[_2148 + 32 len 32 * _2078] = call.data[calldata.size len 32 * _2078]
                    _2547 = mem[_2148]
                    idx = 0
                    while idx < _2547:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2148]:
                            revert with 0, 50
                        mem[(32 * idx) + _2148 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _2547 = mem[_2148]
                        idx = idx + 1
                        continue 
                    _2601 = mem[192]
                    _2734 = mem[64]
                    mem[mem[64]] = 64
                    _2793 = mem[_2148]
                    mem[mem[64] + 64] = mem[_2148]
                    mem[mem[64] + 96 len 32 * _2793] = mem[_2148 + 32 len 32 * _2793]
                    mem[mem[64] + 32] = _2601
                    return memory
                      from mem[64]
                       len _2734 + (32 * _2793) + -mem[64] + 96
                mem[0] = msg.sender
                mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                    revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                _2223 = mem[mem[256]]
                if mem[mem[256]] > test266151307():
                    revert with 0, 65
                _2297 = mem[64]
                mem[mem[64]] = mem[mem[256]]
                mem[64] = mem[64] + (32 * _2223) + 32
                if not _2223:
                    _2548 = mem[_2297]
                    idx = 0
                    while idx < _2548:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2297]:
                            revert with 0, 50
                        mem[(32 * idx) + _2297 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _2548 = mem[_2297]
                        idx = idx + 1
                        continue 
                    _2605 = mem[192]
                    _2735 = mem[64]
                    mem[mem[64]] = 64
                    _2794 = mem[_2297]
                    mem[mem[64] + 64] = mem[_2297]
                    mem[mem[64] + 96 len 32 * _2794] = mem[_2297 + 32 len 32 * _2794]
                    var43001 = _2794
                    mem[mem[64] + 32] = _2605
                    return memory
                      from mem[64]
                       len _2735 + (32 * _2794) + -mem[64] + 96
                mem[_2297 + 32 len 32 * _2223] = call.data[calldata.size len 32 * _2223]
                _2549 = mem[_2297]
                idx = 0
                while idx < _2549:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2297]:
                        revert with 0, 50
                    mem[(32 * idx) + _2297 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2549 = mem[_2297]
                    idx = idx + 1
                    continue 
                _2609 = mem[192]
                _2736 = mem[64]
                mem[mem[64]] = 64
                _2795 = mem[_2297]
                mem[mem[64] + 64] = mem[_2297]
                mem[mem[64] + 96 len 32 * _2795] = mem[_2297 + 32 len 32 * _2795]
                mem[mem[64] + 32] = _2609
                return memory
                  from mem[64]
                   len _2736 + (32 * _2795) + -mem[64] + 96
            mem[0] = sha3(arg1, 4) + 4
            mem[416] = stor4[arg1][4].field_0
            idx = 416
            s = 0
            while (uint255(stor4[arg1].field_1024) * 0.5) + 384 > idx:
                mem[idx + 32] = stor4[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[224] = 384
            mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
            s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _1684 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_1684] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_1684 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_1684 + 32] = stor4[arg1][idx + 5].field_0
                                t = _1684 + 32
                                u = sha3(mem[0])
                                while _1684 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _1684
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _1684
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_1684 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _1684
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_1684 + 32] = stor4[arg1][idx + 5].field_0
                    t = _1684 + 32
                    u = sha3(mem[0])
                    while _1684 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _1684
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _1729 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_1729] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _1729
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_1729 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _1729
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_1729 + 32] = stor4[arg1][idx + 5].field_0
                    t = _1729 + 32
                    u = sha3(mem[0])
                    while _1729 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _1729
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_1729 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_1729 + 32] = stor4[arg1][idx + 5].field_0
                        t = _1729 + 32
                        u = sha3(mem[0])
                        while _1729 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _1729
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _1469 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_1469] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _1469
                if uint8(stor4[arg1].field_1536):
                    _1662 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                        revert with 0, 65
                    _1681 = mem[64]
                    mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[64] = mem[64] + (32 * _1662) + 32
                    if not _1662:
                        _1942 = mem[_1681]
                        idx = 0
                        while idx < _1942:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_1681]:
                                revert with 0, 50
                            mem[(32 * idx) + _1681 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            _1942 = mem[_1681]
                            idx = idx + 1
                            continue 
                        _1969 = mem[192]
                        _2069 = mem[64]
                        mem[mem[64]] = 64
                        _2144 = mem[_1681]
                        mem[mem[64] + 64] = mem[_1681]
                        mem[mem[64] + 96 len 32 * _2144] = mem[_1681 + 32 len 32 * _2144]
                        s = _2144
                        idx = _1681 + (32 * _2144) + 32
                        mem[mem[64] + 32] = _1969
                        return memory
                          from mem[64]
                           len _2069 + (32 * _2144) + -mem[64] + 96
                    mem[_1681 + 32 len 32 * _1662] = call.data[calldata.size len 32 * _1662]
                    _1943 = mem[_1681]
                    idx = 0
                    while idx < _1943:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_1681]:
                            revert with 0, 50
                        mem[(32 * idx) + _1681 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _1943 = mem[_1681]
                        idx = idx + 1
                        continue 
                    _1973 = mem[192]
                    _2070 = mem[64]
                    mem[mem[64]] = 64
                    _2145 = mem[_1681]
                    mem[mem[64] + 64] = mem[_1681]
                    mem[mem[64] + 96 len 32 * _2145] = mem[_1681 + 32 len 32 * _2145]
                    var39001 = _2145
                    var39002 = _1681 + (32 * _2145) + 32
                    mem[mem[64] + 32] = _1973
                    return memory
                      from mem[64]
                       len _2070 + (32 * _2145) + -mem[64] + 96
                mem[0] = msg.sender
                mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                    revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                _1771 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                    revert with 0, 65
                _1802 = mem[64]
                mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                mem[64] = mem[64] + (32 * _1771) + 32
                if not _1771:
                    _1944 = mem[_1802]
                    idx = 0
                    while idx < _1944:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_1802]:
                            revert with 0, 50
                        mem[(32 * idx) + _1802 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _1944 = mem[_1802]
                        idx = idx + 1
                        continue 
                    _1977 = mem[192]
                    _2071 = mem[64]
                    mem[mem[64]] = 64
                    _2146 = mem[_1802]
                    mem[mem[64] + 64] = mem[_1802]
                    mem[mem[64] + 96 len 32 * _2146] = mem[_1802 + 32 len 32 * _2146]
                    var42001 = _2146
                    mem[mem[64] + 32] = _1977
                    return memory
                      from mem[64]
                       len _2071 + (32 * _2146) + -mem[64] + 96
                mem[_1802 + 32 len 32 * _1771] = call.data[calldata.size len 32 * _1771]
                _1945 = mem[_1802]
                idx = 0
                while idx < _1945:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_1802]:
                        revert with 0, 50
                    mem[(32 * idx) + _1802 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _1945 = mem[_1802]
                    idx = idx + 1
                    continue 
                _1981 = mem[192]
                _2072 = mem[64]
                mem[mem[64]] = 64
                _2147 = mem[_1802]
                mem[mem[64] + 64] = mem[_1802]
                mem[mem[64] + 96 len 32 * _2147] = mem[_1802 + 32 len 32 * _2147]
                mem[mem[64] + 32] = _1981
                return memory
                  from mem[64]
                   len _2072 + (32 * _2147) + -mem[64] + 96
            mem[0] = sha3(arg1, 4) + 7
            mem[_1469 + 32] = address(stor4[arg1][7].field_0)
            idx = _1469 + 32
            s = 0
            while _1469 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _1469
            if mem[288]:
                _2730 = mem[mem[256]]
                if mem[mem[256]] > test266151307():
                    revert with 0, 65
                _2789 = mem[64]
                mem[mem[64]] = mem[mem[256]]
                mem[64] = mem[64] + (32 * _2730) + 32
                if not _2730:
                    _3057 = mem[_2789]
                    idx = 0
                    while idx < _3057:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2789]:
                            revert with 0, 50
                        mem[(32 * idx) + _2789 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _3057 = mem[_2789]
                        idx = idx + 1
                        continue 
                    _3077 = mem[192]
                    _3173 = mem[64]
                    mem[mem[64]] = 64
                    _3217 = mem[_2789]
                    mem[mem[64] + 64] = mem[_2789]
                    mem[mem[64] + 96 len 32 * _3217] = mem[_2789 + 32 len 32 * _3217]
                    var42001 = _3217
                    mem[mem[64] + 32] = _3077
                    return memory
                      from mem[64]
                       len _3173 + (32 * _3217) + -mem[64] + 96
                mem[_2789 + 32 len 32 * _2730] = call.data[calldata.size len 32 * _2730]
                _3058 = mem[_2789]
                idx = 0
                while idx < _3058:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2789]:
                        revert with 0, 50
                    mem[(32 * idx) + _2789 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _3058 = mem[_2789]
                    idx = idx + 1
                    continue 
                _3081 = mem[192]
                _3174 = mem[64]
                mem[mem[64]] = 64
                _3218 = mem[_2789]
                mem[mem[64] + 64] = mem[_2789]
                mem[mem[64] + 96 len 32 * _3218] = mem[_2789 + 32 len 32 * _3218]
                mem[mem[64] + 32] = _3081
                return memory
                  from mem[64]
                   len _3174 + (32 * _3218) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _2875 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2934 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2875) + 32
            if not _2875:
                _3059 = mem[_2934]
                idx = 0
                while idx < _3059:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2934]:
                        revert with 0, 50
                    mem[(32 * idx) + _2934 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _3059 = mem[_2934]
                    idx = idx + 1
                    continue 
                _3085 = mem[192]
                _3175 = mem[64]
                mem[mem[64]] = 64
                _3219 = mem[_2934]
                mem[mem[64] + 64] = mem[_2934]
                mem[mem[64] + 96 len 32 * _3219] = mem[_2934 + 32 len 32 * _3219]
                var46001 = _3219
                mem[mem[64] + 32] = _3085
                return memory
                  from mem[64]
                   len _3175 + (32 * _3219) + -mem[64] + 96
            mem[_2934 + 32 len 32 * _2875] = call.data[calldata.size len 32 * _2875]
            _3060 = mem[_2934]
            idx = 0
            while idx < _3060:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2934]:
                    revert with 0, 50
                mem[(32 * idx) + _2934 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _3060 = mem[_2934]
                idx = idx + 1
                continue 
            _3089 = mem[192]
            _3176 = mem[64]
            mem[mem[64]] = 64
            _3220 = mem[_2934]
            mem[mem[64] + 64] = mem[_2934]
            mem[mem[64] + 96 len 32 * _3220] = mem[_2934 + 32 len 32 * _3220]
            mem[mem[64] + 32] = _3089
            return memory
              from mem[64]
               len _3176 + (32 * _3220) + -mem[64] + 96
        if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
            revert with 0, 34
        if not stor4[arg1].field_1025 % 128:
            mem[224] = 384
            mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
            s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _810 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_810] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_810 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_810 + 32] = stor4[arg1][idx + 5].field_0
                                t = _810 + 32
                                u = sha3(mem[0])
                                while _810 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _810
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _810
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_810 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _810
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_810 + 32] = stor4[arg1][idx + 5].field_0
                    t = _810 + 32
                    u = sha3(mem[0])
                    while _810 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _810
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _839 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_839] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _839
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_839 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _839
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_839 + 32] = stor4[arg1][idx + 5].field_0
                    t = _839 + 32
                    u = sha3(mem[0])
                    while _839 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _839
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_839 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_839 + 32] = stor4[arg1][idx + 5].field_0
                        t = _839 + 32
                        u = sha3(mem[0])
                        while _839 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _839
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _725 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_725] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _725
                if uint8(stor4[arg1].field_1536):
                    _768 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                        revert with 0, 65
                    _807 = mem[64]
                    mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[64] = mem[64] + (32 * _768) + 32
                    if not _768:
                        _1429 = mem[_807]
                        idx = 0
                        while idx < _1429:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_807]:
                                revert with 0, 50
                            mem[(32 * idx) + _807 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1487 = mem[192]
                        _1599 = mem[64]
                        mem[mem[64]] = 64
                        _1637 = mem[_807]
                        mem[mem[64] + 64] = mem[_807]
                        mem[mem[64] + 96 len 32 * _1637] = mem[_807 + 32 len 32 * _1637]
                        mem[mem[64] + 32] = _1487
                        return memory
                          from mem[64]
                           len _1599 + (32 * _1637) + -mem[64] + 96
                    mem[_807 + 32 len 32 * _768] = call.data[calldata.size len 32 * _768]
                    _1430 = mem[_807]
                    idx = 0
                    while idx < _1430:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_807]:
                            revert with 0, 50
                        mem[(32 * idx) + _807 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1491 = mem[192]
                    _1600 = mem[64]
                    mem[mem[64]] = 64
                    _1638 = mem[_807]
                    mem[mem[64] + 64] = mem[_807]
                    mem[mem[64] + 96 len 32 * _1638] = mem[_807 + 32 len 32 * _1638]
                    mem[mem[64] + 32] = _1491
                    return memory
                      from mem[64]
                       len _1600 + (32 * _1638) + -mem[64] + 96
                mem[0] = msg.sender
                mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                    revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                _895 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                    revert with 0, 65
                _969 = mem[64]
                mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                mem[64] = mem[64] + (32 * _895) + 32
                if not _895:
                    _1431 = mem[_969]
                    idx = 0
                    while idx < _1431:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_969]:
                            revert with 0, 50
                        mem[(32 * idx) + _969 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1495 = mem[192]
                    _1601 = mem[64]
                    mem[mem[64]] = 64
                    _1639 = mem[_969]
                    mem[mem[64] + 64] = mem[_969]
                    mem[mem[64] + 96 len 32 * _1639] = mem[_969 + 32 len 32 * _1639]
                    mem[mem[64] + 32] = _1495
                    return memory
                      from mem[64]
                       len _1601 + (32 * _1639) + -mem[64] + 96
                mem[_969 + 32 len 32 * _895] = call.data[calldata.size len 32 * _895]
                _1432 = mem[_969]
                idx = 0
                while idx < _1432:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_969]:
                        revert with 0, 50
                    mem[(32 * idx) + _969 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1499 = mem[192]
                _1602 = mem[64]
                mem[mem[64]] = 64
                _1640 = mem[_969]
                mem[mem[64] + 64] = mem[_969]
                mem[mem[64] + 96 len 32 * _1640] = mem[_969 + 32 len 32 * _1640]
                mem[mem[64] + 32] = _1499
                return memory
                  from mem[64]
                   len _1602 + (32 * _1640) + -mem[64] + 96
            mem[0] = sha3(arg1, 4) + 7
            mem[_725 + 32] = address(stor4[arg1][7].field_0)
            idx = _725 + 32
            s = 0
            while _725 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _725
            if mem[288]:
                _2086 = mem[mem[256]]
                if mem[mem[256]] > test266151307():
                    revert with 0, 65
                _2151 = mem[64]
                mem[mem[64]] = mem[mem[256]]
                mem[64] = mem[64] + (32 * _2086) + 32
                if not _2086:
                    _2550 = mem[_2151]
                    idx = 0
                    while idx < _2550:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2151]:
                            revert with 0, 50
                        mem[(32 * idx) + _2151 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _2550 = mem[_2151]
                        idx = idx + 1
                        continue 
                    _2613 = mem[192]
                    _2737 = mem[64]
                    mem[mem[64]] = 64
                    _2796 = mem[_2151]
                    mem[mem[64] + 64] = mem[_2151]
                    mem[mem[64] + 96 len 32 * _2796] = mem[_2151 + 32 len 32 * _2796]
                    var38001 = _2796
                    mem[mem[64] + 32] = _2613
                    return memory
                      from mem[64]
                       len _2737 + (32 * _2796) + -mem[64] + 96
                mem[_2151 + 32 len 32 * _2086] = call.data[calldata.size len 32 * _2086]
                _2551 = mem[_2151]
                idx = 0
                while idx < _2551:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2151]:
                        revert with 0, 50
                    mem[(32 * idx) + _2151 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2551 = mem[_2151]
                    idx = idx + 1
                    continue 
                _2617 = mem[192]
                _2738 = mem[64]
                mem[mem[64]] = 64
                _2797 = mem[_2151]
                mem[mem[64] + 64] = mem[_2151]
                mem[mem[64] + 96 len 32 * _2797] = mem[_2151 + 32 len 32 * _2797]
                mem[mem[64] + 32] = _2617
                return memory
                  from mem[64]
                   len _2738 + (32 * _2797) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _2231 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2304 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2231) + 32
            if not _2231:
                _2552 = mem[_2304]
                idx = 0
                while idx < _2552:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2304]:
                        revert with 0, 50
                    mem[(32 * idx) + _2304 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2552 = mem[_2304]
                    idx = idx + 1
                    continue 
                _2621 = mem[192]
                _2739 = mem[64]
                mem[mem[64]] = 64
                _2798 = mem[_2304]
                mem[mem[64] + 64] = mem[_2304]
                mem[mem[64] + 96 len 32 * _2798] = mem[_2304 + 32 len 32 * _2798]
                var42001 = _2798
                mem[mem[64] + 32] = _2621
                return memory
                  from mem[64]
                   len _2739 + (32 * _2798) + -mem[64] + 96
            mem[_2304 + 32 len 32 * _2231] = call.data[calldata.size len 32 * _2231]
            _2553 = mem[_2304]
            idx = 0
            while idx < _2553:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2304]:
                    revert with 0, 50
                mem[(32 * idx) + _2304 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _2553 = mem[_2304]
                idx = idx + 1
                continue 
            _2625 = mem[192]
            _2740 = mem[64]
            mem[mem[64]] = 64
            _2799 = mem[_2304]
            mem[mem[64] + 64] = mem[_2304]
            mem[mem[64] + 96 len 32 * _2799] = mem[_2304 + 32 len 32 * _2799]
            mem[mem[64] + 32] = _2625
            return memory
              from mem[64]
               len _2740 + (32 * _2799) + -mem[64] + 96
        if 31 >= stor4[arg1].field_1025 % 128:
            mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
            mem[224] = 384
            mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
            s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _816 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_816] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_816 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_816 + 32] = stor4[arg1][idx + 5].field_0
                                t = _816 + 32
                                u = sha3(mem[0])
                                while _816 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _816
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _816
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_816 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _816
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_816 + 32] = stor4[arg1][idx + 5].field_0
                    t = _816 + 32
                    u = sha3(mem[0])
                    while _816 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _816
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _840 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_840] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _840
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_840 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _840
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_840 + 32] = stor4[arg1][idx + 5].field_0
                    t = _840 + 32
                    u = sha3(mem[0])
                    while _840 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _840
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_840 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_840 + 32] = stor4[arg1][idx + 5].field_0
                        t = _840 + 32
                        u = sha3(mem[0])
                        while _840 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _840
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _727 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_727] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _727
                if uint8(stor4[arg1].field_1536):
                    _774 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                        revert with 0, 65
                    _813 = mem[64]
                    mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                    mem[64] = mem[64] + (32 * _774) + 32
                    if not _774:
                        _1433 = mem[_813]
                        idx = 0
                        while idx < _1433:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_813]:
                                revert with 0, 50
                            mem[(32 * idx) + _813 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1505 = mem[192]
                        _1605 = mem[64]
                        mem[mem[64]] = 64
                        _1641 = mem[_813]
                        mem[mem[64] + 64] = mem[_813]
                        mem[mem[64] + 96 len 32 * _1641] = mem[_813 + 32 len 32 * _1641]
                        mem[mem[64] + 32] = _1505
                        return memory
                          from mem[64]
                           len _1605 + (32 * _1641) + -mem[64] + 96
                    mem[_813 + 32 len 32 * _774] = call.data[calldata.size len 32 * _774]
                    _1434 = mem[_813]
                    idx = 0
                    while idx < _1434:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_813]:
                            revert with 0, 50
                        mem[(32 * idx) + _813 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1509 = mem[192]
                    _1606 = mem[64]
                    mem[mem[64]] = 64
                    _1642 = mem[_813]
                    mem[mem[64] + 64] = mem[_813]
                    mem[mem[64] + 96 len 32 * _1642] = mem[_813 + 32 len 32 * _1642]
                    mem[mem[64] + 32] = _1509
                    return memory
                      from mem[64]
                       len _1606 + (32 * _1642) + -mem[64] + 96
                mem[0] = msg.sender
                mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                    revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                _907 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                    revert with 0, 65
                _977 = mem[64]
                mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                mem[64] = mem[64] + (32 * _907) + 32
                if not _907:
                    _1435 = mem[_977]
                    idx = 0
                    while idx < _1435:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_977]:
                            revert with 0, 50
                        mem[(32 * idx) + _977 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1513 = mem[192]
                    _1607 = mem[64]
                    mem[mem[64]] = 64
                    _1643 = mem[_977]
                    mem[mem[64] + 64] = mem[_977]
                    mem[mem[64] + 96 len 32 * _1643] = mem[_977 + 32 len 32 * _1643]
                    mem[mem[64] + 32] = _1513
                    return memory
                      from mem[64]
                       len _1607 + (32 * _1643) + -mem[64] + 96
                mem[_977 + 32 len 32 * _907] = call.data[calldata.size len 32 * _907]
                _1436 = mem[_977]
                idx = 0
                while idx < _1436:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_977]:
                        revert with 0, 50
                    mem[(32 * idx) + _977 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1517 = mem[192]
                _1608 = mem[64]
                mem[mem[64]] = 64
                _1644 = mem[_977]
                mem[mem[64] + 64] = mem[_977]
                mem[mem[64] + 96 len 32 * _1644] = mem[_977 + 32 len 32 * _1644]
                mem[mem[64] + 32] = _1517
                return memory
                  from mem[64]
                   len _1608 + (32 * _1644) + -mem[64] + 96
            mem[0] = sha3(arg1, 4) + 7
            mem[_727 + 32] = address(stor4[arg1][7].field_0)
            idx = _727 + 32
            s = 0
            while _727 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _727
            if mem[288]:
                _2098 = mem[mem[256]]
                if mem[mem[256]] > test266151307():
                    revert with 0, 65
                _2158 = mem[64]
                mem[mem[64]] = mem[mem[256]]
                mem[64] = mem[64] + (32 * _2098) + 32
                if not _2098:
                    _2555 = mem[_2158]
                    idx = 0
                    while idx < _2555:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2158]:
                            revert with 0, 50
                        mem[(32 * idx) + _2158 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _2555 = mem[_2158]
                        idx = idx + 1
                        continue 
                    _2633 = mem[192]
                    _2749 = mem[64]
                    mem[mem[64]] = 64
                    _2803 = mem[_2158]
                    mem[mem[64] + 64] = mem[_2158]
                    mem[mem[64] + 96 len 32 * _2803] = mem[_2158 + 32 len 32 * _2803]
                    var40001 = _2803
                    mem[mem[64] + 32] = _2633
                    return memory
                      from mem[64]
                       len _2749 + (32 * _2803) + -mem[64] + 96
                mem[_2158 + 32 len 32 * _2098] = call.data[calldata.size len 32 * _2098]
                _2556 = mem[_2158]
                idx = 0
                while idx < _2556:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2158]:
                        revert with 0, 50
                    mem[(32 * idx) + _2158 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2556 = mem[_2158]
                    idx = idx + 1
                    continue 
                _2637 = mem[192]
                _2750 = mem[64]
                mem[mem[64]] = 64
                _2804 = mem[_2158]
                mem[mem[64] + 64] = mem[_2158]
                mem[mem[64] + 96 len 32 * _2804] = mem[_2158 + 32 len 32 * _2804]
                mem[mem[64] + 32] = _2637
                return memory
                  from mem[64]
                   len _2750 + (32 * _2804) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _2243 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2311 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2243) + 32
            if not _2243:
                _2557 = mem[_2311]
                idx = 0
                while idx < _2557:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2311]:
                        revert with 0, 50
                    mem[(32 * idx) + _2311 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2557 = mem[_2311]
                    idx = idx + 1
                    continue 
                _2641 = mem[192]
                _2751 = mem[64]
                mem[mem[64]] = 64
                _2805 = mem[_2311]
                mem[mem[64] + 64] = mem[_2311]
                mem[mem[64] + 96 len 32 * _2805] = mem[_2311 + 32 len 32 * _2805]
                var44001 = _2805
                mem[mem[64] + 32] = _2641
                return memory
                  from mem[64]
                   len _2751 + (32 * _2805) + -mem[64] + 96
            mem[_2311 + 32 len 32 * _2243] = call.data[calldata.size len 32 * _2243]
            _2558 = mem[_2311]
            idx = 0
            while idx < _2558:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2311]:
                    revert with 0, 50
                mem[(32 * idx) + _2311 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _2558 = mem[_2311]
                idx = idx + 1
                continue 
            _2645 = mem[192]
            _2752 = mem[64]
            mem[mem[64]] = 64
            _2806 = mem[_2311]
            mem[mem[64] + 64] = mem[_2311]
            mem[mem[64] + 96 len 32 * _2806] = mem[_2311 + 32 len 32 * _2806]
            mem[mem[64] + 32] = _2645
            return memory
              from mem[64]
               len _2752 + (32 * _2806) + -mem[64] + 96
        mem[0] = sha3(arg1, 4) + 4
        mem[416] = stor4[arg1][4].field_0
        idx = 416
        s = 0
        while stor4[arg1].field_1025 % 128 + 384 > idx:
            mem[idx + 32] = stor4[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[224] = 384
        mem[64] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + (32 * stor4[arg1].field_1280) + 448
        mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] = stor4[arg1].field_1280
        s = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 448
        idx = 0
        while idx < stor4[arg1].field_1280:
            mem[0] = sha3(arg1, 4) + 5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1696 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                mem[_1696] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_1696 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_1696 + 32] = stor4[arg1][idx + 5].field_0
                            t = _1696 + 32
                            u = sha3(mem[0])
                            while _1696 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _1696
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[arg1][idx + 5].field_1 % 128:
                    mem[s] = _1696
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_1696 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _1696
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_1696 + 32] = stor4[arg1][idx + 5].field_0
                t = _1696 + 32
                u = sha3(mem[0])
                while _1696 + stor4[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _1696
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _1738 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
            mem[_1738] = stor4[arg1][idx + 5].field_1 % 128
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    mem[s] = _1738
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                    mem[_1738 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _1738
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_1738 + 32] = stor4[arg1][idx + 5].field_0
                t = _1738 + 32
                u = sha3(mem[0])
                while _1738 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _1738
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][idx + 5].field_1 % 128:
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_1738 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_1738 + 32] = stor4[arg1][idx + 5].field_0
                    t = _1738 + 32
                    u = sha3(mem[0])
                    while _1738 + stor4[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _1738
            s = s + 32
            idx = idx + 1
            continue 
        mem[256] = ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416
        mem[288] = bool(uint8(stor4[arg1].field_1536))
        mem[320] = address(stor4[arg1].field_1544)
        _1503 = mem[64]
        mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
        mem[_1503] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[352] = _1503
            if uint8(stor4[arg1].field_1536):
                _1666 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                    revert with 0, 65
                _1693 = mem[64]
                mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
                mem[64] = mem[64] + (32 * _1666) + 32
                if not _1666:
                    _1948 = mem[_1693]
                    idx = 0
                    while idx < _1948:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_1693]:
                            revert with 0, 50
                        mem[(32 * idx) + _1693 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _1948 = mem[_1693]
                        idx = idx + 1
                        continue 
                    _1993 = mem[192]
                    _2089 = mem[64]
                    mem[mem[64]] = 64
                    _2154 = mem[_1693]
                    mem[mem[64] + 64] = mem[_1693]
                    mem[mem[64] + 96 len 32 * _2154] = mem[_1693 + 32 len 32 * _2154]
                    s = _2154
                    idx = _1693 + (32 * _2154) + 32
                    mem[mem[64] + 32] = _1993
                    return memory
                      from mem[64]
                       len _2089 + (32 * _2154) + -mem[64] + 96
                mem[_1693 + 32 len 32 * _1666] = call.data[calldata.size len 32 * _1666]
                _1949 = mem[_1693]
                idx = 0
                while idx < _1949:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_1693]:
                        revert with 0, 50
                    mem[(32 * idx) + _1693 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _1949 = mem[_1693]
                    idx = idx + 1
                    continue 
                _1997 = mem[192]
                _2090 = mem[64]
                mem[mem[64]] = 64
                _2155 = mem[_1693]
                mem[mem[64] + 64] = mem[_1693]
                mem[mem[64] + 96 len 32 * _2155] = mem[_1693 + 32 len 32 * _2155]
                var40001 = _2155
                var40002 = _1693 + (32 * _2155) + 32
                mem[mem[64] + 32] = _1997
                return memory
                  from mem[64]
                   len _2090 + (32 * _2155) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _1779 = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
            if mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416] > test266151307():
                revert with 0, 65
            _1809 = mem[64]
            mem[mem[64]] = mem[ceil32(uint255(stor4[arg1].field_1024) * 0.5) + 416]
            mem[64] = mem[64] + (32 * _1779) + 32
            if not _1779:
                _1950 = mem[_1809]
                idx = 0
                while idx < _1950:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_1809]:
                        revert with 0, 50
                    mem[(32 * idx) + _1809 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _1950 = mem[_1809]
                    idx = idx + 1
                    continue 
                _2001 = mem[192]
                _2091 = mem[64]
                mem[mem[64]] = 64
                _2156 = mem[_1809]
                mem[mem[64] + 64] = mem[_1809]
                mem[mem[64] + 96 len 32 * _2156] = mem[_1809 + 32 len 32 * _2156]
                var43001 = _2156
                mem[mem[64] + 32] = _2001
                return memory
                  from mem[64]
                   len _2091 + (32 * _2156) + -mem[64] + 96
            mem[_1809 + 32 len 32 * _1779] = call.data[calldata.size len 32 * _1779]
            _1951 = mem[_1809]
            idx = 0
            while idx < _1951:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_1809]:
                    revert with 0, 50
                mem[(32 * idx) + _1809 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _1951 = mem[_1809]
                idx = idx + 1
                continue 
            _2005 = mem[192]
            _2092 = mem[64]
            mem[mem[64]] = 64
            _2157 = mem[_1809]
            mem[mem[64] + 64] = mem[_1809]
            mem[mem[64] + 96 len 32 * _2157] = mem[_1809 + 32 len 32 * _2157]
            mem[mem[64] + 32] = _2005
            return memory
              from mem[64]
               len _2092 + (32 * _2157) + -mem[64] + 96
        mem[0] = sha3(arg1, 4) + 7
        mem[_1503 + 32] = address(stor4[arg1][7].field_0)
        idx = _1503 + 32
        s = 0
        while _1503 + (32 * stor4[arg1].field_1792) > idx:
            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[352] = _1503
        if mem[288]:
            _2746 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2800 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2746) + 32
            if not _2746:
                _3061 = mem[_2800]
                idx = 0
                while idx < _3061:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2800]:
                        revert with 0, 50
                    mem[(32 * idx) + _2800 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _3061 = mem[_2800]
                    idx = idx + 1
                    continue 
                _3101 = mem[192]
                _3185 = mem[64]
                mem[mem[64]] = 64
                _3221 = mem[_2800]
                mem[mem[64] + 64] = mem[_2800]
                mem[mem[64] + 96 len 32 * _3221] = mem[_2800 + 32 len 32 * _3221]
                var43001 = _3221
                mem[mem[64] + 32] = _3101
                return memory
                  from mem[64]
                   len _3185 + (32 * _3221) + -mem[64] + 96
            mem[_2800 + 32 len 32 * _2746] = call.data[calldata.size len 32 * _2746]
            _3062 = mem[_2800]
            idx = 0
            while idx < _3062:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2800]:
                    revert with 0, 50
                mem[(32 * idx) + _2800 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _3062 = mem[_2800]
                idx = idx + 1
                continue 
            _3105 = mem[192]
            _3186 = mem[64]
            mem[mem[64]] = 64
            _3222 = mem[_2800]
            mem[mem[64] + 64] = mem[_2800]
            mem[mem[64] + 96 len 32 * _3222] = mem[_2800 + 32 len 32 * _3222]
            mem[mem[64] + 32] = _3105
            return memory
              from mem[64]
               len _3186 + (32 * _3222) + -mem[64] + 96
        mem[0] = msg.sender
        mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
        if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
            revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
        _2891 = mem[mem[256]]
        if mem[mem[256]] > test266151307():
            revert with 0, 65
        _2941 = mem[64]
        mem[mem[64]] = mem[mem[256]]
        mem[64] = mem[64] + (32 * _2891) + 32
        if not _2891:
            _3063 = mem[_2941]
            idx = 0
            while idx < _3063:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2941]:
                    revert with 0, 50
                mem[(32 * idx) + _2941 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _3063 = mem[_2941]
                idx = idx + 1
                continue 
            _3109 = mem[192]
            _3187 = mem[64]
            mem[mem[64]] = 64
            _3223 = mem[_2941]
            mem[mem[64] + 64] = mem[_2941]
            mem[mem[64] + 96 len 32 * _3223] = mem[_2941 + 32 len 32 * _3223]
            var47001 = _3223
            mem[mem[64] + 32] = _3109
            return memory
              from mem[64]
               len _3187 + (32 * _3223) + -mem[64] + 96
        mem[_2941 + 32 len 32 * _2891] = call.data[calldata.size len 32 * _2891]
        _3064 = mem[_2941]
        idx = 0
        while idx < _3064:
            mem[0] = idx
            mem[32] = sha3(arg1, 6)
            if idx >= mem[_2941]:
                revert with 0, 50
            mem[(32 * idx) + _2941 + 32] = stor6[arg1][idx]
            if idx == -1:
                revert with 0, 17
            _3064 = mem[_2941]
            idx = idx + 1
            continue 
        _3113 = mem[192]
        _3188 = mem[64]
        mem[mem[64]] = 64
        _3224 = mem[_2941]
        mem[mem[64] + 64] = mem[_2941]
        mem[mem[64] + 96 len 32 * _3224] = mem[_2941 + 32 len 32 * _3224]
        mem[mem[64] + 32] = _3113
        return memory
          from mem[64]
           len _3188 + (32 * _3224) + -mem[64] + 96
    if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
        revert with 0, 34
    mem[384] = stor4[arg1].field_1025 % 128
    if bool(stor4[arg1].field_1024):
        if bool(stor4[arg1].field_1024) == uint255(stor4[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor4[arg1].field_1024):
            mem[224] = 384
            mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
            s = ceil32(stor4[arg1].field_1025 % 128) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _820 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_820] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_820 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_820 + 32] = stor4[arg1][idx + 5].field_0
                                t = _820 + 32
                                u = sha3(mem[0])
                                while _820 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _820
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _820
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_820 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _820
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_820 + 32] = stor4[arg1][idx + 5].field_0
                    t = _820 + 32
                    u = sha3(mem[0])
                    while _820 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _820
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _841 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_841] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _841
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_841 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _841
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_841 + 32] = stor4[arg1][idx + 5].field_0
                    t = _841 + 32
                    u = sha3(mem[0])
                    while _841 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _841
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_841 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_841 + 32] = stor4[arg1][idx + 5].field_0
                        t = _841 + 32
                        u = sha3(mem[0])
                        while _841 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _841
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _729 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_729] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _729
                if uint8(stor4[arg1].field_1536):
                    _778 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                    if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                        revert with 0, 65
                    _817 = mem[64]
                    mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                    mem[64] = mem[64] + (32 * _778) + 32
                    if not _778:
                        _1437 = mem[_817]
                        idx = 0
                        while idx < _1437:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_817]:
                                revert with 0, 50
                            mem[(32 * idx) + _817 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1521 = mem[192]
                        _1609 = mem[64]
                        mem[mem[64]] = 64
                        _1645 = mem[_817]
                        mem[mem[64] + 64] = mem[_817]
                        mem[mem[64] + 96 len 32 * _1645] = mem[_817 + 32 len 32 * _1645]
                        mem[mem[64] + 32] = _1521
                        return memory
                          from mem[64]
                           len _1609 + (32 * _1645) + -mem[64] + 96
                    mem[_817 + 32 len 32 * _778] = call.data[calldata.size len 32 * _778]
                    _1438 = mem[_817]
                    idx = 0
                    while idx < _1438:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_817]:
                            revert with 0, 50
                        mem[(32 * idx) + _817 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1525 = mem[192]
                    _1610 = mem[64]
                    mem[mem[64]] = 64
                    _1646 = mem[_817]
                    mem[mem[64] + 64] = mem[_817]
                    mem[mem[64] + 96 len 32 * _1646] = mem[_817 + 32 len 32 * _1646]
                    mem[mem[64] + 32] = _1525
                    return memory
                      from mem[64]
                       len _1610 + (32 * _1646) + -mem[64] + 96
                mem[0] = msg.sender
                mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                    revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                _915 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                    revert with 0, 65
                _984 = mem[64]
                mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[64] = mem[64] + (32 * _915) + 32
                if not _915:
                    _1439 = mem[_984]
                    idx = 0
                    while idx < _1439:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_984]:
                            revert with 0, 50
                        mem[(32 * idx) + _984 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1529 = mem[192]
                    _1611 = mem[64]
                    mem[mem[64]] = 64
                    _1647 = mem[_984]
                    mem[mem[64] + 64] = mem[_984]
                    mem[mem[64] + 96 len 32 * _1647] = mem[_984 + 32 len 32 * _1647]
                    mem[mem[64] + 32] = _1529
                    return memory
                      from mem[64]
                       len _1611 + (32 * _1647) + -mem[64] + 96
                mem[_984 + 32 len 32 * _915] = call.data[calldata.size len 32 * _915]
                _1440 = mem[_984]
                idx = 0
                while idx < _1440:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_984]:
                        revert with 0, 50
                    mem[(32 * idx) + _984 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1533 = mem[192]
                _1612 = mem[64]
                mem[mem[64]] = 64
                _1648 = mem[_984]
                mem[mem[64] + 64] = mem[_984]
                mem[mem[64] + 96 len 32 * _1648] = mem[_984 + 32 len 32 * _1648]
                mem[mem[64] + 32] = _1533
                return memory
                  from mem[64]
                   len _1612 + (32 * _1648) + -mem[64] + 96
            mem[0] = sha3(arg1, 4) + 7
            mem[_729 + 32] = address(stor4[arg1][7].field_0)
            idx = _729 + 32
            s = 0
            while _729 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _729
            if mem[288]:
                _2106 = mem[mem[256]]
                if mem[mem[256]] > test266151307():
                    revert with 0, 65
                _2161 = mem[64]
                mem[mem[64]] = mem[mem[256]]
                mem[64] = mem[64] + (32 * _2106) + 32
                if not _2106:
                    _2559 = mem[_2161]
                    idx = 0
                    while idx < _2559:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2161]:
                            revert with 0, 50
                        mem[(32 * idx) + _2161 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _2559 = mem[_2161]
                        idx = idx + 1
                        continue 
                    _2649 = mem[192]
                    _2753 = mem[64]
                    mem[mem[64]] = 64
                    _2807 = mem[_2161]
                    mem[mem[64] + 64] = mem[_2161]
                    mem[mem[64] + 96 len 32 * _2807] = mem[_2161 + 32 len 32 * _2807]
                    var38001 = _2807
                    mem[mem[64] + 32] = _2649
                    return memory
                      from mem[64]
                       len _2753 + (32 * _2807) + -mem[64] + 96
                mem[_2161 + 32 len 32 * _2106] = call.data[calldata.size len 32 * _2106]
                _2560 = mem[_2161]
                idx = 0
                while idx < _2560:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2161]:
                        revert with 0, 50
                    mem[(32 * idx) + _2161 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2560 = mem[_2161]
                    idx = idx + 1
                    continue 
                _2653 = mem[192]
                _2754 = mem[64]
                mem[mem[64]] = 64
                _2808 = mem[_2161]
                mem[mem[64] + 64] = mem[_2161]
                mem[mem[64] + 96 len 32 * _2808] = mem[_2161 + 32 len 32 * _2808]
                mem[mem[64] + 32] = _2653
                return memory
                  from mem[64]
                   len _2754 + (32 * _2808) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _2251 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2318 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2251) + 32
            if not _2251:
                _2561 = mem[_2318]
                idx = 0
                while idx < _2561:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2318]:
                        revert with 0, 50
                    mem[(32 * idx) + _2318 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2561 = mem[_2318]
                    idx = idx + 1
                    continue 
                _2657 = mem[192]
                _2755 = mem[64]
                mem[mem[64]] = 64
                _2809 = mem[_2318]
                mem[mem[64] + 64] = mem[_2318]
                mem[mem[64] + 96 len 32 * _2809] = mem[_2318 + 32 len 32 * _2809]
                var42001 = _2809
                mem[mem[64] + 32] = _2657
                return memory
                  from mem[64]
                   len _2755 + (32 * _2809) + -mem[64] + 96
            mem[_2318 + 32 len 32 * _2251] = call.data[calldata.size len 32 * _2251]
            _2562 = mem[_2318]
            idx = 0
            while idx < _2562:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2318]:
                    revert with 0, 50
                mem[(32 * idx) + _2318 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _2562 = mem[_2318]
                idx = idx + 1
                continue 
            _2661 = mem[192]
            _2756 = mem[64]
            mem[mem[64]] = 64
            _2810 = mem[_2318]
            mem[mem[64] + 64] = mem[_2318]
            mem[mem[64] + 96 len 32 * _2810] = mem[_2318 + 32 len 32 * _2810]
            mem[mem[64] + 32] = _2661
            return memory
              from mem[64]
               len _2756 + (32 * _2810) + -mem[64] + 96
        if 31 >= uint255(stor4[arg1].field_1024) * 0.5:
            mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
            mem[224] = 384
            mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
            mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
            s = ceil32(stor4[arg1].field_1025 % 128) + 448
            idx = 0
            while idx < stor4[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _826 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                    mem[_826] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                    if bool(stor4[arg1][idx + 5].field_0):
                        if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                                mem[_826 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                mem[_826 + 32] = stor4[arg1][idx + 5].field_0
                                t = _826 + 32
                                u = sha3(mem[0])
                                while _826 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                    mem[t + 32] = roleAdmin[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[s] = _826
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor4[arg1][idx + 5].field_1 % 128:
                        mem[s] = _826
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_826 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _826
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_826 + 32] = stor4[arg1][idx + 5].field_0
                    t = _826 + 32
                    u = sha3(mem[0])
                    while _826 + stor4[arg1][u + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _826
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                _842 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
                mem[_842] = stor4[arg1][idx + 5].field_1 % 128
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        mem[s] = _842
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_842 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        mem[s] = _842
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_842 + 32] = stor4[arg1][idx + 5].field_0
                    t = _842 + 32
                    u = sha3(mem[0])
                    while _842 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[t] = _842
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if stor4[arg1][idx + 5].field_1 % 128:
                    if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                        mem[_842 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_842 + 32] = stor4[arg1][idx + 5].field_0
                        t = _842 + 32
                        u = sha3(mem[0])
                        while _842 + stor4[arg1][idx + 5].field_1 % 128 > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _842
                s = s + 32
                idx = idx + 1
                continue 
            mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
            mem[288] = bool(uint8(stor4[arg1].field_1536))
            mem[320] = address(stor4[arg1].field_1544)
            _731 = mem[64]
            mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
            mem[_731] = stor4[arg1].field_1792
            if not stor4[arg1].field_1792:
                mem[352] = _731
                if uint8(stor4[arg1].field_1536):
                    _784 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                    if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                        revert with 0, 65
                    _823 = mem[64]
                    mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                    mem[64] = mem[64] + (32 * _784) + 32
                    if not _784:
                        _1441 = mem[_823]
                        idx = 0
                        while idx < _1441:
                            mem[0] = idx
                            mem[32] = sha3(arg1, 6)
                            if idx >= mem[_823]:
                                revert with 0, 50
                            mem[(32 * idx) + _823 + 32] = stor6[arg1][idx]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1539 = mem[192]
                        _1615 = mem[64]
                        mem[mem[64]] = 64
                        _1649 = mem[_823]
                        mem[mem[64] + 64] = mem[_823]
                        mem[mem[64] + 96 len 32 * _1649] = mem[_823 + 32 len 32 * _1649]
                        mem[mem[64] + 32] = _1539
                        return memory
                          from mem[64]
                           len _1615 + (32 * _1649) + -mem[64] + 96
                    mem[_823 + 32 len 32 * _784] = call.data[calldata.size len 32 * _784]
                    _1442 = mem[_823]
                    idx = 0
                    while idx < _1442:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_823]:
                            revert with 0, 50
                        mem[(32 * idx) + _823 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1543 = mem[192]
                    _1616 = mem[64]
                    mem[mem[64]] = 64
                    _1650 = mem[_823]
                    mem[mem[64] + 64] = mem[_823]
                    mem[mem[64] + 96 len 32 * _1650] = mem[_823 + 32 len 32 * _1650]
                    mem[mem[64] + 32] = _1543
                    return memory
                      from mem[64]
                       len _1616 + (32 * _1650) + -mem[64] + 96
                mem[0] = msg.sender
                mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
                if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                    revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
                _927 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                    revert with 0, 65
                _992 = mem[64]
                mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[64] = mem[64] + (32 * _927) + 32
                if not _927:
                    _1443 = mem[_992]
                    idx = 0
                    while idx < _1443:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_992]:
                            revert with 0, 50
                        mem[(32 * idx) + _992 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1547 = mem[192]
                    _1617 = mem[64]
                    mem[mem[64]] = 64
                    _1651 = mem[_992]
                    mem[mem[64] + 64] = mem[_992]
                    mem[mem[64] + 96 len 32 * _1651] = mem[_992 + 32 len 32 * _1651]
                    mem[mem[64] + 32] = _1547
                    return memory
                      from mem[64]
                       len _1617 + (32 * _1651) + -mem[64] + 96
                mem[_992 + 32 len 32 * _927] = call.data[calldata.size len 32 * _927]
                _1444 = mem[_992]
                idx = 0
                while idx < _1444:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_992]:
                        revert with 0, 50
                    mem[(32 * idx) + _992 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1551 = mem[192]
                _1618 = mem[64]
                mem[mem[64]] = 64
                _1652 = mem[_992]
                mem[mem[64] + 64] = mem[_992]
                mem[mem[64] + 96 len 32 * _1652] = mem[_992 + 32 len 32 * _1652]
                mem[mem[64] + 32] = _1551
                return memory
                  from mem[64]
                   len _1618 + (32 * _1652) + -mem[64] + 96
            mem[0] = sha3(arg1, 4) + 7
            mem[_731 + 32] = address(stor4[arg1][7].field_0)
            idx = _731 + 32
            s = 0
            while _731 + (32 * stor4[arg1].field_1792) > idx:
                mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[352] = _731
            if mem[288]:
                _2118 = mem[mem[256]]
                if mem[mem[256]] > test266151307():
                    revert with 0, 65
                _2168 = mem[64]
                mem[mem[64]] = mem[mem[256]]
                mem[64] = mem[64] + (32 * _2118) + 32
                if not _2118:
                    _2564 = mem[_2168]
                    idx = 0
                    while idx < _2564:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_2168]:
                            revert with 0, 50
                        mem[(32 * idx) + _2168 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _2564 = mem[_2168]
                        idx = idx + 1
                        continue 
                    _2669 = mem[192]
                    _2765 = mem[64]
                    mem[mem[64]] = 64
                    _2814 = mem[_2168]
                    mem[mem[64] + 64] = mem[_2168]
                    mem[mem[64] + 96 len 32 * _2814] = mem[_2168 + 32 len 32 * _2814]
                    var40001 = _2814
                    mem[mem[64] + 32] = _2669
                    return memory
                      from mem[64]
                       len _2765 + (32 * _2814) + -mem[64] + 96
                mem[_2168 + 32 len 32 * _2118] = call.data[calldata.size len 32 * _2118]
                _2565 = mem[_2168]
                idx = 0
                while idx < _2565:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2168]:
                        revert with 0, 50
                    mem[(32 * idx) + _2168 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2565 = mem[_2168]
                    idx = idx + 1
                    continue 
                _2673 = mem[192]
                _2766 = mem[64]
                mem[mem[64]] = 64
                _2815 = mem[_2168]
                mem[mem[64] + 64] = mem[_2168]
                mem[mem[64] + 96 len 32 * _2815] = mem[_2168 + 32 len 32 * _2815]
                mem[mem[64] + 32] = _2673
                return memory
                  from mem[64]
                   len _2766 + (32 * _2815) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _2263 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2325 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2263) + 32
            if not _2263:
                _2566 = mem[_2325]
                idx = 0
                while idx < _2566:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2325]:
                        revert with 0, 50
                    mem[(32 * idx) + _2325 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2566 = mem[_2325]
                    idx = idx + 1
                    continue 
                _2677 = mem[192]
                _2767 = mem[64]
                mem[mem[64]] = 64
                _2816 = mem[_2325]
                mem[mem[64] + 64] = mem[_2325]
                mem[mem[64] + 96 len 32 * _2816] = mem[_2325 + 32 len 32 * _2816]
                var44001 = _2816
                mem[mem[64] + 32] = _2677
                return memory
                  from mem[64]
                   len _2767 + (32 * _2816) + -mem[64] + 96
            mem[_2325 + 32 len 32 * _2263] = call.data[calldata.size len 32 * _2263]
            _2567 = mem[_2325]
            idx = 0
            while idx < _2567:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2325]:
                    revert with 0, 50
                mem[(32 * idx) + _2325 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _2567 = mem[_2325]
                idx = idx + 1
                continue 
            _2681 = mem[192]
            _2768 = mem[64]
            mem[mem[64]] = 64
            _2817 = mem[_2325]
            mem[mem[64] + 64] = mem[_2325]
            mem[mem[64] + 96 len 32 * _2817] = mem[_2325 + 32 len 32 * _2817]
            mem[mem[64] + 32] = _2681
            return memory
              from mem[64]
               len _2768 + (32 * _2817) + -mem[64] + 96
        mem[0] = sha3(arg1, 4) + 4
        mem[416] = stor4[arg1][4].field_0
        idx = 416
        s = 0
        while (uint255(stor4[arg1].field_1024) * 0.5) + 384 > idx:
            mem[idx + 32] = stor4[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[224] = 384
        mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
        mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
        s = ceil32(stor4[arg1].field_1025 % 128) + 448
        idx = 0
        while idx < stor4[arg1].field_1280:
            mem[0] = sha3(arg1, 4) + 5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1708 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                mem[_1708] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_1708 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_1708 + 32] = stor4[arg1][idx + 5].field_0
                            t = _1708 + 32
                            u = sha3(mem[0])
                            while _1708 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _1708
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[arg1][idx + 5].field_1 % 128:
                    mem[s] = _1708
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_1708 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _1708
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_1708 + 32] = stor4[arg1][idx + 5].field_0
                t = _1708 + 32
                u = sha3(mem[0])
                while _1708 + stor4[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _1708
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _1747 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
            mem[_1747] = stor4[arg1][idx + 5].field_1 % 128
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    mem[s] = _1747
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                    mem[_1747 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _1747
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_1747 + 32] = stor4[arg1][idx + 5].field_0
                t = _1747 + 32
                u = sha3(mem[0])
                while _1747 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _1747
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][idx + 5].field_1 % 128:
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_1747 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_1747 + 32] = stor4[arg1][idx + 5].field_0
                    t = _1747 + 32
                    u = sha3(mem[0])
                    while _1747 + stor4[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _1747
            s = s + 32
            idx = idx + 1
            continue 
        mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
        mem[288] = bool(uint8(stor4[arg1].field_1536))
        mem[320] = address(stor4[arg1].field_1544)
        _1537 = mem[64]
        mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
        mem[_1537] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[352] = _1537
            if uint8(stor4[arg1].field_1536):
                _1670 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                    revert with 0, 65
                _1705 = mem[64]
                mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[64] = mem[64] + (32 * _1670) + 32
                if not _1670:
                    _1954 = mem[_1705]
                    idx = 0
                    while idx < _1954:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_1705]:
                            revert with 0, 50
                        mem[(32 * idx) + _1705 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        _1954 = mem[_1705]
                        idx = idx + 1
                        continue 
                    _2017 = mem[192]
                    _2109 = mem[64]
                    mem[mem[64]] = 64
                    _2164 = mem[_1705]
                    mem[mem[64] + 64] = mem[_1705]
                    mem[mem[64] + 96 len 32 * _2164] = mem[_1705 + 32 len 32 * _2164]
                    s = _2164
                    idx = _1705 + (32 * _2164) + 32
                    mem[mem[64] + 32] = _2017
                    return memory
                      from mem[64]
                       len _2109 + (32 * _2164) + -mem[64] + 96
                mem[_1705 + 32 len 32 * _1670] = call.data[calldata.size len 32 * _1670]
                _1955 = mem[_1705]
                idx = 0
                while idx < _1955:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_1705]:
                        revert with 0, 50
                    mem[(32 * idx) + _1705 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _1955 = mem[_1705]
                    idx = idx + 1
                    continue 
                _2021 = mem[192]
                _2110 = mem[64]
                mem[mem[64]] = 64
                _2165 = mem[_1705]
                mem[mem[64] + 64] = mem[_1705]
                mem[mem[64] + 96 len 32 * _2165] = mem[_1705 + 32 len 32 * _2165]
                var40001 = _2165
                var40002 = _1705 + (32 * _2165) + 32
                mem[mem[64] + 32] = _2021
                return memory
                  from mem[64]
                   len _2110 + (32 * _2165) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _1787 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                revert with 0, 65
            _1816 = mem[64]
            mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            mem[64] = mem[64] + (32 * _1787) + 32
            if not _1787:
                _1956 = mem[_1816]
                idx = 0
                while idx < _1956:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_1816]:
                        revert with 0, 50
                    mem[(32 * idx) + _1816 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _1956 = mem[_1816]
                    idx = idx + 1
                    continue 
                _2025 = mem[192]
                _2111 = mem[64]
                mem[mem[64]] = 64
                _2166 = mem[_1816]
                mem[mem[64] + 64] = mem[_1816]
                mem[mem[64] + 96 len 32 * _2166] = mem[_1816 + 32 len 32 * _2166]
                var43001 = _2166
                mem[mem[64] + 32] = _2025
                return memory
                  from mem[64]
                   len _2111 + (32 * _2166) + -mem[64] + 96
            mem[_1816 + 32 len 32 * _1787] = call.data[calldata.size len 32 * _1787]
            _1957 = mem[_1816]
            idx = 0
            while idx < _1957:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_1816]:
                    revert with 0, 50
                mem[(32 * idx) + _1816 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _1957 = mem[_1816]
                idx = idx + 1
                continue 
            _2029 = mem[192]
            _2112 = mem[64]
            mem[mem[64]] = 64
            _2167 = mem[_1816]
            mem[mem[64] + 64] = mem[_1816]
            mem[mem[64] + 96 len 32 * _2167] = mem[_1816 + 32 len 32 * _2167]
            mem[mem[64] + 32] = _2029
            return memory
              from mem[64]
               len _2112 + (32 * _2167) + -mem[64] + 96
        mem[0] = sha3(arg1, 4) + 7
        mem[_1537 + 32] = address(stor4[arg1][7].field_0)
        idx = _1537 + 32
        s = 0
        while _1537 + (32 * stor4[arg1].field_1792) > idx:
            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[352] = _1537
        if mem[288]:
            _2762 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2811 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2762) + 32
            if not _2762:
                _3065 = mem[_2811]
                idx = 0
                while idx < _3065:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2811]:
                        revert with 0, 50
                    mem[(32 * idx) + _2811 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _3065 = mem[_2811]
                    idx = idx + 1
                    continue 
                _3125 = mem[192]
                _3197 = mem[64]
                mem[mem[64]] = 64
                _3225 = mem[_2811]
                mem[mem[64] + 64] = mem[_2811]
                mem[mem[64] + 96 len 32 * _3225] = mem[_2811 + 32 len 32 * _3225]
                var43001 = _3225
                mem[mem[64] + 32] = _3125
                return memory
                  from mem[64]
                   len _3197 + (32 * _3225) + -mem[64] + 96
            mem[_2811 + 32 len 32 * _2762] = call.data[calldata.size len 32 * _2762]
            _3066 = mem[_2811]
            idx = 0
            while idx < _3066:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2811]:
                    revert with 0, 50
                mem[(32 * idx) + _2811 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _3066 = mem[_2811]
                idx = idx + 1
                continue 
            _3129 = mem[192]
            _3198 = mem[64]
            mem[mem[64]] = 64
            _3226 = mem[_2811]
            mem[mem[64] + 64] = mem[_2811]
            mem[mem[64] + 96 len 32 * _3226] = mem[_2811 + 32 len 32 * _3226]
            mem[mem[64] + 32] = _3129
            return memory
              from mem[64]
               len _3198 + (32 * _3226) + -mem[64] + 96
        mem[0] = msg.sender
        mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
        if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
            revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
        _2907 = mem[mem[256]]
        if mem[mem[256]] > test266151307():
            revert with 0, 65
        _2948 = mem[64]
        mem[mem[64]] = mem[mem[256]]
        mem[64] = mem[64] + (32 * _2907) + 32
        if not _2907:
            _3067 = mem[_2948]
            idx = 0
            while idx < _3067:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2948]:
                    revert with 0, 50
                mem[(32 * idx) + _2948 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _3067 = mem[_2948]
                idx = idx + 1
                continue 
            _3133 = mem[192]
            _3199 = mem[64]
            mem[mem[64]] = 64
            _3227 = mem[_2948]
            mem[mem[64] + 64] = mem[_2948]
            mem[mem[64] + 96 len 32 * _3227] = mem[_2948 + 32 len 32 * _3227]
            var47001 = _3227
            mem[mem[64] + 32] = _3133
            return memory
              from mem[64]
               len _3199 + (32 * _3227) + -mem[64] + 96
        mem[_2948 + 32 len 32 * _2907] = call.data[calldata.size len 32 * _2907]
        _3068 = mem[_2948]
        idx = 0
        while idx < _3068:
            mem[0] = idx
            mem[32] = sha3(arg1, 6)
            if idx >= mem[_2948]:
                revert with 0, 50
            mem[(32 * idx) + _2948 + 32] = stor6[arg1][idx]
            if idx == -1:
                revert with 0, 17
            _3068 = mem[_2948]
            idx = idx + 1
            continue 
        _3137 = mem[192]
        _3200 = mem[64]
        mem[mem[64]] = 64
        _3228 = mem[_2948]
        mem[mem[64] + 64] = mem[_2948]
        mem[mem[64] + 96 len 32 * _3228] = mem[_2948 + 32 len 32 * _3228]
        mem[mem[64] + 32] = _3137
        return memory
          from mem[64]
           len _3200 + (32 * _3228) + -mem[64] + 96
    if bool(stor4[arg1].field_1024) == stor4[arg1].field_1025 % 128 < 32:
        revert with 0, 34
    if not stor4[arg1].field_1025 % 128:
        mem[224] = 384
        mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
        mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
        s = ceil32(stor4[arg1].field_1025 % 128) + 448
        idx = 0
        while idx < stor4[arg1].field_1280:
            mem[0] = sha3(arg1, 4) + 5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                _830 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                mem[_830] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_830 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_830 + 32] = stor4[arg1][idx + 5].field_0
                            t = _830 + 32
                            u = sha3(mem[0])
                            while _830 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _830
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[arg1][idx + 5].field_1 % 128:
                    mem[s] = _830
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_830 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _830
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_830 + 32] = stor4[arg1][idx + 5].field_0
                t = _830 + 32
                u = sha3(mem[0])
                while _830 + stor4[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _830
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _843 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
            mem[_843] = stor4[arg1][idx + 5].field_1 % 128
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    mem[s] = _843
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                    mem[_843 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _843
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_843 + 32] = stor4[arg1][idx + 5].field_0
                t = _843 + 32
                u = sha3(mem[0])
                while _843 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _843
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][idx + 5].field_1 % 128:
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_843 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_843 + 32] = stor4[arg1][idx + 5].field_0
                    t = _843 + 32
                    u = sha3(mem[0])
                    while _843 + stor4[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _843
            s = s + 32
            idx = idx + 1
            continue 
        mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
        mem[288] = bool(uint8(stor4[arg1].field_1536))
        mem[320] = address(stor4[arg1].field_1544)
        _733 = mem[64]
        mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
        mem[_733] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[352] = _733
            if uint8(stor4[arg1].field_1536):
                _788 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                    revert with 0, 65
                _827 = mem[64]
                mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[64] = mem[64] + (32 * _788) + 32
                if not _788:
                    _1445 = mem[_827]
                    idx = 0
                    while idx < _1445:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_827]:
                            revert with 0, 50
                        mem[(32 * idx) + _827 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1555 = mem[192]
                    _1619 = mem[64]
                    mem[mem[64]] = 64
                    _1653 = mem[_827]
                    mem[mem[64] + 64] = mem[_827]
                    mem[mem[64] + 96 len 32 * _1653] = mem[_827 + 32 len 32 * _1653]
                    mem[mem[64] + 32] = _1555
                    return memory
                      from mem[64]
                       len _1619 + (32 * _1653) + -mem[64] + 96
                mem[_827 + 32 len 32 * _788] = call.data[calldata.size len 32 * _788]
                _1446 = mem[_827]
                idx = 0
                while idx < _1446:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_827]:
                        revert with 0, 50
                    mem[(32 * idx) + _827 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1559 = mem[192]
                _1620 = mem[64]
                mem[mem[64]] = 64
                _1654 = mem[_827]
                mem[mem[64] + 64] = mem[_827]
                mem[mem[64] + 96 len 32 * _1654] = mem[_827 + 32 len 32 * _1654]
                mem[mem[64] + 32] = _1559
                return memory
                  from mem[64]
                   len _1620 + (32 * _1654) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _935 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                revert with 0, 65
            _999 = mem[64]
            mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            mem[64] = mem[64] + (32 * _935) + 32
            if not _935:
                _1447 = mem[_999]
                idx = 0
                while idx < _1447:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_999]:
                        revert with 0, 50
                    mem[(32 * idx) + _999 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1563 = mem[192]
                _1621 = mem[64]
                mem[mem[64]] = 64
                _1655 = mem[_999]
                mem[mem[64] + 64] = mem[_999]
                mem[mem[64] + 96 len 32 * _1655] = mem[_999 + 32 len 32 * _1655]
                mem[mem[64] + 32] = _1563
                return memory
                  from mem[64]
                   len _1621 + (32 * _1655) + -mem[64] + 96
            mem[_999 + 32 len 32 * _935] = call.data[calldata.size len 32 * _935]
            _1448 = mem[_999]
            idx = 0
            while idx < _1448:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_999]:
                    revert with 0, 50
                mem[(32 * idx) + _999 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1567 = mem[192]
            _1622 = mem[64]
            mem[mem[64]] = 64
            _1656 = mem[_999]
            mem[mem[64] + 64] = mem[_999]
            mem[mem[64] + 96 len 32 * _1656] = mem[_999 + 32 len 32 * _1656]
            mem[mem[64] + 32] = _1567
            return memory
              from mem[64]
               len _1622 + (32 * _1656) + -mem[64] + 96
        mem[0] = sha3(arg1, 4) + 7
        mem[_733 + 32] = address(stor4[arg1][7].field_0)
        idx = _733 + 32
        s = 0
        while _733 + (32 * stor4[arg1].field_1792) > idx:
            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[352] = _733
        if mem[288]:
            _2126 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2171 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2126) + 32
            if not _2126:
                _2568 = mem[_2171]
                idx = 0
                while idx < _2568:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2171]:
                        revert with 0, 50
                    mem[(32 * idx) + _2171 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2568 = mem[_2171]
                    idx = idx + 1
                    continue 
                _2685 = mem[192]
                _2769 = mem[64]
                mem[mem[64]] = 64
                _2818 = mem[_2171]
                mem[mem[64] + 64] = mem[_2171]
                mem[mem[64] + 96 len 32 * _2818] = mem[_2171 + 32 len 32 * _2818]
                var39001 = _2818
                mem[mem[64] + 32] = _2685
                return memory
                  from mem[64]
                   len _2769 + (32 * _2818) + -mem[64] + 96
            mem[_2171 + 32 len 32 * _2126] = call.data[calldata.size len 32 * _2126]
            _2569 = mem[_2171]
            idx = 0
            while idx < _2569:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2171]:
                    revert with 0, 50
                mem[(32 * idx) + _2171 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _2569 = mem[_2171]
                idx = idx + 1
                continue 
            _2689 = mem[192]
            _2770 = mem[64]
            mem[mem[64]] = 64
            _2819 = mem[_2171]
            mem[mem[64] + 64] = mem[_2171]
            mem[mem[64] + 96 len 32 * _2819] = mem[_2171 + 32 len 32 * _2819]
            mem[mem[64] + 32] = _2689
            return memory
              from mem[64]
               len _2770 + (32 * _2819) + -mem[64] + 96
        mem[0] = msg.sender
        mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
        if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
            revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
        _2271 = mem[mem[256]]
        if mem[mem[256]] > test266151307():
            revert with 0, 65
        _2332 = mem[64]
        mem[mem[64]] = mem[mem[256]]
        mem[64] = mem[64] + (32 * _2271) + 32
        if not _2271:
            _2570 = mem[_2332]
            idx = 0
            while idx < _2570:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2332]:
                    revert with 0, 50
                mem[(32 * idx) + _2332 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _2570 = mem[_2332]
                idx = idx + 1
                continue 
            _2693 = mem[192]
            _2771 = mem[64]
            mem[mem[64]] = 64
            _2820 = mem[_2332]
            mem[mem[64] + 64] = mem[_2332]
            mem[mem[64] + 96 len 32 * _2820] = mem[_2332 + 32 len 32 * _2820]
            var43001 = _2820
            mem[mem[64] + 32] = _2693
            return memory
              from mem[64]
               len _2771 + (32 * _2820) + -mem[64] + 96
        mem[_2332 + 32 len 32 * _2271] = call.data[calldata.size len 32 * _2271]
        _2571 = mem[_2332]
        idx = 0
        while idx < _2571:
            mem[0] = idx
            mem[32] = sha3(arg1, 6)
            if idx >= mem[_2332]:
                revert with 0, 50
            mem[(32 * idx) + _2332 + 32] = stor6[arg1][idx]
            if idx == -1:
                revert with 0, 17
            _2571 = mem[_2332]
            idx = idx + 1
            continue 
        _2697 = mem[192]
        _2772 = mem[64]
        mem[mem[64]] = 64
        _2821 = mem[_2332]
        mem[mem[64] + 64] = mem[_2332]
        mem[mem[64] + 96 len 32 * _2821] = mem[_2332 + 32 len 32 * _2821]
        mem[mem[64] + 32] = _2697
        return memory
          from mem[64]
           len _2772 + (32 * _2821) + -mem[64] + 96
    if 31 >= stor4[arg1].field_1025 % 128:
        mem[416] = 256 * Mask(248, 0, stor4[arg1].field_1032)
        mem[224] = 384
        mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
        mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
        s = ceil32(stor4[arg1].field_1025 % 128) + 448
        idx = 0
        while idx < stor4[arg1].field_1280:
            mem[0] = sha3(arg1, 4) + 5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                _836 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
                mem[_836] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
                if bool(stor4[arg1][idx + 5].field_0):
                    if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                        if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                            mem[_836 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            mem[_836 + 32] = stor4[arg1][idx + 5].field_0
                            t = _836 + 32
                            u = sha3(mem[0])
                            while _836 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                                mem[t + 32] = roleAdmin[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _836
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor4[arg1][idx + 5].field_1 % 128:
                    mem[s] = _836
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_836 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _836
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_836 + 32] = stor4[arg1][idx + 5].field_0
                t = _836 + 32
                u = sha3(mem[0])
                while _836 + stor4[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _836
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _844 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
            mem[_844] = stor4[arg1][idx + 5].field_1 % 128
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    mem[s] = _844
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                    mem[_844 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    mem[s] = _844
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_844 + 32] = stor4[arg1][idx + 5].field_0
                t = _844 + 32
                u = sha3(mem[0])
                while _844 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _844
                t = t + 32
                u = u + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][idx + 5].field_1 % 128:
                if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                    mem[_844 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    mem[_844 + 32] = stor4[arg1][idx + 5].field_0
                    t = _844 + 32
                    u = sha3(mem[0])
                    while _844 + stor4[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = roleAdmin[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _844
            s = s + 32
            idx = idx + 1
            continue 
        mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
        mem[288] = bool(uint8(stor4[arg1].field_1536))
        mem[320] = address(stor4[arg1].field_1544)
        _735 = mem[64]
        mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
        mem[_735] = stor4[arg1].field_1792
        if not stor4[arg1].field_1792:
            mem[352] = _735
            if uint8(stor4[arg1].field_1536):
                _794 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                    revert with 0, 65
                _833 = mem[64]
                mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
                mem[64] = mem[64] + (32 * _794) + 32
                if not _794:
                    _1449 = mem[_833]
                    idx = 0
                    while idx < _1449:
                        mem[0] = idx
                        mem[32] = sha3(arg1, 6)
                        if idx >= mem[_833]:
                            revert with 0, 50
                        mem[(32 * idx) + _833 + 32] = stor6[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1573 = mem[192]
                    _1625 = mem[64]
                    mem[mem[64]] = 64
                    _1657 = mem[_833]
                    mem[mem[64] + 64] = mem[_833]
                    mem[mem[64] + 96 len 32 * _1657] = mem[_833 + 32 len 32 * _1657]
                    mem[mem[64] + 32] = _1573
                    return memory
                      from mem[64]
                       len _1625 + (32 * _1657) + -mem[64] + 96
                mem[_833 + 32 len 32 * _794] = call.data[calldata.size len 32 * _794]
                _1450 = mem[_833]
                idx = 0
                while idx < _1450:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_833]:
                        revert with 0, 50
                    mem[(32 * idx) + _833 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1577 = mem[192]
                _1626 = mem[64]
                mem[mem[64]] = 64
                _1658 = mem[_833]
                mem[mem[64] + 64] = mem[_833]
                mem[mem[64] + 96 len 32 * _1658] = mem[_833 + 32 len 32 * _1658]
                mem[mem[64] + 32] = _1577
                return memory
                  from mem[64]
                   len _1626 + (32 * _1658) + -mem[64] + 96
            mem[0] = msg.sender
            mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
            if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
                revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
            _947 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                revert with 0, 65
            _1007 = mem[64]
            mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            mem[64] = mem[64] + (32 * _947) + 32
            if not _947:
                _1451 = mem[_1007]
                idx = 0
                while idx < _1451:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_1007]:
                        revert with 0, 50
                    mem[(32 * idx) + _1007 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1581 = mem[192]
                _1627 = mem[64]
                mem[mem[64]] = 64
                _1659 = mem[_1007]
                mem[mem[64] + 64] = mem[_1007]
                mem[mem[64] + 96 len 32 * _1659] = mem[_1007 + 32 len 32 * _1659]
                mem[mem[64] + 32] = _1581
                return memory
                  from mem[64]
                   len _1627 + (32 * _1659) + -mem[64] + 96
            mem[_1007 + 32 len 32 * _947] = call.data[calldata.size len 32 * _947]
            _1452 = mem[_1007]
            idx = 0
            while idx < _1452:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_1007]:
                    revert with 0, 50
                mem[(32 * idx) + _1007 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1585 = mem[192]
            _1628 = mem[64]
            mem[mem[64]] = 64
            _1660 = mem[_1007]
            mem[mem[64] + 64] = mem[_1007]
            mem[mem[64] + 96 len 32 * _1660] = mem[_1007 + 32 len 32 * _1660]
            mem[mem[64] + 32] = _1585
            return memory
              from mem[64]
               len _1628 + (32 * _1660) + -mem[64] + 96
        mem[0] = sha3(arg1, 4) + 7
        mem[_735 + 32] = address(stor4[arg1][7].field_0)
        idx = _735 + 32
        s = 0
        while _735 + (32 * stor4[arg1].field_1792) > idx:
            mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[352] = _735
        if mem[288]:
            _2138 = mem[mem[256]]
            if mem[mem[256]] > test266151307():
                revert with 0, 65
            _2178 = mem[64]
            mem[mem[64]] = mem[mem[256]]
            mem[64] = mem[64] + (32 * _2138) + 32
            if not _2138:
                _2573 = mem[_2178]
                idx = 0
                while idx < _2573:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_2178]:
                        revert with 0, 50
                    mem[(32 * idx) + _2178 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _2573 = mem[_2178]
                    idx = idx + 1
                    continue 
                _2705 = mem[192]
                _2781 = mem[64]
                mem[mem[64]] = 64
                _2825 = mem[_2178]
                mem[mem[64] + 64] = mem[_2178]
                mem[mem[64] + 96 len 32 * _2825] = mem[_2178 + 32 len 32 * _2825]
                var41001 = _2825
                mem[mem[64] + 32] = _2705
                return memory
                  from mem[64]
                   len _2781 + (32 * _2825) + -mem[64] + 96
            mem[_2178 + 32 len 32 * _2138] = call.data[calldata.size len 32 * _2138]
            _2574 = mem[_2178]
            idx = 0
            while idx < _2574:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2178]:
                    revert with 0, 50
                mem[(32 * idx) + _2178 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _2574 = mem[_2178]
                idx = idx + 1
                continue 
            _2709 = mem[192]
            _2782 = mem[64]
            mem[mem[64]] = 64
            _2826 = mem[_2178]
            mem[mem[64] + 64] = mem[_2178]
            mem[mem[64] + 96 len 32 * _2826] = mem[_2178 + 32 len 32 * _2826]
            mem[mem[64] + 32] = _2709
            return memory
              from mem[64]
               len _2782 + (32 * _2826) + -mem[64] + 96
        mem[0] = msg.sender
        mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
        if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
            revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
        _2283 = mem[mem[256]]
        if mem[mem[256]] > test266151307():
            revert with 0, 65
        _2339 = mem[64]
        mem[mem[64]] = mem[mem[256]]
        mem[64] = mem[64] + (32 * _2283) + 32
        if not _2283:
            _2575 = mem[_2339]
            idx = 0
            while idx < _2575:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2339]:
                    revert with 0, 50
                mem[(32 * idx) + _2339 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _2575 = mem[_2339]
                idx = idx + 1
                continue 
            _2713 = mem[192]
            _2783 = mem[64]
            mem[mem[64]] = 64
            _2827 = mem[_2339]
            mem[mem[64] + 64] = mem[_2339]
            mem[mem[64] + 96 len 32 * _2827] = mem[_2339 + 32 len 32 * _2827]
            var45001 = _2827
            mem[mem[64] + 32] = _2713
            return memory
              from mem[64]
               len _2783 + (32 * _2827) + -mem[64] + 96
        mem[_2339 + 32 len 32 * _2283] = call.data[calldata.size len 32 * _2283]
        _2576 = mem[_2339]
        idx = 0
        while idx < _2576:
            mem[0] = idx
            mem[32] = sha3(arg1, 6)
            if idx >= mem[_2339]:
                revert with 0, 50
            mem[(32 * idx) + _2339 + 32] = stor6[arg1][idx]
            if idx == -1:
                revert with 0, 17
            _2576 = mem[_2339]
            idx = idx + 1
            continue 
        _2717 = mem[192]
        _2784 = mem[64]
        mem[mem[64]] = 64
        _2828 = mem[_2339]
        mem[mem[64] + 64] = mem[_2339]
        mem[mem[64] + 96 len 32 * _2828] = mem[_2339 + 32 len 32 * _2828]
        mem[mem[64] + 32] = _2717
        return memory
          from mem[64]
           len _2784 + (32 * _2828) + -mem[64] + 96
    mem[0] = sha3(arg1, 4) + 4
    mem[416] = stor4[arg1][4].field_0
    idx = 416
    s = 0
    while stor4[arg1].field_1025 % 128 + 384 > idx:
        mem[idx + 32] = stor4[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[224] = 384
    mem[64] = ceil32(stor4[arg1].field_1025 % 128) + (32 * stor4[arg1].field_1280) + 448
    mem[ceil32(stor4[arg1].field_1025 % 128) + 416] = stor4[arg1].field_1280
    s = ceil32(stor4[arg1].field_1025 % 128) + 448
    idx = 0
    while idx < stor4[arg1].field_1280:
        mem[0] = sha3(arg1, 4) + 5
        if bool(stor4[arg1][idx + 5].field_0):
            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                revert with 0, 34
            _1720 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[arg1][idx + 5].field_0) * 0.5) + 32
            mem[_1720] = uint255(stor4[arg1][idx + 5].field_0) * 0.5
            if bool(stor4[arg1][idx + 5].field_0):
                if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4[arg1][idx + 5].field_0):
                    if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                        mem[_1720 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        mem[_1720 + 32] = stor4[arg1][idx + 5].field_0
                        t = _1720 + 32
                        u = sha3(mem[0])
                        while _1720 + (uint255(stor4[arg1][idx + 5].field_0) * 0.5) > t:
                            mem[t + 32] = roleAdmin[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _1720
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if not stor4[arg1][idx + 5].field_1 % 128:
                mem[s] = _1720
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                mem[_1720 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                mem[s] = _1720
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
            mem[_1720 + 32] = stor4[arg1][idx + 5].field_0
            t = _1720 + 32
            u = sha3(mem[0])
            while _1720 + stor4[arg1][u + 5].field_1 % 128 > t:
                mem[t + 32] = roleAdmin[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _1720
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
            revert with 0, 34
        _1756 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].field_1 % 128) + 32
        mem[_1756] = stor4[arg1][idx + 5].field_1 % 128
        if bool(stor4[arg1][idx + 5].field_0):
            if bool(stor4[arg1][idx + 5].field_0) == uint255(stor4[arg1][idx + 5].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[arg1][idx + 5].field_0):
                mem[s] = _1756
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[arg1][idx + 5].field_0) * 0.5:
                mem[_1756 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
                mem[s] = _1756
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
            mem[_1756 + 32] = stor4[arg1][idx + 5].field_0
            t = _1756 + 32
            u = sha3(mem[0])
            while _1756 + (uint255(stor4[arg1][u + 5].field_0) * 0.5) > t:
                mem[t + 32] = roleAdmin[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _1756
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[arg1][idx + 5].field_0) == stor4[arg1][idx + 5].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[arg1][idx + 5].field_1 % 128:
            if 31 >= stor4[arg1][idx + 5].field_1 % 128:
                mem[_1756 + 32] = 256 * Mask(248, 0, stor4[arg1][idx + 5].field_8)
            else:
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_1756 + 32] = stor4[arg1][idx + 5].field_0
                t = _1756 + 32
                u = sha3(mem[0])
                while _1756 + stor4[arg1][idx + 5].field_1 % 128 > t:
                    mem[t + 32] = roleAdmin[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _1756
        s = s + 32
        idx = idx + 1
        continue 
    mem[256] = ceil32(stor4[arg1].field_1025 % 128) + 416
    mem[288] = bool(uint8(stor4[arg1].field_1536))
    mem[320] = address(stor4[arg1].field_1544)
    _1571 = mem[64]
    mem[64] = mem[64] + (32 * stor4[arg1].field_1792) + 32
    mem[_1571] = stor4[arg1].field_1792
    if not stor4[arg1].field_1792:
        mem[352] = _1571
        if uint8(stor4[arg1].field_1536):
            _1674 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
                revert with 0, 65
            _1717 = mem[64]
            mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
            mem[64] = mem[64] + (32 * _1674) + 32
            if not _1674:
                _1960 = mem[_1717]
                idx = 0
                while idx < _1960:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 6)
                    if idx >= mem[_1717]:
                        revert with 0, 50
                    mem[(32 * idx) + _1717 + 32] = stor6[arg1][idx]
                    if idx == -1:
                        revert with 0, 17
                    _1960 = mem[_1717]
                    idx = idx + 1
                    continue 
                _2041 = mem[192]
                _2129 = mem[64]
                mem[mem[64]] = 64
                _2174 = mem[_1717]
                mem[mem[64] + 64] = mem[_1717]
                mem[mem[64] + 96 len 32 * _2174] = mem[_1717 + 32 len 32 * _2174]
                s = _2174
                idx = _1717 + (32 * _2174) + 32
                mem[mem[64] + 32] = _2041
                return memory
                  from mem[64]
                   len _2129 + (32 * _2174) + -mem[64] + 96
            mem[_1717 + 32 len 32 * _1674] = call.data[calldata.size len 32 * _1674]
            _1961 = mem[_1717]
            idx = 0
            while idx < _1961:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_1717]:
                    revert with 0, 50
                mem[(32 * idx) + _1717 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _1961 = mem[_1717]
                idx = idx + 1
                continue 
            _2045 = mem[192]
            _2130 = mem[64]
            mem[mem[64]] = 64
            _2175 = mem[_1717]
            mem[mem[64] + 64] = mem[_1717]
            mem[mem[64] + 96 len 32 * _2175] = mem[_1717 + 32 len 32 * _2175]
            var41001 = _2175
            var41002 = _1717 + (32 * _2175) + 32
            mem[mem[64] + 32] = _2045
            return memory
              from mem[64]
               len _2130 + (32 * _2175) + -mem[64] + 96
        mem[0] = msg.sender
        mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
        if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
            revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
        _1795 = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
        if mem[ceil32(stor4[arg1].field_1025 % 128) + 416] > test266151307():
            revert with 0, 65
        _1823 = mem[64]
        mem[mem[64]] = mem[ceil32(stor4[arg1].field_1025 % 128) + 416]
        mem[64] = mem[64] + (32 * _1795) + 32
        if not _1795:
            _1962 = mem[_1823]
            idx = 0
            while idx < _1962:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_1823]:
                    revert with 0, 50
                mem[(32 * idx) + _1823 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _1962 = mem[_1823]
                idx = idx + 1
                continue 
            _2049 = mem[192]
            _2131 = mem[64]
            mem[mem[64]] = 64
            _2176 = mem[_1823]
            mem[mem[64] + 64] = mem[_1823]
            mem[mem[64] + 96 len 32 * _2176] = mem[_1823 + 32 len 32 * _2176]
            var44001 = _2176
            mem[mem[64] + 32] = _2049
            return memory
              from mem[64]
               len _2131 + (32 * _2176) + -mem[64] + 96
        mem[_1823 + 32 len 32 * _1795] = call.data[calldata.size len 32 * _1795]
        _1963 = mem[_1823]
        idx = 0
        while idx < _1963:
            mem[0] = idx
            mem[32] = sha3(arg1, 6)
            if idx >= mem[_1823]:
                revert with 0, 50
            mem[(32 * idx) + _1823 + 32] = stor6[arg1][idx]
            if idx == -1:
                revert with 0, 17
            _1963 = mem[_1823]
            idx = idx + 1
            continue 
        _2053 = mem[192]
        _2132 = mem[64]
        mem[mem[64]] = 64
        _2177 = mem[_1823]
        mem[mem[64] + 64] = mem[_1823]
        mem[mem[64] + 96 len 32 * _2177] = mem[_1823 + 32 len 32 * _2177]
        mem[mem[64] + 32] = _2053
        return memory
          from mem[64]
           len _2132 + (32 * _2177) + -mem[64] + 96
    mem[0] = sha3(arg1, 4) + 7
    mem[_1571 + 32] = address(stor4[arg1][7].field_0)
    idx = _1571 + 32
    s = 0
    while _1571 + (32 * stor4[arg1].field_1792) > idx:
        mem[idx + 32] = address(stor4[arg1][s + 7].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[352] = _1571
    if mem[288]:
        _2778 = mem[mem[256]]
        if mem[mem[256]] > test266151307():
            revert with 0, 65
        _2822 = mem[64]
        mem[mem[64]] = mem[mem[256]]
        mem[64] = mem[64] + (32 * _2778) + 32
        if not _2778:
            _3069 = mem[_2822]
            idx = 0
            while idx < _3069:
                mem[0] = idx
                mem[32] = sha3(arg1, 6)
                if idx >= mem[_2822]:
                    revert with 0, 50
                mem[(32 * idx) + _2822 + 32] = stor6[arg1][idx]
                if idx == -1:
                    revert with 0, 17
                _3069 = mem[_2822]
                idx = idx + 1
                continue 
            _3149 = mem[192]
            _3209 = mem[64]
            mem[mem[64]] = 64
            _3229 = mem[_2822]
            mem[mem[64] + 64] = mem[_2822]
            mem[mem[64] + 96 len 32 * _3229] = mem[_2822 + 32 len 32 * _3229]
            var44001 = _3229
            mem[mem[64] + 32] = _3149
            return memory
              from mem[64]
               len _3209 + (32 * _3229) + -mem[64] + 96
        mem[_2822 + 32 len 32 * _2778] = call.data[calldata.size len 32 * _2778]
        _3070 = mem[_2822]
        idx = 0
        while idx < _3070:
            mem[0] = idx
            mem[32] = sha3(arg1, 6)
            if idx >= mem[_2822]:
                revert with 0, 50
            mem[(32 * idx) + _2822 + 32] = stor6[arg1][idx]
            if idx == -1:
                revert with 0, 17
            _3070 = mem[_2822]
            idx = idx + 1
            continue 
        _3153 = mem[192]
        _3210 = mem[64]
        mem[mem[64]] = 64
        _3230 = mem[_2822]
        mem[mem[64] + 64] = mem[_2822]
        mem[mem[64] + 96 len 32 * _3230] = mem[_2822 + 32 len 32 * _3230]
        mem[mem[64] + 32] = _3153
        return memory
          from mem[64]
           len _3210 + (32 * _3230) + -mem[64] + 96
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 1)
    if not uint8(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0):
        revert with 0, 'MultipleVoting#getPollVotingInfo: POLL_NOT_ENDED__CALLER_NO_OPERATOR'
    _2923 = mem[mem[256]]
    if mem[mem[256]] > test266151307():
        revert with 0, 65
    _2955 = mem[64]
    mem[mem[64]] = mem[mem[256]]
    mem[64] = mem[64] + (32 * _2923) + 32
    if not _2923:
        _3071 = mem[_2955]
        idx = 0
        while idx < _3071:
            mem[0] = idx
            mem[32] = sha3(arg1, 6)
            if idx >= mem[_2955]:
                revert with 0, 50
            mem[(32 * idx) + _2955 + 32] = stor6[arg1][idx]
            if idx == -1:
                revert with 0, 17
            _3071 = mem[_2955]
            idx = idx + 1
            continue 
        _3157 = mem[192]
        _3211 = mem[64]
        mem[mem[64]] = 64
        _3231 = mem[_2955]
        mem[mem[64] + 64] = mem[_2955]
        mem[mem[64] + 96 len 32 * _3231] = mem[_2955 + 32 len 32 * _3231]
        var48001 = _3231
        mem[mem[64] + 32] = _3157
        return memory
          from mem[64]
           len _3211 + (32 * _3231) + -mem[64] + 96
    mem[_2955 + 32 len 32 * _2923] = call.data[calldata.size len 32 * _2923]
    _3072 = mem[_2955]
    idx = 0
    while idx < _3072:
        mem[0] = idx
        mem[32] = sha3(arg1, 6)
        if idx >= mem[_2955]:
            revert with 0, 50
        mem[(32 * idx) + _2955 + 32] = stor6[arg1][idx]
        if idx == -1:
            revert with 0, 17
        _3072 = mem[_2955]
        idx = idx + 1
        continue 
    _3161 = mem[192]
    _3212 = mem[64]
    mem[mem[64]] = 64
    _3232 = mem[_2955]
    mem[mem[64] + 64] = mem[_2955]
    mem[mem[64] + 96 len 32 * _3232] = mem[_2955 + 32 len 32 * _3232]
    mem[mem[64] + 32] = _3161
    return memory
      from mem[64]
       len _3212 + (32 * _3232) + -mem[64] + 96
}



}
