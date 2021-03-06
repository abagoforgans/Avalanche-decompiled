contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MAINTAINER_ROLE = 0x126303c860ea810f85e857ad8768056e2eebc24b7796655ff3107e4af18e3f1e


mapping of struct roleAdmin;
array of struct roleMember;
array of struct sub_da4e4346;

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

function sub_da4e4346(?) payable {
    require calldata.size - 4 >= 32
    return sub_da4e4346[arg1].field_0
}

function _fallback() payable {
    revert
}

function getFactoryVersion(bytes32 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not sub_da4e4346[arg1][2][arg2 << 248].field_0:
        if not sub_da4e4346[arg1][1][arg2 << 248].field_0:
            revert with 0, 'EnumerableMap: nonexistent key'
    return sub_da4e4346[arg1][2][arg2 << 248].field_0
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

function setFactory(bytes32 arg1, uint8 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0x126303c860ea810f85e857ad8768056e2eebc24b7796655ff3107e4af18e3f1e][address(msg.sender)].field_0:
        revert with 0, 'Sender must be the maintainer'
    if not arg3:
        revert with 0, 'Factory cannot be address 0'
    sub_da4e4346[arg1][2][arg2 << 248].field_0 = arg3
    sub_da4e4346[arg1][2][arg2 << 248].field_160 = 0
    if sub_da4e4346[arg1][1][arg2 << 248].field_0:
        emit SetFactory(arg1, arg2, arg3);
    else:
        sub_da4e4346[arg1].field_0++
        sub_da4e4346[arg1][sub_da4e4346[arg1].field_0].field_0 = arg2
        sub_da4e4346[arg1][sub_da4e4346[arg1].field_0].field_8 = 0
        sub_da4e4346[arg1][1][arg2 << 248].field_0 = sub_da4e4346[arg1].field_0
        emit AddFactory(arg1, arg2, arg3);
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

function removeFactory(bytes32 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[0x126303c860ea810f85e857ad8768056e2eebc24b7796655ff3107e4af18e3f1e][address(msg.sender)].field_0:
        revert with 0, 'Sender must be the maintainer'
    if not sub_da4e4346[arg1][2][arg2 << 248].field_0:
        if not sub_da4e4346[arg1][1][arg2 << 248].field_0:
            revert with 0, 'EnumerableMap: nonexistent key'
    sub_da4e4346[arg1][2][arg2 << 248].field_0 = 0
    if sub_da4e4346[arg1][1][arg2 << 248].field_0:
        if sub_da4e4346[arg1][1][arg2 << 248].field_0 < 1:
            revert with 0, 17
        if sub_da4e4346[arg1].field_0 < 1:
            revert with 0, 17
        if sub_da4e4346[arg1].field_0 - 1 != sub_da4e4346[arg1][1][arg2 << 248].field_0 - 1:
            if sub_da4e4346[arg1].field_0 - 1 >= sub_da4e4346[arg1].field_0:
                revert with 0, 50
            if sub_da4e4346[arg1][1][arg2 << 248].field_0 - 1 >= sub_da4e4346[arg1].field_0:
                revert with 0, 50
            sub_da4e4346[arg1][sub_da4e4346[arg1][1][arg2 << 248].field_0].field_0 = sub_da4e4346[arg1][sub_da4e4346[arg1].field_0].field_0
            sub_da4e4346[arg1][1][sub_da4e4346[arg1][sub_da4e4346[arg1].field_0].field_0].field_0 = sub_da4e4346[arg1][1][arg2 << 248].field_0
        if not sub_da4e4346[arg1].field_0:
            revert with 0, 49
        sub_da4e4346[arg1][sub_da4e4346[arg1].field_0].field_0 = 0
        sub_da4e4346[arg1].field_0--
        sub_da4e4346[arg1][1][arg2 << 248].field_0 = 0
    emit RemoveFactory(arg1, arg2, sub_da4e4346[arg1][2][arg2 << 248].field_0);
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



}
