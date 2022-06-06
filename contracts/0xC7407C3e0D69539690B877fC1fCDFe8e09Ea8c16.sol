contract main {




// =====================  Runtime code  =====================


const COMPOSABLE_VAULT = code.data[14365 len 32]

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;

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

function createIOU(address arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if not arg1:
        revert with 0, 'Invalid address'
    if not roleAdmin[code.data[14365 len 32]][address(msg.sender)].field_0:
        revert with 0, 'Permissions: Only vault allowed'
    mem[5258 len arg2.length] = arg2[all]
    mem[arg2.length + 5258] = 0
    create contract with 0 wei
                    code: code.data[4357 len 5002], address(arg1), Array(len=arg3, data=arg2.length, arg2[all], mem[arg2.length + 5258 len ceil32(arg2.length) - arg2.length]), chainid
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenCreated('IOU', arg1, address(create.new_address));
    return address(create.new_address)
}

function createReceipt(address arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if not arg1:
        revert with 0, 'Invalid address'
    if not roleAdmin[code.data[14365 len 32]][address(msg.sender)].field_0:
        revert with 0, 'Permissions: Only vault allowed'
    mem[5262 len arg2.length] = arg2[all]
    mem[arg2.length + 5262] = 0
    create contract with 0 wei
                    code: code.data[9359 len 5006], address(arg1), Array(len=arg3, data=arg2.length, arg2[all], mem[arg2.length + 5262 len ceil32(arg2.length) - arg2.length]), chainid
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenCreated('RECEIPT', arg1, address(create.new_address));
    return address(create.new_address)
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

function changeVaultAddress(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Invalid address'
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Permissions: Only admins allowed'
    mem[0] = code.data[14365 len 32]
    mem[32] = 1
    idx = 0
    while idx < roleMember[code.data[14365 len 32]].field_0:
        if 0 >= roleMember[code.data[14365 len 32]].field_0:
            revert with 0, 50
        if not roleAdmin[roleAdmin[code.data[14365 len 32]].field_256][address(msg.sender)].field_0:
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
            s = roleAdmin[code.data[14365 len 32]].field_256
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
            if roleAdmin[code.data[14365 len 32]].field_256 + 16384:
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
        if roleAdmin[code.data[14365 len 32]][stor1[code.data[14365 len 32]].field_0].field_0:
            roleAdmin[code.data[14365 len 32]][stor1[code.data[14365 len 32]].field_0].field_0 = 0
            emit RoleRevoked(code.data[14365 len 32], roleMember[code.data[14365 len 32]].field_0, msg.sender);
        mem[0] = roleMember[code.data[14365 len 32]].field_0
        mem[32] = sha3(code.data[14365 len 32], 1) + 1
        if roleMember[code.data[14365 len 32]][1][roleMember[code.data[14365 len 32]].field_0].field_0:
            if roleMember[code.data[14365 len 32]][1][roleMember[code.data[14365 len 32]].field_0].field_0 < 1:
                revert with 0, 17
            if roleMember[code.data[14365 len 32]].field_0 < 1:
                revert with 0, 17
            if roleMember[code.data[14365 len 32]].field_0 - 1 != roleMember[code.data[14365 len 32]][1][roleMember[code.data[14365 len 32]].field_0].field_0 - 1:
                if roleMember[code.data[14365 len 32]].field_0 - 1 >= roleMember[code.data[14365 len 32]].field_0:
                    revert with 0, 50
                if roleMember[code.data[14365 len 32]][1][roleMember[code.data[14365 len 32]].field_0].field_0 - 1 >= roleMember[code.data[14365 len 32]].field_0:
                    revert with 0, 50
                roleMember[code.data[14365 len 32]][roleMember[code.data[14365 len 32]][1][roleMember[code.data[14365 len 32]].field_0].field_0].field_0 = roleMember[code.data[14365 len 32]][roleMember[code.data[14365 len 32]].field_0].field_0
                roleMember[code.data[14365 len 32]][1][roleMember[code.data[14365 len 32]][roleMember[code.data[14365 len 32]].field_0].field_0].field_0 = roleMember[code.data[14365 len 32]][1][roleMember[code.data[14365 len 32]].field_0].field_0
            if not roleMember[code.data[14365 len 32]].field_0:
                revert with 0, 49
            roleMember[code.data[14365 len 32]][roleMember[code.data[14365 len 32]].field_0].field_0 = 0
            roleMember[code.data[14365 len 32]].field_0--
            mem[0] = roleMember[code.data[14365 len 32]].field_0
            mem[32] = sha3(code.data[14365 len 32], 1) + 1
            roleMember[code.data[14365 len 32]][1][roleMember[code.data[14365 len 32]].field_0].field_0 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not roleAdmin[roleAdmin[code.data[14365 len 32]].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[code.data[14365 len 32]].field_256
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
        if roleAdmin[code.data[14365 len 32]].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[code.data[14365 len 32]][address(arg1)].field_0:
        roleAdmin[code.data[14365 len 32]][address(arg1)].field_0 = 1
        emit RoleGranted(code.data[14365 len 32], arg1, msg.sender);
    if not roleMember[code.data[14365 len 32]][1][address(arg1)].field_0:
        roleMember[code.data[14365 len 32]].field_0++
        roleMember[code.data[14365 len 32]][roleMember[code.data[14365 len 32]].field_0].field_0 = arg1
        roleMember[code.data[14365 len 32]][roleMember[code.data[14365 len 32]].field_0].field_160 = 0
        roleMember[code.data[14365 len 32]][1][address(arg1)].field_0 = roleMember[code.data[14365 len 32]].field_0
    emit VaultChanged(arg1);
}



}
