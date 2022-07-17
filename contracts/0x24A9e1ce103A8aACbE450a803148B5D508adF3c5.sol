contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0, 32, 7, 'BAL#0' + 3223552 << 200
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function canPerform(bytes32 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0, 32, 7, 'BAL#0' + 3420674 << 200
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0, 32, 7, 'BAL#0' + 3420676 << 200
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0, 32, 7, 'BAL#0' + 3420675 << 200
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRoles(bytes32[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not roleAdmin[roleAdmin[mem[(32 * idx) + 128]].field_512][1][address(msg.sender)].field_0:
            revert with 0, 32, 7, 'BAL#0' + 3420674 << 200
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 128], 0) + 1
        if not roleAdmin[mem[(32 * idx) + 128]][1][address(arg2)].field_0:
            roleAdmin[mem[(32 * idx) + 128]].field_0++
            roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]].field_0].field_0 = arg2
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0) + 1
            roleAdmin[mem[(32 * idx) + 128]][1][address(arg2)].field_0 = roleAdmin[mem[(32 * idx) + 128]].field_0
            emit RoleGranted(mem[(32 * idx) + 128], arg2, msg.sender);
        idx = idx + 1
        continue 
}

function revokeRoles(bytes32[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not roleAdmin[roleAdmin[mem[(32 * idx) + 128]].field_512][1][address(msg.sender)].field_0:
            revert with 0, 32, 7, 'BAL#0' + 3420675 << 200
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 128], 0) + 1
        if roleAdmin[mem[(32 * idx) + 128]][1][address(arg2)].field_0:
            require roleAdmin[mem[(32 * idx) + 128]].field_0 - 1 < roleAdmin[mem[(32 * idx) + 128]].field_0
            require roleAdmin[mem[(32 * idx) + 128]][1][address(arg2)].field_0 - 1 < roleAdmin[mem[(32 * idx) + 128]].field_0
            roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]][1][address(arg2)].field_0].field_0 = roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]].field_0].field_0
            roleAdmin[mem[(32 * idx) + 128]][1][roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]].field_0].field_0].field_0 = roleAdmin[mem[(32 * idx) + 128]][1][address(arg2)].field_0
            require roleAdmin[mem[(32 * idx) + 128]].field_0
            roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]].field_0].field_0 = 0
            roleAdmin[mem[(32 * idx) + 128]].field_0--
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0) + 1
            roleAdmin[mem[(32 * idx) + 128]][1][address(arg2)].field_0 = 0
            emit RoleRevoked(mem[(32 * idx) + 128], arg2, msg.sender);
        idx = idx + 1
        continue 
}

function grantRolesToMany(bytes32[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length != arg2.length:
        revert with 0, 32, 7, 'BAL#0' + 3223555 << 200
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not roleAdmin[roleAdmin[mem[(32 * idx) + 128]].field_512][1][address(msg.sender)].field_0:
            revert with 0, 32, 7, 'BAL#0' + 3420674 << 200
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = sha3(mem[(32 * idx) + 128], 0) + 1
        if not roleAdmin[mem[(32 * idx) + 128]][1][address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0:
            roleAdmin[mem[(32 * idx) + 128]].field_0++
            roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]].field_0].field_0 = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 0) + 1
            roleAdmin[mem[(32 * idx) + 128]][1][address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0 = roleAdmin[mem[(32 * idx) + 128]].field_0
            emit RoleGranted(mem[(32 * idx) + 128], mem[(32 * idx) + (32 * arg1.length) + 172 len 20], msg.sender);
        idx = idx + 1
        continue 
}

function revokeRolesFromMany(bytes32[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length != arg2.length:
        revert with 0, 32, 7, 'BAL#0' + 3223555 << 200
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not roleAdmin[roleAdmin[mem[(32 * idx) + 128]].field_512][1][address(msg.sender)].field_0:
            revert with 0, 32, 7, 'BAL#0' + 3420675 << 200
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = sha3(mem[(32 * idx) + 128], 0) + 1
        if roleAdmin[mem[(32 * idx) + 128]][1][address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0:
            require roleAdmin[mem[(32 * idx) + 128]].field_0 - 1 < roleAdmin[mem[(32 * idx) + 128]].field_0
            require roleAdmin[mem[(32 * idx) + 128]][1][address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0 - 1 < roleAdmin[mem[(32 * idx) + 128]].field_0
            roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]][1][address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0].field_0 = roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]].field_0].field_0
            roleAdmin[mem[(32 * idx) + 128]][1][roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]].field_0].field_0].field_0 = roleAdmin[mem[(32 * idx) + 128]][1][address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0
            require roleAdmin[mem[(32 * idx) + 128]].field_0
            roleAdmin[mem[(32 * idx) + 128]][roleAdmin[mem[(32 * idx) + 128]].field_0].field_0 = 0
            roleAdmin[mem[(32 * idx) + 128]].field_0--
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[32] = sha3(mem[(32 * idx) + 128], 0) + 1
            roleAdmin[mem[(32 * idx) + 128]][1][address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0 = 0
            emit RoleRevoked(mem[(32 * idx) + 128], mem[(32 * idx) + (32 * arg1.length) + 172 len 20], msg.sender);
        idx = idx + 1
        continue 
}



}
