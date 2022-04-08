contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint8 stor1;
uint8 maxMultiItems; offset 160
address constsAddress;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function maxMultiItems() payable {
    return maxMultiItems
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function consts() payable {
    return constsAddress
}

function _fallback() payable {
    revert
}

function requireHasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[arg1][address(arg2)].field_0:
        revert with 0, 'ACCOUNT_HASNT_GIVEN_ROLE'
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function requireHasRole(bytes32 arg1, address arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if roleAdmin[arg1][address(arg2)].field_0:
    mem[164 len arg3.length] = arg3[all]
    mem[arg3.length + 164] = 0
    revert with 0, 32, arg3.length, arg3[all], mem[arg3.length + 164 len ceil32(arg3.length) - arg3.length]
}

function setMaxMultiItems(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(constsAddress)
    staticcall constsAddress.OWNER_ROLE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[ext_call.return_data[0]][address(msg.sender)].field_0:
        revert with 0, 'SENDER_HASNT_OWNER_ROLE'
    if maxMultiItems == arg1:
        revert with 0, 'NEW_MAX_MULTI_ITEMS_REQUIRED'
    maxMultiItems = arg1
    emit MaxMultiItemsUpdated(stor1, arg1, msg.sender);
}

function setRoleAdmin(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_256:
        revert with 0, 'ROLE_MUST_BE_NEW'
    require ext_code.size(constsAddress)
    staticcall constsAddress.OWNER_ROLE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[ext_call.return_data[0]][address(msg.sender)].field_0:
        revert with 0, 'SENDER_HASNT_OWNER_ROLE'
    emit RoleAdminChanged(arg1, roleAdmin[arg1].field_256, arg2);
    roleAdmin[arg1].field_256 = arg2
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function multiRevokeRole(bytes32 arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > maxMultiItems:
        revert with 0, 'ACCOUNTS_LENGTH_EXCEEDS_MAX'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = sha3(arg1, 0)
            if roleAdmin[arg1][address(cd[((32 * idx) + arg2 + 36)])].field_0:
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = sha3(arg1, 0)
                roleAdmin[arg1][address(cd[((32 * idx) + arg2 + 36)])].field_0 = 0
                emit RoleRevoked(arg1, address(cd[((32 * idx) + arg2 + 36)]), msg.sender);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
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
        mem[192] = 66
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
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
        mem[352] = 'AccessControl: account '
        idx = 0
        while idx < 42:
            mem[idx + 375] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[417] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
        idx = 0
        while idx < 66:
            mem[idx + 434] = mem[idx + 224]
            idx = idx + 32
            continue 
        mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[504] = 32
        mem[536] = 148
        idx = 0
        while idx < 148:
            mem[idx + 568] = mem[idx + 352]
            idx = idx + 32
            continue 
        revert with 0, 32, 148, mem[568 len 148], 0
}

function multiGrantRole(bytes32 arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > maxMultiItems:
        revert with 0, 'ACCOUNTS_LENGTH_EXCEEDS_MAX'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = sha3(arg1, 0)
            if not roleAdmin[arg1][address(cd[((32 * idx) + arg2 + 36)])].field_0:
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = sha3(arg1, 0)
                roleAdmin[arg1][address(cd[((32 * idx) + arg2 + 36)])].field_0 = 1
                emit RoleGranted(arg1, address(cd[((32 * idx) + arg2 + 36)]), msg.sender);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
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
        mem[192] = 66
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
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
        mem[352] = 'AccessControl: account '
        idx = 0
        while idx < 42:
            mem[idx + 375] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[417] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
        idx = 0
        while idx < 66:
            mem[idx + 434] = mem[idx + 224]
            idx = idx + 32
            continue 
        mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[504] = 32
        mem[536] = 148
        idx = 0
        while idx < 148:
            mem[idx + 568] = mem[idx + 352]
            idx = idx + 32
            continue 
        revert with 0, 32, 148, mem[568 len 148], 0
}



}
