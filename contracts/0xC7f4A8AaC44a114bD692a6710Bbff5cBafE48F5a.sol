contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const OWNER_ROLE = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e


array of struct roleAdmin;
address stor3;
array of address sub_03e63f10;
mapping of uint8 stor5;
uint256 sub_56081af7;
address sub_8672e84dAddress;
uint256 sub_5141ad9f;

function sub_03e63f10(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_03e63f10.length
    return sub_03e63f10[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_28bb931d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_5141ad9f(?) payable {
    return sub_5141ad9f
}

function sub_56081af7(?) payable {
    return sub_56081af7
}

function sub_8672e84d(?) payable {
    return sub_8672e84dAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_96
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function addDEUSPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not owner'
    if stor5[address(arg1)]:
        revert with 0, 'Address already exists'
    stor5[address(arg1)] = 1
    sub_03e63f10.length++
    sub_03e63f10[sub_03e63f10.length] = arg1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_96 = arg2
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function removeDEUSPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not owner'
    if bool(stor5[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor5[address(arg1)] = 0
    idx = 0
    while idx < sub_03e63f10.length:
        mem[0] = 4
        if sub_03e63f10[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_03e63f10.length:
            revert with 'NH{q', 50
        sub_03e63f10[idx] = 0
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        if roleAdmin[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        if roleAdmin[arg1][1][address(arg2)].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        if 1 > !(roleAdmin[arg1][1][address(arg2)].field_0 - 1):
            revert with 'NH{q', 17
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        if not roleAdmin[arg1].field_0:
            revert with 'NH{q', 49
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        if roleAdmin[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        if roleAdmin[arg1][1][address(arg2)].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        if 1 > !(roleAdmin[arg1][1][address(arg2)].field_0 - 1):
            revert with 'NH{q', 17
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        if not roleAdmin[arg1].field_0:
            revert with 'NH{q', 49
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function getDEUSReserves() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < sub_03e63f10.length:
        mem[0] = 4
        if not sub_03e63f10[idx]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_03e63f10.length:
            revert with 'NH{q', 50
        mem[0] = 4
        require ext_code.size(sub_03e63f10[idx])
        staticcall sub_03e63f10[idx].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_38] == mem[_38 + 12 len 20]
        if idx >= sub_03e63f10.length:
            revert with 'NH{q', 50
        mem[0] = 4
        require ext_code.size(sub_03e63f10[idx])
        if mem[_38 + 12 len 20] == stor3:
            staticcall sub_03e63f10[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_47] == mem[_47 + 18 len 14]
            require mem[_47 + 32] == mem[_47 + 50 len 14]
            require mem[_47 + 64] == mem[_47 + 92 len 4]
            if s > !mem[_47 + 18 len 14]:
                revert with 'NH{q', 17
            if s + mem[_47 + 18 len 14] < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_47 + 18 len 14]
            continue 
        staticcall sub_03e63f10[idx].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_46] == mem[_46 + 12 len 20]
        if mem[_46 + 12 len 20] != stor3:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_03e63f10.length:
            revert with 'NH{q', 50
        mem[0] = 4
        require ext_code.size(sub_03e63f10[idx])
        staticcall sub_03e63f10[idx].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_55] == mem[_55 + 18 len 14]
        require mem[_55 + 32] == mem[_55 + 50 len 14]
        require mem[_55 + 64] == mem[_55 + 92 len 4]
        if s > !mem[_55 + 50 len 14]:
            revert with 'NH{q', 17
        if s + mem[_55 + 50 len 14] < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_55 + 50 len 14]
        continue 
    return s
}



}
