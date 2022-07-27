contract main {




// =====================  Runtime code  =====================


#
#  - sub_2e2ad60d(?)
#
const sub_634252dc(?) = 'worker'

const DEFAULT_ADMIN_ROLE = 0

const HEALTH_FACTOR_LIQUIDATION_THRESHOLD = 10^18


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
array of struct roleMember;
mapping of uint256 sub_479fe680;
address botAddress;
address oracleAddress;
mapping of uint256 sub_91b55cec;
uint256 lockBlock;
address lendingPoolAddress;

function bot() payable {
    return botAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_479fe680(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_479fe680[arg1]
}

function lockBlock() payable {
    return lockBlock
}

function oracle() payable {
    return oracleAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleMember[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function sub_91b55cec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_91b55cec[arg1]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function lendingPool() payable {
    return lendingPoolAddress
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_138b5463(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require 4 <= ('cd', 4).length
    require ('cd', 4).length <= ('cd', 4).length
    require ('cd', 4).length - 4 >= 32
    require ('cd', 4)[0] == address(('cd', 4)[0])
    return address(('cd', 4)[0])
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_2c4ad1d3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if not ('cd', 4).length:
        return 'low-error', 0
    require 4 <= ('cd', 4).length
    require ('cd', 4).length <= ('cd', 4).length
    require ('cd', 4).length - 4 >= 32
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 71 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[0] + 40)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + 40)])) + 97 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[0] + 40)])) + 97 < 96:
        revert with 'NH{q', 65
    require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 40)] + 72 <= ('cd', 4).length + 36
    return Array(len=cd[(cd[4] + ('cd', 4)[0] + 40)], data=call.data[cd[4] + ('cd', 4)[0] + 72 len cd[(cd[4] + ('cd', 4)[0] + 40)]]), 
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 'NH{q', 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 'NH{q', 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleMember[0][1][address(msg.sender)].field_0:
        roleMember[0].field_0++
        roleMember[0][roleMember[0].field_0].field_0 = msg.sender
        roleMember[0][roleMember[0].field_0].field_160 = 0
        roleMember[0][1][address(msg.sender)].field_0 = roleMember[0].field_0
    if not roleAdmin['worker'][address(msg.sender)].field_0:
        roleAdmin['worker'][address(msg.sender)].field_0 = 1
        emit RoleGranted('worker', msg.sender, msg.sender);
    if not roleMember['worker'][1][address(msg.sender)].field_0:
        roleMember['worker'].field_0++
        roleMember['worker'][roleMember['worker'].field_0].field_0 = msg.sender
        roleMember['worker'][roleMember['worker'].field_0].field_160 = 0
        roleMember['worker'][1][address(msg.sender)].field_0 = roleMember['worker'].field_0
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_0b9b1f9a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        lendingPoolAddress = address(arg1)
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_a12d90f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        emit 0x37448b59: lockBlock, arg1
        lockBlock = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function updateOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        emit OracleUpdated(oracleAddress, arg1);
        oracleAddress = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_b476b458(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        emit 0xc9e7d530: botAddress, address(arg1)
        botAddress = address(arg1)
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
        if roleMember[arg1][1][address(arg2)].field_0:
            if roleMember[arg1][1][address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
            if not roleMember[arg1].field_0:
                revert with 'NH{q', 49
            roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
            roleMember[arg1].field_0--
            roleMember[arg1][1][address(arg2)].field_0 = 0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function addWorkers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if roleAdmin[roleAdmin['worker'].field_256][address(msg.sender)].field_0:
                if not roleAdmin['worker'][address(mem[(32 * idx) + 128])].field_0:
                    roleAdmin['worker'][address(mem[(32 * idx) + 128])].field_0 = 1
                    emit RoleGranted('worker', mem[(32 * idx) + 140 len 20], msg.sender);
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3('worker', 151) + 1
                if not roleMember['worker'][1][address(mem[(32 * idx) + 128])].field_0:
                    roleMember['worker'].field_0++
                    roleMember['worker'][roleMember['worker'].field_0].field_0 = mem[(32 * idx) + 140 len 20]
                    roleMember['worker'][roleMember['worker'].field_0].field_160 = 0
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = sha3('worker', 151) + 1
                    roleMember['worker'][1][address(mem[(32 * idx) + 128])].field_0 = roleMember['worker'].field_0
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[floor32(arg1.length) + 129 len 42] = call.data[calldata.size len 42]
            mem[floor32(arg1.length) + 129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
            mem[floor32(arg1.length) + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + floor32(arg1.length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[floor32(arg1.length) + 193] = 66
            mem[floor32(arg1.length) + 225 len 66] = call.data[calldata.size len 66]
            mem[floor32(arg1.length) + 225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
            mem[floor32(arg1.length) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            s = roleAdmin['worker'].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + floor32(arg1.length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin['worker'].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            mem[floor32(arg1.length) + 353] = 'AccessControl: account '
            idx = 0
            while idx < 42:
                mem[floor32(arg1.length) + idx + 376] = mem[floor32(arg1.length) + idx + 129]
                idx = idx + 32
                continue 
            mem[floor32(arg1.length) + 418] = ' is missing role '
            idx = 0
            while idx < 66:
                mem[floor32(arg1.length) + idx + 435] = mem[floor32(arg1.length) + idx + 225]
                idx = idx + 32
                continue 
            mem[floor32(arg1.length) + 501] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(arg1.length) + 505] = 32
            mem[floor32(arg1.length) + 537] = mem[floor32(arg1.length) + 321]
            idx = 0
            while idx < mem[floor32(arg1.length) + 321]:
                mem[floor32(arg1.length) + idx + 569] = mem[floor32(arg1.length) + idx + 353]
                idx = idx + 32
                continue 
            if ceil32(mem[floor32(arg1.length) + 321]) > mem[floor32(arg1.length) + 321]:
                mem[floor32(arg1.length) + mem[floor32(arg1.length) + 321] + 569] = 0
            revert with 0, 32, mem[floor32(arg1.length) + 321], mem[floor32(arg1.length) + 569 len ceil32(mem[floor32(arg1.length) + 321])]
    mem[floor32(arg1.length) + 129 len 42] = call.data[calldata.size len 42]
    mem[floor32(arg1.length) + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + floor32(arg1.length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[floor32(arg1.length) + 225 len 66] = call.data[calldata.size len 66]
    mem[floor32(arg1.length) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + floor32(arg1.length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    mem[floor32(arg1.length) + 353] = 'AccessControl: account '
    mem[floor32(arg1.length) + 376 len 64] = 0, mem[floor32(arg1.length) + 130 len 63]
    mem[floor32(arg1.length) + 418] = ' is missing role '
    mem[floor32(arg1.length) + 435 len 96] = 0, mem[floor32(arg1.length) + 226 len 95]
    mem[floor32(arg1.length) + 501] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[floor32(arg1.length) + 505] = 32
    mem[floor32(arg1.length) + 537] = mem[floor32(arg1.length) + 321]
    mem[floor32(arg1.length) + 569 len ceil32(mem[floor32(arg1.length) + 321])] = mem[floor32(arg1.length) + 353 len ceil32(mem[floor32(arg1.length) + 321])]
    var161001 = ceil32(mem[floor32(arg1.length) + 321])
    if ceil32(mem[floor32(arg1.length) + 321]) > mem[floor32(arg1.length) + 321]:
        mem[floor32(arg1.length) + mem[floor32(arg1.length) + 321] + 569] = 0
    revert with 0, 32, mem[floor32(arg1.length) + 321], mem[floor32(arg1.length) + 569 len ceil32(mem[floor32(arg1.length) + 321])]
}

function sub_0a5d0951(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == bool(cd[36])
    if roleAdmin['worker'][address(msg.sender)].field_0:
        if ('cd', 4).length < 1:
            revert with 'NH{q', 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * ('cd', 4).length - 1) + 140 len 20]
        mem[32] = 204
        if sub_91b55cec[mem[(32 * ('cd', 4).length - 1) + 140 len 20]] <= block.number:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 204
                if sub_91b55cec[mem[(32 * idx) + 140 len 20]] <= block.number:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall lendingPoolAddress.getUserAccountData(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + 128])
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _499 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    require mem[_499] == mem[_499]
                    require mem[_499 + 32] == mem[_499 + 32]
                    require mem[_499 + 64] == mem[_499 + 64]
                    require mem[_499 + 96] == mem[_499 + 96]
                    require mem[_499 + 128] == mem[_499 + 128]
                    require mem[_499 + 160] == mem[_499 + 160]
                    if mem[_499 + 160] >= 10^18:
                        if not cd[36]:
                            if block.number > -lockBlock - 1:
                                revert with 'NH{q', 17
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[0] = mem[(32 * idx) + 140 len 20]
                            mem[32] = 204
                            sub_91b55cec[mem[(32 * idx) + 140 len 20]] = block.number + lockBlock
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                            emit 0x14974a6e: mem[mem[64]]
                    else:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _512 = mem[64]
                        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                        _514 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_514 + 32] = mem[_514 + 36 len 28] or 0x12f0dea700000000000000000000000000000000000000000000000000000000
                        _522 = mem[_514]
                        s = 0
                        while s < _522:
                            mem[_512 + s + 68] = mem[_514 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_522) <= _522:
                            call botAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _512 + _522 + -mem[64] + 64]
                            if not return_data.size:
                                if ext_call.success:
                                    if block.number > -lockBlock - 1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    sub_91b55cec[mem[(32 * idx) + 140 len 20]] = block.number + lockBlock
                                _785 = mem[64]
                                mem[mem[64]] = 0x2c4ad1d300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _790 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                s = 0
                                while s < _790:
                                    mem[_785 + s + 68] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_790) <= _790:
                                    staticcall this.address.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _785 + ceil32(_790) + -mem[64] + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1073 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1085 = mem[_1073]
                                    require mem[_1073] <= test266151307()
                                    require _1073 + mem[_1073] + 31 < _1073 + return_data.size
                                    _1094 = mem[_1073 + mem[_1073]]
                                    if mem[_1073 + mem[_1073]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1073 + ceil32(return_data.size) + ceil32(ceil32(mem[_1073 + mem[_1073]])) + 1 > test266151307() or ceil32(ceil32(mem[_1073 + mem[_1073]])) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1073 + ceil32(return_data.size) + ceil32(ceil32(mem[_1073 + mem[_1073]])) + 1
                                    mem[_1073 + ceil32(return_data.size)] = _1094
                                    require _1085 + _1094 + 32 <= return_data.size
                                    s = 0
                                    while s < _1094:
                                        mem[_1073 + ceil32(return_data.size) + s + 32] = mem[_1073 + _1085 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1094) <= _1094:
                                        _1335 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1094
                                        s = 0
                                        while s < _1094:
                                            mem[_1335 + s + 64] = mem[_1073 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1094) > _1094:
                                            mem[_1335 + _1094 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1335 + ceil32(_1094) + -mem[64] + 64]
                                    else:
                                        mem[_1073 + ceil32(return_data.size) + _1094 + 32] = 0
                                        _1347 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1094
                                        s = 0
                                        while s < _1094:
                                            mem[_1347 + s + 64] = mem[_1073 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1094) > _1094:
                                            mem[_1347 + _1094 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1347 + ceil32(_1094) + -mem[64] + 64]
                                else:
                                    mem[_785 + _790 + 68] = 0
                                    staticcall this.address.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _785 + ceil32(_790) + -mem[64] + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1081 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1089 = mem[_1081]
                                    require mem[_1081] <= test266151307()
                                    require _1081 + mem[_1081] + 31 < _1081 + return_data.size
                                    _1099 = mem[_1081 + mem[_1081]]
                                    if mem[_1081 + mem[_1081]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1081 + ceil32(return_data.size) + ceil32(ceil32(mem[_1081 + mem[_1081]])) + 1 > test266151307() or ceil32(ceil32(mem[_1081 + mem[_1081]])) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1081 + ceil32(return_data.size) + ceil32(ceil32(mem[_1081 + mem[_1081]])) + 1
                                    mem[_1081 + ceil32(return_data.size)] = _1099
                                    require _1089 + _1099 + 32 <= return_data.size
                                    s = 0
                                    while s < _1099:
                                        mem[_1081 + ceil32(return_data.size) + s + 32] = mem[_1081 + _1089 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1099) <= _1099:
                                        _1336 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1099
                                        s = 0
                                        while s < _1099:
                                            mem[_1336 + s + 64] = mem[_1081 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1099) > _1099:
                                            mem[_1336 + _1099 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1336 + ceil32(_1099) + -mem[64] + 64]
                                    else:
                                        mem[_1081 + ceil32(return_data.size) + _1099 + 32] = 0
                                        _1348 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1099
                                        s = 0
                                        while s < _1099:
                                            mem[_1348 + s + 64] = mem[_1081 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1099) > _1099:
                                            mem[_1348 + _1099 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1348 + ceil32(_1099) + -mem[64] + 64]
                            else:
                                _782 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_782] = return_data.size
                                mem[_782 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    if block.number > -lockBlock - 1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    sub_91b55cec[mem[(32 * idx) + 140 len 20]] = block.number + lockBlock
                                _786 = mem[64]
                                mem[mem[64]] = 0x2c4ad1d300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                s = 0
                                while s < return_data.size:
                                    mem[_786 + s + 68] = mem[_782 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(return_data.size) <= return_data.size:
                                    staticcall this.address.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _786 + ceil32(return_data.size) + -mem[64] + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1075 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1086 = mem[_1075]
                                    require mem[_1075] <= test266151307()
                                    require _1075 + mem[_1075] + 31 < _1075 + return_data.size
                                    _1095 = mem[_1075 + mem[_1075]]
                                    if mem[_1075 + mem[_1075]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1075 + ceil32(return_data.size) + ceil32(ceil32(mem[_1075 + mem[_1075]])) + 1 > test266151307() or ceil32(ceil32(mem[_1075 + mem[_1075]])) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1075 + ceil32(return_data.size) + ceil32(ceil32(mem[_1075 + mem[_1075]])) + 1
                                    mem[_1075 + ceil32(return_data.size)] = _1095
                                    require _1086 + _1095 + 32 <= return_data.size
                                    s = 0
                                    while s < _1095:
                                        mem[_1075 + ceil32(return_data.size) + s + 32] = mem[_1075 + _1086 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1095) <= _1095:
                                        _1337 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1095
                                        s = 0
                                        while s < _1095:
                                            mem[_1337 + s + 64] = mem[_1075 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1095) > _1095:
                                            mem[_1337 + _1095 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1337 + ceil32(_1095) + -mem[64] + 64]
                                    else:
                                        mem[_1075 + ceil32(return_data.size) + _1095 + 32] = 0
                                        _1349 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1095
                                        s = 0
                                        while s < _1095:
                                            mem[_1349 + s + 64] = mem[_1075 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1095) > _1095:
                                            mem[_1349 + _1095 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1349 + ceil32(_1095) + -mem[64] + 64]
                                else:
                                    mem[_786 + return_data.size + 68] = 0
                                    staticcall this.address.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _786 + ceil32(return_data.size) + -mem[64] + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1082 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1090 = mem[_1082]
                                    require mem[_1082] <= test266151307()
                                    require _1082 + mem[_1082] + 31 < _1082 + return_data.size
                                    _1100 = mem[_1082 + mem[_1082]]
                                    if mem[_1082 + mem[_1082]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1082 + ceil32(return_data.size) + ceil32(ceil32(mem[_1082 + mem[_1082]])) + 1 > test266151307() or ceil32(ceil32(mem[_1082 + mem[_1082]])) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1082 + ceil32(return_data.size) + ceil32(ceil32(mem[_1082 + mem[_1082]])) + 1
                                    mem[_1082 + ceil32(return_data.size)] = _1100
                                    require _1090 + _1100 + 32 <= return_data.size
                                    s = 0
                                    while s < _1100:
                                        mem[_1082 + ceil32(return_data.size) + s + 32] = mem[_1082 + _1090 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1100) <= _1100:
                                        _1338 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1100
                                        s = 0
                                        while s < _1100:
                                            mem[_1338 + s + 64] = mem[_1082 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1100) > _1100:
                                            mem[_1338 + _1100 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1338 + ceil32(_1100) + -mem[64] + 64]
                                    else:
                                        mem[_1082 + ceil32(return_data.size) + _1100 + 32] = 0
                                        _1350 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1100
                                        s = 0
                                        while s < _1100:
                                            mem[_1350 + s + 64] = mem[_1082 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1100) > _1100:
                                            mem[_1350 + _1100 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1350 + ceil32(_1100) + -mem[64] + 64]
                        else:
                            mem[_512 + _522 + 68] = 0
                            call botAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _512 + _522 + -mem[64] + 64]
                            if not return_data.size:
                                if ext_call.success:
                                    if block.number > -lockBlock - 1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    sub_91b55cec[mem[(32 * idx) + 140 len 20]] = block.number + lockBlock
                                _787 = mem[64]
                                mem[mem[64]] = 0x2c4ad1d300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _792 = mem[96]
                                mem[mem[64] + 36] = mem[96]
                                s = 0
                                while s < _792:
                                    mem[_787 + s + 68] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                if ceil32(_792) <= _792:
                                    staticcall this.address.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _787 + ceil32(_792) + -mem[64] + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1077 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1087 = mem[_1077]
                                    require mem[_1077] <= test266151307()
                                    require _1077 + mem[_1077] + 31 < _1077 + return_data.size
                                    _1096 = mem[_1077 + mem[_1077]]
                                    if mem[_1077 + mem[_1077]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1077 + ceil32(return_data.size) + ceil32(ceil32(mem[_1077 + mem[_1077]])) + 1 > test266151307() or ceil32(ceil32(mem[_1077 + mem[_1077]])) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1077 + ceil32(return_data.size) + ceil32(ceil32(mem[_1077 + mem[_1077]])) + 1
                                    mem[_1077 + ceil32(return_data.size)] = _1096
                                    require _1087 + _1096 + 32 <= return_data.size
                                    s = 0
                                    while s < _1096:
                                        mem[_1077 + ceil32(return_data.size) + s + 32] = mem[_1077 + _1087 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1096) <= _1096:
                                        _1339 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1096
                                        s = 0
                                        while s < _1096:
                                            mem[_1339 + s + 64] = mem[_1077 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1096) > _1096:
                                            mem[_1339 + _1096 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1339 + ceil32(_1096) + -mem[64] + 64]
                                    else:
                                        mem[_1077 + ceil32(return_data.size) + _1096 + 32] = 0
                                        _1351 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1096
                                        s = 0
                                        while s < _1096:
                                            mem[_1351 + s + 64] = mem[_1077 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1096) > _1096:
                                            mem[_1351 + _1096 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1351 + ceil32(_1096) + -mem[64] + 64]
                                else:
                                    mem[_787 + _792 + 68] = 0
                                    staticcall this.address.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _787 + ceil32(_792) + -mem[64] + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1083 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1091 = mem[_1083]
                                    require mem[_1083] <= test266151307()
                                    require _1083 + mem[_1083] + 31 < _1083 + return_data.size
                                    _1101 = mem[_1083 + mem[_1083]]
                                    if mem[_1083 + mem[_1083]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1083 + ceil32(return_data.size) + ceil32(ceil32(mem[_1083 + mem[_1083]])) + 1 > test266151307() or ceil32(ceil32(mem[_1083 + mem[_1083]])) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1083 + ceil32(return_data.size) + ceil32(ceil32(mem[_1083 + mem[_1083]])) + 1
                                    mem[_1083 + ceil32(return_data.size)] = _1101
                                    require _1091 + _1101 + 32 <= return_data.size
                                    s = 0
                                    while s < _1101:
                                        mem[_1083 + ceil32(return_data.size) + s + 32] = mem[_1083 + _1091 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1101) <= _1101:
                                        _1340 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1101
                                        s = 0
                                        while s < _1101:
                                            mem[_1340 + s + 64] = mem[_1083 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1101) > _1101:
                                            mem[_1340 + _1101 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1340 + ceil32(_1101) + -mem[64] + 64]
                                    else:
                                        mem[_1083 + ceil32(return_data.size) + _1101 + 32] = 0
                                        _1352 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1101
                                        s = 0
                                        while s < _1101:
                                            mem[_1352 + s + 64] = mem[_1083 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1101) > _1101:
                                            mem[_1352 + _1101 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1352 + ceil32(_1101) + -mem[64] + 64]
                            else:
                                _784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_784] = return_data.size
                                mem[_784 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    if block.number > -lockBlock - 1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    sub_91b55cec[mem[(32 * idx) + 140 len 20]] = block.number + lockBlock
                                _788 = mem[64]
                                mem[mem[64]] = 0x2c4ad1d300000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = return_data.size
                                s = 0
                                while s < return_data.size:
                                    mem[_788 + s + 68] = mem[_784 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(return_data.size) <= return_data.size:
                                    staticcall this.address.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _788 + ceil32(return_data.size) + -mem[64] + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1079 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1088 = mem[_1079]
                                    require mem[_1079] <= test266151307()
                                    require _1079 + mem[_1079] + 31 < _1079 + return_data.size
                                    _1097 = mem[_1079 + mem[_1079]]
                                    if mem[_1079 + mem[_1079]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1079 + ceil32(return_data.size) + ceil32(ceil32(mem[_1079 + mem[_1079]])) + 1 > test266151307() or ceil32(ceil32(mem[_1079 + mem[_1079]])) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1079 + ceil32(return_data.size) + ceil32(ceil32(mem[_1079 + mem[_1079]])) + 1
                                    mem[_1079 + ceil32(return_data.size)] = _1097
                                    require _1088 + _1097 + 32 <= return_data.size
                                    s = 0
                                    while s < _1097:
                                        mem[_1079 + ceil32(return_data.size) + s + 32] = mem[_1079 + _1088 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1097) <= _1097:
                                        _1341 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1097
                                        s = 0
                                        while s < _1097:
                                            mem[_1341 + s + 64] = mem[_1079 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1097) > _1097:
                                            mem[_1341 + _1097 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1341 + ceil32(_1097) + -mem[64] + 64]
                                    else:
                                        mem[_1079 + ceil32(return_data.size) + _1097 + 32] = 0
                                        _1353 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1097
                                        s = 0
                                        while s < _1097:
                                            mem[_1353 + s + 64] = mem[_1079 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1097) > _1097:
                                            mem[_1353 + _1097 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1353 + ceil32(_1097) + -mem[64] + 64]
                                else:
                                    mem[_788 + return_data.size + 68] = 0
                                    staticcall this.address.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _788 + ceil32(return_data.size) + -mem[64] + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1084 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1092 = mem[_1084]
                                    require mem[_1084] <= test266151307()
                                    require _1084 + mem[_1084] + 31 < _1084 + return_data.size
                                    _1102 = mem[_1084 + mem[_1084]]
                                    if mem[_1084 + mem[_1084]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1084 + ceil32(return_data.size) + ceil32(ceil32(mem[_1084 + mem[_1084]])) + 1 > test266151307() or ceil32(ceil32(mem[_1084 + mem[_1084]])) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1084 + ceil32(return_data.size) + ceil32(ceil32(mem[_1084 + mem[_1084]])) + 1
                                    mem[_1084 + ceil32(return_data.size)] = _1102
                                    require _1092 + _1102 + 32 <= return_data.size
                                    s = 0
                                    while s < _1102:
                                        mem[_1084 + ceil32(return_data.size) + s + 32] = mem[_1084 + _1092 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1102) <= _1102:
                                        _1342 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1102
                                        s = 0
                                        while s < _1102:
                                            mem[_1342 + s + 64] = mem[_1084 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1102) > _1102:
                                            mem[_1342 + _1102 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1342 + ceil32(_1102) + -mem[64] + 64]
                                    else:
                                        mem[_1084 + ceil32(return_data.size) + _1102 + 32] = 0
                                        _1354 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = _1102
                                        s = 0
                                        while s < _1102:
                                            mem[_1354 + s + 64] = mem[_1084 + ceil32(return_data.size) + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_1102) > _1102:
                                            mem[_1354 + _1102 + 64] = 0
                                        emit 0xf00364b1: mem[mem[64] len _1354 + ceil32(_1102) + -mem[64] + 64]
                        if block.number > -lockBlock - 1:
                            revert with 'NH{q', 17
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 204
                        sub_91b55cec[mem[(32 * idx) + 140 len 20]] = block.number + lockBlock
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    mem[floor32(('cd', 4).length) + 129 len 42] = call.data[calldata.size len 42]
    mem[floor32(('cd', 4).length) + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + floor32(('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[floor32(('cd', 4).length) + 225 len 66] = call.data[calldata.size len 66]
    mem[floor32(('cd', 4).length) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 'worker'
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + floor32(('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if 'worker' + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[floor32(('cd', 4).length) + 353] = 'AccessControl: account '
    mem[floor32(('cd', 4).length) + 376 len 64] = 0, mem[floor32(('cd', 4).length) + 130 len 63]
    mem[floor32(('cd', 4).length) + 418] = ' is missing role '
    mem[floor32(('cd', 4).length) + 435 len 96] = 0, mem[floor32(('cd', 4).length) + 226 len 95]
    mem[floor32(('cd', 4).length) + 501] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 505] = 32
    mem[floor32(('cd', 4).length) + 537] = mem[floor32(('cd', 4).length) + 321]
    mem[floor32(('cd', 4).length) + 569 len ceil32(mem[floor32(('cd', 4).length) + 321])] = mem[floor32(('cd', 4).length) + 353 len ceil32(mem[floor32(('cd', 4).length) + 321])]
    if ceil32(mem[floor32(('cd', 4).length) + 321]) > mem[floor32(('cd', 4).length) + 321]:
        mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 321] + 569] = 0
    revert with 0, 
                32,
                mem[floor32(('cd', 4).length) + 321],
                mem[floor32(('cd', 4).length) + 569 len ceil32(mem[floor32(('cd', 4).length) + 321])]
}



}
