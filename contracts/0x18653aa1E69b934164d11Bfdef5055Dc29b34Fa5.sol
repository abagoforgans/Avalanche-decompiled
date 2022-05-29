contract main {




// =====================  Runtime code  =====================


const sub_9e8f262b(?) = 0xfe02aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343

const sub_b309483a(?) = 10000

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
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

function sub_6c99832a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor2[address(arg1)][2][arg2].field_256 > !stor2[address(arg1)].field_768:
        revert with 0, 17
    if stor2[address(arg1)][2][arg2].field_0 > !stor2[address(arg1)][2][arg2].field_512:
        revert with 0, 17
    if stor2[address(arg1)][2][arg2].field_0 + stor2[address(arg1)][2][arg2].field_512 > !stor2[address(arg1)].field_1024:
        revert with 0, 17
    if 10000 > !(stor2[address(arg1)][2][arg2].field_256 + stor2[address(arg1)].field_768):
        revert with 0, 17
    if stor2[address(arg1)][2][arg2].field_0 + stor2[address(arg1)][2][arg2].field_512 + stor2[address(arg1)].field_1024 and stor2[address(arg1)][2][arg2].field_256 + stor2[address(arg1)].field_768 + 10000 > -1 / stor2[address(arg1)][2][arg2].field_0 + stor2[address(arg1)][2][arg2].field_512 + stor2[address(arg1)].field_1024:
        revert with 0, 17
    return ((10000 * stor2[address(arg1)][2][arg2].field_0) + (stor2[address(arg1)][2][arg2].field_256 * stor2[address(arg1)][2][arg2].field_0) + (stor2[address(arg1)].field_768 * stor2[address(arg1)][2][arg2].field_0) + (10000 * stor2[address(arg1)][2][arg2].field_512) + (stor2[address(arg1)][2][arg2].field_256 * stor2[address(arg1)][2][arg2].field_512) + (stor2[address(arg1)].field_768 * stor2[address(arg1)][2][arg2].field_512) + (10000 * stor2[address(arg1)].field_1024) + (stor2[address(arg1)][2][arg2].field_256 * stor2[address(arg1)].field_1024) + (stor2[address(arg1)].field_768 * stor2[address(arg1)].field_1024) / 10000)
}

function grantRole(bytes32 arg1, address arg2) payable {
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

function revokeRole(bytes32 arg1, address arg2) payable {
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

function sub_c02bfbdb(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if not roleAdmin[0xfe02aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343][address(msg.sender)].field_0:
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
            s = 0xfe02aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343
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
    stor2[address(arg2)][2][arg1].field_0 = arg3
    if stor2[address(arg2)][2][arg1].field_0:
        if stor2[address(arg2)].field_0 <= stor2[address(arg2)][1][arg1].field_0:
            if not stor2[address(arg2)][2][arg1].field_0:
                if stor2[address(arg2)].field_0 > stor2[address(arg2)][1][arg1].field_0:
                    if stor2[address(arg2)].field_0 < 1:
                        revert with 0, 17
                    if stor2[address(arg2)].field_0 - 1 >= stor2[address(arg2)].field_0:
                        revert with 0, 50
                    if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                        revert with 0, 50
                    stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0].field_0
                    if not stor2[address(arg2)].field_0:
                        revert with 0, 49
                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = 0
                    stor2[address(arg2)].field_0--
            else:
                if stor2[address(arg2)].field_0 <= stor2[address(arg2)][1][arg1].field_0:
                    stor2[address(arg2)][1][arg1].field_0 = stor2[address(arg2)].field_0
                    stor2[address(arg2)].field_0++
                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = arg1
                else:
                    if not stor2[address(arg2)][2][arg1].field_0:
                        if stor2[address(arg2)].field_0 > stor2[address(arg2)][1][arg1].field_0:
                            if stor2[address(arg2)].field_0 < 1:
                                revert with 0, 17
                            if stor2[address(arg2)].field_0 - 1 >= stor2[address(arg2)].field_0:
                                revert with 0, 50
                            if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                                revert with 0, 50
                            stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0].field_0
                            if not stor2[address(arg2)].field_0:
                                revert with 0, 49
                            stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = 0
                            stor2[address(arg2)].field_0--
        else:
            if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                revert with 0, 50
            if not stor2[address(arg2)][2][arg1].field_0:
                if stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 == arg1:
                    if stor2[address(arg2)].field_0 < 1:
                        revert with 0, 17
                    if stor2[address(arg2)].field_0 - 1 >= stor2[address(arg2)].field_0:
                        revert with 0, 50
                    if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                        revert with 0, 50
                    stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0].field_0
                    if not stor2[address(arg2)].field_0:
                        revert with 0, 49
                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = 0
                    stor2[address(arg2)].field_0--
            else:
                if stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 != arg1:
                    stor2[address(arg2)][1][arg1].field_0 = stor2[address(arg2)].field_0
                    stor2[address(arg2)].field_0++
                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = arg1
                else:
                    if not stor2[address(arg2)][2][arg1].field_0:
                        if stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 == arg1:
                            if stor2[address(arg2)].field_0 < 1:
                                revert with 0, 17
                            if stor2[address(arg2)].field_0 - 1 >= stor2[address(arg2)].field_0:
                                revert with 0, 50
                            if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                                revert with 0, 50
                            stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0].field_0
                            if not stor2[address(arg2)].field_0:
                                revert with 0, 49
                            stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = 0
                            stor2[address(arg2)].field_0--
    else:
        if stor2[address(arg2)].field_0 <= stor2[address(arg2)][1][arg1].field_0:
            if stor2[address(arg2)][2][arg1].field_512 <= 0:
                if stor2[address(arg2)].field_0 > stor2[address(arg2)][1][arg1].field_0:
                    if stor2[address(arg2)].field_0 < 1:
                        revert with 0, 17
                    if stor2[address(arg2)].field_0 - 1 >= stor2[address(arg2)].field_0:
                        revert with 0, 50
                    if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                        revert with 0, 50
                    stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0].field_0
                    if not stor2[address(arg2)].field_0:
                        revert with 0, 49
                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = 0
                    stor2[address(arg2)].field_0--
            else:
                if stor2[address(arg2)].field_0 <= stor2[address(arg2)][1][arg1].field_0:
                    stor2[address(arg2)][1][arg1].field_0 = stor2[address(arg2)].field_0
                    stor2[address(arg2)].field_0++
                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = arg1
                else:
                    if stor2[address(arg2)][2][arg1].field_512 <= 0:
                        if stor2[address(arg2)].field_0 > stor2[address(arg2)][1][arg1].field_0:
                            if stor2[address(arg2)].field_0 < 1:
                                revert with 0, 17
                            if stor2[address(arg2)].field_0 - 1 >= stor2[address(arg2)].field_0:
                                revert with 0, 50
                            if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                                revert with 0, 50
                            stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0].field_0
                            if not stor2[address(arg2)].field_0:
                                revert with 0, 49
                            stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = 0
                            stor2[address(arg2)].field_0--
        else:
            if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                revert with 0, 50
            if stor2[address(arg2)][2][arg1].field_512 <= 0:
                if stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 == arg1:
                    if stor2[address(arg2)].field_0 < 1:
                        revert with 0, 17
                    if stor2[address(arg2)].field_0 - 1 >= stor2[address(arg2)].field_0:
                        revert with 0, 50
                    if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                        revert with 0, 50
                    stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0].field_0
                    if not stor2[address(arg2)].field_0:
                        revert with 0, 49
                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = 0
                    stor2[address(arg2)].field_0--
            else:
                if stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 != arg1:
                    stor2[address(arg2)][1][arg1].field_0 = stor2[address(arg2)].field_0
                    stor2[address(arg2)].field_0++
                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = arg1
                else:
                    if stor2[address(arg2)][2][arg1].field_512 <= 0:
                        if stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 == arg1:
                            if stor2[address(arg2)].field_0 < 1:
                                revert with 0, 17
                            if stor2[address(arg2)].field_0 - 1 >= stor2[address(arg2)].field_0:
                                revert with 0, 50
                            if stor2[address(arg2)][1][arg1].field_0 >= stor2[address(arg2)].field_0:
                                revert with 0, 50
                            stor2[address(arg2)][stor2[address(arg2)][1][arg1].field_0].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0].field_0
                            if not stor2[address(arg2)].field_0:
                                revert with 0, 49
                            stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = 0
                            stor2[address(arg2)].field_0--
    emit 0x61858d53: arg3, arg1, address(arg2)
    if stor2[address(arg2)][2][arg1].field_256 > !stor2[address(arg2)].field_768:
        revert with 0, 17
    if stor2[address(arg2)][2][arg1].field_0 > !stor2[address(arg2)][2][arg1].field_512:
        revert with 0, 17
    if stor2[address(arg2)][2][arg1].field_0 + stor2[address(arg2)][2][arg1].field_512 > !stor2[address(arg2)].field_1024:
        revert with 0, 17
    if 10000 > !(stor2[address(arg2)][2][arg1].field_256 + stor2[address(arg2)].field_768):
        revert with 0, 17
    if stor2[address(arg2)][2][arg1].field_0 + stor2[address(arg2)][2][arg1].field_512 + stor2[address(arg2)].field_1024 and stor2[address(arg2)][2][arg1].field_256 + stor2[address(arg2)].field_768 + 10000 > -1 / stor2[address(arg2)][2][arg1].field_0 + stor2[address(arg2)][2][arg1].field_512 + stor2[address(arg2)].field_1024:
        revert with 0, 17
    return ((10000 * stor2[address(arg2)][2][arg1].field_0) + (stor2[address(arg2)][2][arg1].field_256 * stor2[address(arg2)][2][arg1].field_0) + (stor2[address(arg2)].field_768 * stor2[address(arg2)][2][arg1].field_0) + (10000 * stor2[address(arg2)][2][arg1].field_512) + (stor2[address(arg2)][2][arg1].field_256 * stor2[address(arg2)][2][arg1].field_512) + (stor2[address(arg2)].field_768 * stor2[address(arg2)][2][arg1].field_512) + (10000 * stor2[address(arg2)].field_1024) + (stor2[address(arg2)][2][arg1].field_256 * stor2[address(arg2)].field_1024) + (stor2[address(arg2)].field_768 * stor2[address(arg2)].field_1024) / 10000)
}

function sub_395fa1ac(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if not roleAdmin[0xfe02aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343][address(msg.sender)].field_0:
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
            s = 0xfe02aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343
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
    require ('cd', 100).length >= 64
    if ('cd', 100)[0] >= 0:
        if stor2[address(cd[36])][2][cd[4]].field_256 > !('cd', 100)[0]:
            revert with 0, 17
    else:
        if ('cd', 100)[0] == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor2[address(cd[36])][2][cd[4]].field_256 < -('cd', 100)[0]:
            revert with 0, 17
    stor2[address(cd[36])][2][cd[4]].field_256 += ('cd', 100)[0]
    if ('cd', 100)[1] >= 0:
        if stor2[address(cd[36])][2][cd[4]].field_512 > !('cd', 100)[1]:
            revert with 0, 17
    else:
        if ('cd', 100)[1] == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor2[address(cd[36])][2][cd[4]].field_512 < -('cd', 100)[1]:
            revert with 0, 17
    stor2[address(cd[36])][2][cd[4]].field_512 += ('cd', 100)[1]
    if stor2[address(cd[36])][2][cd[4]].field_0:
        if stor2[address(cd[36])].field_0 <= stor2[address(cd[36])][1][cd[4]].field_0:
            if not stor2[address(cd[36])][2][cd[4]].field_0:
                if stor2[address(cd[36])].field_0 > stor2[address(cd[36])][1][cd[4]].field_0:
                    if stor2[address(cd[36])].field_0 < 1:
                        revert with 0, 17
                    if stor2[address(cd[36])].field_0 - 1 >= stor2[address(cd[36])].field_0:
                        revert with 0, 50
                    if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                        revert with 0, 50
                    stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 = stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0
                    if not stor2[address(cd[36])].field_0:
                        revert with 0, 49
                    stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = 0
                    stor2[address(cd[36])].field_0--
            else:
                if stor2[address(cd[36])].field_0 <= stor2[address(cd[36])][1][cd[4]].field_0:
                    stor2[address(cd[36])][1][cd[4]].field_0 = stor2[address(cd[36])].field_0
                    stor2[address(cd[36])].field_0++
                    stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = cd[4]
                else:
                    if not stor2[address(cd[36])][2][cd[4]].field_0:
                        if stor2[address(cd[36])].field_0 > stor2[address(cd[36])][1][cd[4]].field_0:
                            if stor2[address(cd[36])].field_0 < 1:
                                revert with 0, 17
                            if stor2[address(cd[36])].field_0 - 1 >= stor2[address(cd[36])].field_0:
                                revert with 0, 50
                            if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                                revert with 0, 50
                            stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 = stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0
                            if not stor2[address(cd[36])].field_0:
                                revert with 0, 49
                            stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = 0
                            stor2[address(cd[36])].field_0--
        else:
            if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                revert with 0, 50
            if not stor2[address(cd[36])][2][cd[4]].field_0:
                if stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 == cd[4]:
                    if stor2[address(cd[36])].field_0 < 1:
                        revert with 0, 17
                    if stor2[address(cd[36])].field_0 - 1 >= stor2[address(cd[36])].field_0:
                        revert with 0, 50
                    if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                        revert with 0, 50
                    stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 = stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0
                    if not stor2[address(cd[36])].field_0:
                        revert with 0, 49
                    stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = 0
                    stor2[address(cd[36])].field_0--
            else:
                if stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 != cd[4]:
                    stor2[address(cd[36])][1][cd[4]].field_0 = stor2[address(cd[36])].field_0
                    stor2[address(cd[36])].field_0++
                    stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = cd[4]
                else:
                    if not stor2[address(cd[36])][2][cd[4]].field_0:
                        if stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 == cd[4]:
                            if stor2[address(cd[36])].field_0 < 1:
                                revert with 0, 17
                            if stor2[address(cd[36])].field_0 - 1 >= stor2[address(cd[36])].field_0:
                                revert with 0, 50
                            if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                                revert with 0, 50
                            stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 = stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0
                            if not stor2[address(cd[36])].field_0:
                                revert with 0, 49
                            stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = 0
                            stor2[address(cd[36])].field_0--
    else:
        if stor2[address(cd[36])].field_0 <= stor2[address(cd[36])][1][cd[4]].field_0:
            if stor2[address(cd[36])][2][cd[4]].field_512 <= 0:
                if stor2[address(cd[36])].field_0 > stor2[address(cd[36])][1][cd[4]].field_0:
                    if stor2[address(cd[36])].field_0 < 1:
                        revert with 0, 17
                    if stor2[address(cd[36])].field_0 - 1 >= stor2[address(cd[36])].field_0:
                        revert with 0, 50
                    if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                        revert with 0, 50
                    stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 = stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0
                    if not stor2[address(cd[36])].field_0:
                        revert with 0, 49
                    stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = 0
                    stor2[address(cd[36])].field_0--
            else:
                if stor2[address(cd[36])].field_0 <= stor2[address(cd[36])][1][cd[4]].field_0:
                    stor2[address(cd[36])][1][cd[4]].field_0 = stor2[address(cd[36])].field_0
                    stor2[address(cd[36])].field_0++
                    stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = cd[4]
                else:
                    if stor2[address(cd[36])][2][cd[4]].field_512 <= 0:
                        if stor2[address(cd[36])].field_0 > stor2[address(cd[36])][1][cd[4]].field_0:
                            if stor2[address(cd[36])].field_0 < 1:
                                revert with 0, 17
                            if stor2[address(cd[36])].field_0 - 1 >= stor2[address(cd[36])].field_0:
                                revert with 0, 50
                            if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                                revert with 0, 50
                            stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 = stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0
                            if not stor2[address(cd[36])].field_0:
                                revert with 0, 49
                            stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = 0
                            stor2[address(cd[36])].field_0--
        else:
            if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                revert with 0, 50
            if stor2[address(cd[36])][2][cd[4]].field_512 <= 0:
                if stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 == cd[4]:
                    if stor2[address(cd[36])].field_0 < 1:
                        revert with 0, 17
                    if stor2[address(cd[36])].field_0 - 1 >= stor2[address(cd[36])].field_0:
                        revert with 0, 50
                    if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                        revert with 0, 50
                    stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 = stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0
                    if not stor2[address(cd[36])].field_0:
                        revert with 0, 49
                    stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = 0
                    stor2[address(cd[36])].field_0--
            else:
                if stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 != cd[4]:
                    stor2[address(cd[36])][1][cd[4]].field_0 = stor2[address(cd[36])].field_0
                    stor2[address(cd[36])].field_0++
                    stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = cd[4]
                else:
                    if stor2[address(cd[36])][2][cd[4]].field_512 <= 0:
                        if stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 == cd[4]:
                            if stor2[address(cd[36])].field_0 < 1:
                                revert with 0, 17
                            if stor2[address(cd[36])].field_0 - 1 >= stor2[address(cd[36])].field_0:
                                revert with 0, 50
                            if stor2[address(cd[36])][1][cd[4]].field_0 >= stor2[address(cd[36])].field_0:
                                revert with 0, 50
                            stor2[address(cd[36])][stor2[address(cd[36])][1][cd[4]].field_0].field_0 = stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0
                            if not stor2[address(cd[36])].field_0:
                                revert with 0, 49
                            stor2[address(cd[36])][stor2[address(cd[36])].field_0].field_0 = 0
                            stor2[address(cd[36])].field_0--
    emit 0x270bb76e: stor2[address(cd[36])][2][cd[4]].field_256, stor2[address(cd[36])][2][cd[4]].field_512, cd[4], address(cd[36])
    if stor2[address(cd[36])][2][cd[4]].field_256 > !stor2[address(cd[36])].field_768:
        revert with 0, 17
    if stor2[address(cd[36])][2][cd[4]].field_0 > !stor2[address(cd[36])][2][cd[4]].field_512:
        revert with 0, 17
    if stor2[address(cd[36])][2][cd[4]].field_0 + stor2[address(cd[36])][2][cd[4]].field_512 > !stor2[address(cd[36])].field_1024:
        revert with 0, 17
    if 10000 > !(stor2[address(cd[36])][2][cd[4]].field_256 + stor2[address(cd[36])].field_768):
        revert with 0, 17
    if stor2[address(cd[36])][2][cd[4]].field_0 + stor2[address(cd[36])][2][cd[4]].field_512 + stor2[address(cd[36])].field_1024 and stor2[address(cd[36])][2][cd[4]].field_256 + stor2[address(cd[36])].field_768 + 10000 > -1 / stor2[address(cd[36])][2][cd[4]].field_0 + stor2[address(cd[36])][2][cd[4]].field_512 + stor2[address(cd[36])].field_1024:
        revert with 0, 17
    return ((10000 * stor2[address(cd[36])][2][cd[4]].field_0) + (stor2[address(cd[36])][2][cd[4]].field_256 * stor2[address(cd[36])][2][cd[4]].field_0) + (stor2[address(cd[36])].field_768 * stor2[address(cd[36])][2][cd[4]].field_0) + (10000 * stor2[address(cd[36])][2][cd[4]].field_512) + (stor2[address(cd[36])][2][cd[4]].field_256 * stor2[address(cd[36])][2][cd[4]].field_512) + (stor2[address(cd[36])].field_768 * stor2[address(cd[36])][2][cd[4]].field_512) + (10000 * stor2[address(cd[36])].field_1024) + (stor2[address(cd[36])][2][cd[4]].field_256 * stor2[address(cd[36])].field_1024) + (stor2[address(cd[36])].field_768 * stor2[address(cd[36])].field_1024) / 10000)
}

function sub_05b7df95(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    if not roleAdmin[0xfe02aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343][address(msg.sender)].field_0:
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
            s = 0xfe02aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343
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
    mem[0] = address(cd[4])
    mem[32] = 2
    require ('cd', 68).length >= 64
    if ('cd', 68)[0] >= 0:
        if stor2[address(cd[4])].field_768 > !('cd', 68)[0]:
            revert with 0, 17
        stor2[address(cd[4])].field_768 += ('cd', 68)[0]
        if ('cd', 68)[1] >= 0:
            if stor2[address(cd[4])].field_1024 > !('cd', 68)[1]:
                revert with 0, 17
            stor2[address(cd[4])].field_1024 += ('cd', 68)[1]
            mem[128] = stor2[address(cd[4])].field_1024 + ('cd', 68)[1]
            emit 0x5f8bb9f6: stor2[address(cd[4])].field_768, stor2[address(cd[4])].field_1024 + ('cd', 68)[1], address(cd[4])
            if ('cd', 68)[1]:
                mem[96] = 0
                mem[64] = 128
                mem[128] = 1
                mem[160] = 64
                mem[192] = 0
                idx = 0
                s = 224
                t = 128
                while idx < mem[96]:
                    _182 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_182 + 32]
                    idx = idx + 1
                    s = s + 64
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len -mem[64] + 224
            if stor2[address(cd[4])].field_1024:
                mem[96] = 0
                mem[64] = 128
                mem[128] = 1
                mem[160] = 64
                mem[192] = 0
                idx = 0
                s = 224
                t = 128
                while idx < mem[96]:
                    _186 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_186 + 32]
                    idx = idx + 1
                    s = s + 64
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len -mem[64] + 224
            if stor2[address(cd[4])].field_0 > test266151307():
                revert with 0, 65
            mem[96] = stor2[address(cd[4])].field_0
            mem[64] = (32 * stor2[address(cd[4])].field_0) + 128
            if not stor2[address(cd[4])].field_0:
                idx = 0
                while idx < stor2[address(cd[4])].field_0:
                    _185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[0] = sha3(address(cd[4]), 2)
                    mem[_185] = stor2[address(cd[4])][idx].field_0
                    mem[0] = stor2[address(cd[4])][idx].field_0
                    mem[32] = sha3(address(cd[4]), 2) + 2
                    if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 > !stor2[address(cd[4])].field_768:
                        revert with 0, 17
                    if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 > !stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512:
                        revert with 0, 17
                    if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 > !stor2[address(cd[4])].field_1024:
                        revert with 0, 17
                    if 10000 > !(stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768):
                        revert with 0, 17
                    if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024 and stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768 + 10000 > -1 / stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024:
                        revert with 0, 17
                    mem[_185 + 32] = (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (10000 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])].field_1024) / 10000
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _185
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _224 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _233 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                s = mem[64] + 96
                t = 128
                while idx < _233:
                    _317 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_317 + 32]
                    idx = idx + 1
                    s = s + 64
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _224 + (64 * _233) + -mem[64] + 96
            mem[64] = (32 * stor2[address(cd[4])].field_0) + 192
            mem[(32 * stor2[address(cd[4])].field_0) + 128] = 0
            mem[(32 * stor2[address(cd[4])].field_0) + 160] = 0
            mem[128] = (32 * stor2[address(cd[4])].field_0) + 128
            s = 128
            idx = stor2[address(cd[4])].field_0
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[(32 * stor2[address(cd[4])].field_0) + 128] = 0
                mem[(32 * stor2[address(cd[4])].field_0) + 160] = 0
                mem[s + 32] = (32 * stor2[address(cd[4])].field_0) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor2[address(cd[4])].field_0:
                _320 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = sha3(address(cd[4]), 2)
                mem[_320] = stor2[address(cd[4])][idx].field_0
                mem[0] = stor2[address(cd[4])][idx].field_0
                mem[32] = sha3(address(cd[4]), 2) + 2
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 > !stor2[address(cd[4])].field_768:
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 > !stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512:
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 > !stor2[address(cd[4])].field_1024:
                    revert with 0, 17
                if 10000 > !(stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768):
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024 and stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768 + 10000 > -1 / stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024:
                    revert with 0, 17
                mem[_320 + 32] = (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (10000 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])].field_1024) / 10000
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _320
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _343 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _353 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = mem[64] + 96
            t = 128
            while idx < _353:
                _411 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_411 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _343 + (64 * _353) + -mem[64] + 96
        if ('cd', 68)[1] == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor2[address(cd[4])].field_1024 < -('cd', 68)[1]:
            revert with 0, 17
        stor2[address(cd[4])].field_1024 += ('cd', 68)[1]
        mem[128] = stor2[address(cd[4])].field_1024 + ('cd', 68)[1]
        emit 0x5f8bb9f6: stor2[address(cd[4])].field_768, stor2[address(cd[4])].field_1024 + ('cd', 68)[1], address(cd[4])
        if ('cd', 68)[1]:
            mem[96] = 0
            mem[64] = 128
            mem[128] = 1
            mem[160] = 64
            mem[192] = 0
            idx = 0
            s = 224
            t = 128
            while idx < mem[96]:
                _189 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_189 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len -mem[64] + 224
        if stor2[address(cd[4])].field_1024:
            mem[96] = 0
            mem[64] = 128
            mem[128] = 1
            mem[160] = 64
            mem[192] = 0
            idx = 0
            s = 224
            t = 128
            while idx < mem[96]:
                _193 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_193 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len -mem[64] + 224
        if stor2[address(cd[4])].field_0 > test266151307():
            revert with 0, 65
        mem[96] = stor2[address(cd[4])].field_0
        mem[64] = (32 * stor2[address(cd[4])].field_0) + 128
        if not stor2[address(cd[4])].field_0:
            idx = 0
            while idx < stor2[address(cd[4])].field_0:
                _192 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = sha3(address(cd[4]), 2)
                mem[_192] = stor2[address(cd[4])][idx].field_0
                mem[0] = stor2[address(cd[4])][idx].field_0
                mem[32] = sha3(address(cd[4]), 2) + 2
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 > !stor2[address(cd[4])].field_768:
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 > !stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512:
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 > !stor2[address(cd[4])].field_1024:
                    revert with 0, 17
                if 10000 > !(stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768):
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024 and stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768 + 10000 > -1 / stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024:
                    revert with 0, 17
                mem[_192 + 32] = (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (10000 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])].field_1024) / 10000
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _192
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _226 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _237 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = mem[64] + 96
            t = 128
            while idx < _237:
                _321 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_321 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _226 + (64 * _237) + -mem[64] + 96
        mem[64] = (32 * stor2[address(cd[4])].field_0) + 192
        mem[(32 * stor2[address(cd[4])].field_0) + 128] = 0
        mem[(32 * stor2[address(cd[4])].field_0) + 160] = 0
        mem[128] = (32 * stor2[address(cd[4])].field_0) + 128
        s = 128
        idx = stor2[address(cd[4])].field_0
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor2[address(cd[4])].field_0) + 128] = 0
            mem[(32 * stor2[address(cd[4])].field_0) + 160] = 0
            mem[s + 32] = (32 * stor2[address(cd[4])].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor2[address(cd[4])].field_0:
            _324 = mem[64]
            mem[64] = mem[64] + 64
            mem[0] = sha3(address(cd[4]), 2)
            mem[_324] = stor2[address(cd[4])][idx].field_0
            mem[0] = stor2[address(cd[4])][idx].field_0
            mem[32] = sha3(address(cd[4]), 2) + 2
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 > !stor2[address(cd[4])].field_768:
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 > !stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512:
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 > !stor2[address(cd[4])].field_1024:
                revert with 0, 17
            if 10000 > !(stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768):
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024 and stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768 + 10000 > -1 / stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024:
                revert with 0, 17
            mem[_324 + 32] = (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (10000 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])].field_1024) / 10000
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _324
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _345 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 64
        _356 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = mem[64] + 96
        t = 128
        while idx < _356:
            _414 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_414 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _345 + (64 * _356) + -mem[64] + 96
    if ('cd', 68)[0] == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor2[address(cd[4])].field_768 < -('cd', 68)[0]:
        revert with 0, 17
    stor2[address(cd[4])].field_768 += ('cd', 68)[0]
    if ('cd', 68)[1] >= 0:
        if stor2[address(cd[4])].field_1024 > !('cd', 68)[1]:
            revert with 0, 17
        stor2[address(cd[4])].field_1024 += ('cd', 68)[1]
        mem[128] = stor2[address(cd[4])].field_1024 + ('cd', 68)[1]
        emit 0x5f8bb9f6: stor2[address(cd[4])].field_768, stor2[address(cd[4])].field_1024 + ('cd', 68)[1], address(cd[4])
        if ('cd', 68)[1]:
            mem[96] = 0
            mem[64] = 128
            mem[128] = 1
            mem[160] = 64
            mem[192] = 0
            idx = 0
            s = 224
            t = 128
            while idx < mem[96]:
                _196 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_196 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len -mem[64] + 224
        if stor2[address(cd[4])].field_1024:
            mem[96] = 0
            mem[64] = 128
            mem[128] = 1
            mem[160] = 64
            mem[192] = 0
            idx = 0
            s = 224
            t = 128
            while idx < mem[96]:
                _200 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_200 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len -mem[64] + 224
        if stor2[address(cd[4])].field_0 > test266151307():
            revert with 0, 65
        mem[96] = stor2[address(cd[4])].field_0
        mem[64] = (32 * stor2[address(cd[4])].field_0) + 128
        if not stor2[address(cd[4])].field_0:
            idx = 0
            while idx < stor2[address(cd[4])].field_0:
                _199 = mem[64]
                mem[64] = mem[64] + 64
                mem[0] = sha3(address(cd[4]), 2)
                mem[_199] = stor2[address(cd[4])][idx].field_0
                mem[0] = stor2[address(cd[4])][idx].field_0
                mem[32] = sha3(address(cd[4]), 2) + 2
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 > !stor2[address(cd[4])].field_768:
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 > !stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512:
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 > !stor2[address(cd[4])].field_1024:
                    revert with 0, 17
                if 10000 > !(stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768):
                    revert with 0, 17
                if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024 and stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768 + 10000 > -1 / stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024:
                    revert with 0, 17
                mem[_199 + 32] = (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (10000 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])].field_1024) / 10000
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _199
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _228 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _241 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = mem[64] + 96
            t = 128
            while idx < _241:
                _325 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_325 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _228 + (64 * _241) + -mem[64] + 96
        mem[64] = (32 * stor2[address(cd[4])].field_0) + 192
        mem[(32 * stor2[address(cd[4])].field_0) + 128] = 0
        mem[(32 * stor2[address(cd[4])].field_0) + 160] = 0
        mem[128] = (32 * stor2[address(cd[4])].field_0) + 128
        s = 128
        idx = stor2[address(cd[4])].field_0
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor2[address(cd[4])].field_0) + 128] = 0
            mem[(32 * stor2[address(cd[4])].field_0) + 160] = 0
            mem[s + 32] = (32 * stor2[address(cd[4])].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor2[address(cd[4])].field_0:
            _328 = mem[64]
            mem[64] = mem[64] + 64
            mem[0] = sha3(address(cd[4]), 2)
            mem[_328] = stor2[address(cd[4])][idx].field_0
            mem[0] = stor2[address(cd[4])][idx].field_0
            mem[32] = sha3(address(cd[4]), 2) + 2
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 > !stor2[address(cd[4])].field_768:
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 > !stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512:
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 > !stor2[address(cd[4])].field_1024:
                revert with 0, 17
            if 10000 > !(stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768):
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024 and stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768 + 10000 > -1 / stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024:
                revert with 0, 17
            mem[_328 + 32] = (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (10000 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])].field_1024) / 10000
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _328
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _347 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 64
        _359 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = mem[64] + 96
        t = 128
        while idx < _359:
            _417 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_417 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _347 + (64 * _359) + -mem[64] + 96
    if ('cd', 68)[1] == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor2[address(cd[4])].field_1024 < -('cd', 68)[1]:
        revert with 0, 17
    stor2[address(cd[4])].field_1024 += ('cd', 68)[1]
    mem[128] = stor2[address(cd[4])].field_1024 + ('cd', 68)[1]
    emit 0x5f8bb9f6: stor2[address(cd[4])].field_768, stor2[address(cd[4])].field_1024 + ('cd', 68)[1], address(cd[4])
    if ('cd', 68)[1]:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 1
        mem[160] = 64
        mem[192] = 0
        idx = 0
        s = 224
        t = 128
        while idx < mem[96]:
            _203 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_203 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len -mem[64] + 224
    if stor2[address(cd[4])].field_1024:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 1
        mem[160] = 64
        mem[192] = 0
        idx = 0
        s = 224
        t = 128
        while idx < mem[96]:
            _207 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_207 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len -mem[64] + 224
    if stor2[address(cd[4])].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor2[address(cd[4])].field_0
    mem[64] = (32 * stor2[address(cd[4])].field_0) + 128
    if not stor2[address(cd[4])].field_0:
        idx = 0
        while idx < stor2[address(cd[4])].field_0:
            _206 = mem[64]
            mem[64] = mem[64] + 64
            mem[0] = sha3(address(cd[4]), 2)
            mem[_206] = stor2[address(cd[4])][idx].field_0
            mem[0] = stor2[address(cd[4])][idx].field_0
            mem[32] = sha3(address(cd[4]), 2) + 2
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 > !stor2[address(cd[4])].field_768:
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 > !stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512:
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 > !stor2[address(cd[4])].field_1024:
                revert with 0, 17
            if 10000 > !(stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768):
                revert with 0, 17
            if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024 and stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768 + 10000 > -1 / stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024:
                revert with 0, 17
            mem[_206 + 32] = (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (10000 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])].field_1024) / 10000
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _206
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _230 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 64
        _245 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = mem[64] + 96
        t = 128
        while idx < _245:
            _329 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_329 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _230 + (64 * _245) + -mem[64] + 96
    mem[64] = (32 * stor2[address(cd[4])].field_0) + 192
    mem[(32 * stor2[address(cd[4])].field_0) + 128] = 0
    mem[(32 * stor2[address(cd[4])].field_0) + 160] = 0
    mem[128] = (32 * stor2[address(cd[4])].field_0) + 128
    s = 128
    idx = stor2[address(cd[4])].field_0
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor2[address(cd[4])].field_0) + 128] = 0
        mem[(32 * stor2[address(cd[4])].field_0) + 160] = 0
        mem[s + 32] = (32 * stor2[address(cd[4])].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor2[address(cd[4])].field_0:
        _332 = mem[64]
        mem[64] = mem[64] + 64
        mem[0] = sha3(address(cd[4]), 2)
        mem[_332] = stor2[address(cd[4])][idx].field_0
        mem[0] = stor2[address(cd[4])][idx].field_0
        mem[32] = sha3(address(cd[4]), 2) + 2
        if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 > !stor2[address(cd[4])].field_768:
            revert with 0, 17
        if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 > !stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512:
            revert with 0, 17
        if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 > !stor2[address(cd[4])].field_1024:
            revert with 0, 17
        if 10000 > !(stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768):
            revert with 0, 17
        if stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024 and stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 + stor2[address(cd[4])].field_768 + 10000 > -1 / stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0 + stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512 + stor2[address(cd[4])].field_1024:
            revert with 0, 17
        mem[_332 + 32] = (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_0) + (10000 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_512) + (10000 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])][2][stor2[address(cd[4])][idx].field_0].field_256 * stor2[address(cd[4])].field_1024) + (stor2[address(cd[4])].field_768 * stor2[address(cd[4])].field_1024) / 10000
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _332
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _349 = mem[64]
    mem[mem[64]] = 0
    mem[mem[64] + 32] = 64
    _362 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = mem[64] + 96
    t = 128
    while idx < _362:
        _420 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_420 + 32]
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _349 + (64 * _362) + -mem[64] + 96
}



}
