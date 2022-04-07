contract main {




// =====================  Runtime code  =====================


#
#  - sub_ab3d1bb6(?)
#
const getChainID = chainid

const DEFAULT_ADMIN_ROLE = 0

const OWNER_ROLE = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e


array of struct roleAdmin;
address stor3;
address sub_4d97897bAddress;
uint256 sub_16b0c846;
uint256 sub_f1fc1fff;
uint256 sub_f72bd4f0;
uint256 sub_349432d9;
uint256 sub_19d05d09;
uint256 sub_c1e2785b;
uint256 sub_33017887;
uint256 last_update;
uint8 is_active;
uint8 sub_c2593c27; offset 8
uint8 collateral_ratio_paused; offset 16
uint8 sub_c756b50c; offset 24
uint256 stor15; offset 24
uint256 stor15; offset 16
uint256 stor15; offset 8

function sub_16b0c846(?) payable {
    return sub_16b0c846
}

function sub_19d05d09(?) payable {
    return sub_19d05d09
}

function is_active() payable {
    return bool(is_active)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_33017887(?) payable {
    return sub_33017887
}

function sub_349432d9(?) payable {
    return sub_349432d9
}

function last_update() payable {
    return last_update
}

function sub_4d97897b(?) payable {
    return sub_4d97897bAddress
}

function collateral_ratio_paused() payable {
    return bool(collateral_ratio_paused)
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

function sub_c1e2785b(?) payable {
    return sub_c1e2785b
}

function sub_c2593c27(?) payable {
    return bool(sub_c2593c27)
}

function sub_c756b50c(?) payable {
    return bool(sub_c756b50c)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_f1fc1fff(?) payable {
    return sub_f1fc1fff
}

function sub_f72bd4f0(?) payable {
    return sub_f72bd4f0
}

function _fallback() payable {
    revert
}

function setDEIStep(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    sub_f1fc1fff = arg1
}

function setInternalCooldown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    sub_33017887 = arg1
}

function activate(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    is_active = uint8(arg1)
}

function setPriceBands(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    sub_19d05d09 = arg1
    sub_c1e2785b = arg2
}

function setGrowthRatioBands(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    sub_f72bd4f0 = arg1
    sub_349432d9 = arg2
}

function activateFIP6(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    Mask(232, 0, stor15.field_24) = Mask(232, 0, arg1)
}

function setReserveTracker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    sub_4d97897bAddress = arg1
    stor3 = arg1
}

function useGrowthRatio(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
}

function sub_d5d0cb16(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][1][address(msg.sender)].field_0:
        revert with 0, 'PIDController: You are not owner'
    Mask(240, 0, stor15.field_16) = Mask(240, 0, bool(arg1))
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



}
