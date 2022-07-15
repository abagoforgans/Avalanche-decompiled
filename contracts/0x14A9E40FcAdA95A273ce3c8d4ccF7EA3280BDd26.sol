contract main {




// =====================  Runtime code  =====================


#
#  - sub_18e60f01(?)
#
const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _fallback() payable {
    revert
}

function sub_805d43fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sha3(address(arg1))
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function initializeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[arg1][address(arg1)].field_0:
        if not roleAdmin[arg1][address(arg1)].field_0:
            roleAdmin[arg1][address(arg1)].field_0 = 1
            emit RoleGranted(sha3(arg1), arg1, msg.sender);
        emit 0x888b171f: sha3(arg1), arg1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == sha3(arg2):
        revert with 0, 'role is root role of account'
    if arg2 != msg.sender:
        revert with 0, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_b530b5e0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 160] = 0
    mem[ceil32(arg2.length) + 128] = arg2.length
    return sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]))
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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

function sub_0cad8226(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(arg2.length) + 128] = arg2.length
        _282 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
        if roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256:
            if roleAdmin[roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256][address(msg.sender)].field_0:
                if not roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])][address(msg.sender)].field_0:
                    roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])][address(msg.sender)].field_0 = 1
                    emit RoleGranted(sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), msg.sender, msg.sender);
                return sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]))
            mem[ceil32(arg2.length) + arg2.length + 288 len 42] = call.data[calldata.size len 42]
            mem[ceil32(arg2.length) + arg2.length + 289 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + ceil32(arg2.length) + arg2.length + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(arg2.length) + arg2.length + 384 len 66] = call.data[calldata.size len 66]
            mem[ceil32(arg2.length) + arg2.length + 385 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            s = roleAdmin[arg1][_282].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + ceil32(arg2.length) + arg2.length + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[arg1][_282].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(arg2.length) + arg2.length + 512] = 'AccessControl: account '
            mem[ceil32(arg2.length) + arg2.length + 535 len 64] = 0, mem[ceil32(arg2.length) + arg2.length + 289 len 63]
            mem[ceil32(arg2.length) + arg2.length + 577] = ' is missing role '
            mem[ceil32(arg2.length) + arg2.length + 594 len 96] = 0, mem[ceil32(arg2.length) + arg2.length + 385 len 95]
            mem[ceil32(arg2.length) + arg2.length + 660] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + arg2.length + 664] = 32
            mem[ceil32(arg2.length) + arg2.length + 696] = mem[ceil32(arg2.length) + arg2.length + 480]
            mem[ceil32(arg2.length) + arg2.length + 728 len ceil32(mem[ceil32(arg2.length) + arg2.length + 480])] = mem[ceil32(arg2.length) + arg2.length + 512 len ceil32(mem[ceil32(arg2.length) + arg2.length + 480])]
            if ceil32(mem[ceil32(arg2.length) + arg2.length + 480]) > mem[ceil32(arg2.length) + arg2.length + 480]:
                mem[ceil32(arg2.length) + arg2.length + mem[ceil32(arg2.length) + arg2.length + 480] + 728] = 0
            revert with 0, 
                        32,
                        mem[ceil32(arg2.length) + arg2.length + 480],
                        mem[ceil32(arg2.length) + arg2.length + 728 len ceil32(mem[ceil32(arg2.length) + arg2.length + 480])]
        if arg1 != sha3(msg.sender):
            roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256 = arg1
            emit RoleAdminChanged(sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256, arg1);
            mem[ceil32(arg2.length) + arg2.length + 372] = arg2.length
            mem[ceil32(arg2.length) + arg2.length + 404 len arg2.length] = arg2[all]
            mem[ceil32(arg2.length) + (2 * arg2.length) + 404] = 0
            emit 0x532ead3e: Array(len=arg2.length, data=arg2[all]), msg.sender, sha3(arg1, _282), arg1
            if roleAdmin[roleAdmin[arg1][_282].field_256][address(msg.sender)].field_0:
                if not roleAdmin[arg1][_282][address(msg.sender)].field_0:
                    roleAdmin[arg1][_282][address(msg.sender)].field_0 = 1
                    emit RoleGranted(sha3(arg1, _282), msg.sender, msg.sender);
                return sha3(arg1, _282)
            mem[ceil32(arg2.length) + arg2.length + 340 len 42] = call.data[calldata.size len 42]
            mem[ceil32(arg2.length) + arg2.length + 341 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + ceil32(arg2.length) + arg2.length + 340 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(arg2.length) + arg2.length + 436 len 66] = call.data[calldata.size len 66]
            mem[ceil32(arg2.length) + arg2.length + 437 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            s = roleAdmin[arg1][_282].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + ceil32(arg2.length) + arg2.length + 436 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[arg1][_282].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(arg2.length) + arg2.length + 564] = 'AccessControl: account '
            mem[ceil32(arg2.length) + arg2.length + 587 len 64] = 0, mem[ceil32(arg2.length) + arg2.length + 341 len 63]
            mem[ceil32(arg2.length) + arg2.length + 629] = ' is missing role '
            mem[ceil32(arg2.length) + arg2.length + 646 len 96] = 0, mem[ceil32(arg2.length) + arg2.length + 437 len 95]
            mem[ceil32(arg2.length) + arg2.length + 712] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + arg2.length + 716] = 32
            mem[ceil32(arg2.length) + arg2.length + 748] = mem[ceil32(arg2.length) + arg2.length + 532]
            mem[ceil32(arg2.length) + arg2.length + 780 len ceil32(mem[ceil32(arg2.length) + arg2.length + 532])] = mem[ceil32(arg2.length) + arg2.length + 564 len ceil32(mem[ceil32(arg2.length) + arg2.length + 532])]
            if ceil32(mem[ceil32(arg2.length) + arg2.length + 532]) > mem[ceil32(arg2.length) + arg2.length + 532]:
                mem[ceil32(arg2.length) + arg2.length + mem[ceil32(arg2.length) + arg2.length + 532] + 780] = 0
            revert with 0, 
                        32,
                        mem[ceil32(arg2.length) + arg2.length + 532],
                        mem[ceil32(arg2.length) + arg2.length + 780 len ceil32(mem[ceil32(arg2.length) + arg2.length + 532])]
        if not roleAdmin[msg.sender][address(msg.sender)].field_0:
            if not roleAdmin[msg.sender][address(msg.sender)].field_0:
                roleAdmin[msg.sender][address(msg.sender)].field_0 = 1
                emit RoleGranted(sha3(msg.sender), msg.sender, msg.sender);
            emit 0x888b171f: sha3(msg.sender), msg.sender
        roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256 = arg1
        emit RoleAdminChanged(sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256, arg1);
        mem[ceil32(arg2.length) + arg2.length + 424] = arg2.length
        mem[ceil32(arg2.length) + arg2.length + 456 len arg2.length] = arg2[all]
        mem[ceil32(arg2.length) + (2 * arg2.length) + 456] = 0
        emit 0x532ead3e: Array(len=arg2.length, data=arg2[all]), msg.sender, sha3(arg1, _282), arg1
        if roleAdmin[roleAdmin[arg1][_282].field_256][address(msg.sender)].field_0:
            if not roleAdmin[arg1][_282][address(msg.sender)].field_0:
                roleAdmin[arg1][_282][address(msg.sender)].field_0 = 1
                emit RoleGranted(sha3(arg1, _282), msg.sender, msg.sender);
            return sha3(arg1, _282)
        mem[ceil32(arg2.length) + arg2.length + 392 len 42] = call.data[calldata.size len 42]
        mem[ceil32(arg2.length) + arg2.length + 393 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + ceil32(arg2.length) + arg2.length + 392 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(arg2.length) + arg2.length + 488 len 66] = call.data[calldata.size len 66]
        mem[ceil32(arg2.length) + arg2.length + 489 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[arg1][_282].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + ceil32(arg2.length) + arg2.length + 488 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1][_282].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    else:
        mem[ceil32(arg2.length) + arg2.length + 160] = 0
        mem[ceil32(arg2.length) + 128] = arg2.length
        _286 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
        if roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256:
            if roleAdmin[roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256][address(msg.sender)].field_0:
                if not roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])][address(msg.sender)].field_0:
                    roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])][address(msg.sender)].field_0 = 1
                    emit RoleGranted(sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), msg.sender, msg.sender);
                return sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]))
            mem[ceil32(arg2.length) + arg2.length + 288 len 42] = call.data[calldata.size len 42]
            mem[ceil32(arg2.length) + arg2.length + 289 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + ceil32(arg2.length) + arg2.length + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(arg2.length) + arg2.length + 384 len 66] = call.data[calldata.size len 66]
            mem[ceil32(arg2.length) + arg2.length + 385 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            s = roleAdmin[arg1][_286].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + ceil32(arg2.length) + arg2.length + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[arg1][_286].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(arg2.length) + arg2.length + 512] = 'AccessControl: account '
            mem[ceil32(arg2.length) + arg2.length + 535 len 64] = 0, mem[ceil32(arg2.length) + arg2.length + 289 len 63]
            mem[ceil32(arg2.length) + arg2.length + 577] = ' is missing role '
            mem[ceil32(arg2.length) + arg2.length + 594 len 96] = 0, mem[ceil32(arg2.length) + arg2.length + 385 len 95]
            mem[ceil32(arg2.length) + arg2.length + 660] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + arg2.length + 664] = 32
            mem[ceil32(arg2.length) + arg2.length + 696] = mem[ceil32(arg2.length) + arg2.length + 480]
            mem[ceil32(arg2.length) + arg2.length + 728 len ceil32(mem[ceil32(arg2.length) + arg2.length + 480])] = mem[ceil32(arg2.length) + arg2.length + 512 len ceil32(mem[ceil32(arg2.length) + arg2.length + 480])]
            if ceil32(mem[ceil32(arg2.length) + arg2.length + 480]) > mem[ceil32(arg2.length) + arg2.length + 480]:
                mem[ceil32(arg2.length) + arg2.length + mem[ceil32(arg2.length) + arg2.length + 480] + 728] = 0
            revert with 0, 
                        32,
                        mem[ceil32(arg2.length) + arg2.length + 480],
                        mem[ceil32(arg2.length) + arg2.length + 728 len ceil32(mem[ceil32(arg2.length) + arg2.length + 480])]
        if arg1 != sha3(msg.sender):
            roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256 = arg1
            emit RoleAdminChanged(sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256, arg1);
            mem[ceil32(arg2.length) + arg2.length + 372] = arg2.length
            mem[ceil32(arg2.length) + arg2.length + 404 len arg2.length] = arg2[all]
            mem[ceil32(arg2.length) + (2 * arg2.length) + 404] = 0
            emit 0x532ead3e: Array(len=arg2.length, data=arg2[all]), msg.sender, sha3(arg1, _286), arg1
            if roleAdmin[roleAdmin[arg1][_286].field_256][address(msg.sender)].field_0:
                if not roleAdmin[arg1][_286][address(msg.sender)].field_0:
                    roleAdmin[arg1][_286][address(msg.sender)].field_0 = 1
                    emit RoleGranted(sha3(arg1, _286), msg.sender, msg.sender);
                return sha3(arg1, _286)
            mem[ceil32(arg2.length) + arg2.length + 340 len 42] = call.data[calldata.size len 42]
            mem[ceil32(arg2.length) + arg2.length + 341 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + ceil32(arg2.length) + arg2.length + 340 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(arg2.length) + arg2.length + 436 len 66] = call.data[calldata.size len 66]
            mem[ceil32(arg2.length) + arg2.length + 437 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            s = roleAdmin[arg1][_286].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + ceil32(arg2.length) + arg2.length + 436 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[arg1][_286].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(arg2.length) + arg2.length + 564] = 'AccessControl: account '
            mem[ceil32(arg2.length) + arg2.length + 587 len 64] = 0, mem[ceil32(arg2.length) + arg2.length + 341 len 63]
            mem[ceil32(arg2.length) + arg2.length + 629] = ' is missing role '
            mem[ceil32(arg2.length) + arg2.length + 646 len 96] = 0, mem[ceil32(arg2.length) + arg2.length + 437 len 95]
            mem[ceil32(arg2.length) + arg2.length + 712] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + arg2.length + 716] = 32
            mem[ceil32(arg2.length) + arg2.length + 748] = mem[ceil32(arg2.length) + arg2.length + 532]
            mem[ceil32(arg2.length) + arg2.length + 780 len ceil32(mem[ceil32(arg2.length) + arg2.length + 532])] = mem[ceil32(arg2.length) + arg2.length + 564 len ceil32(mem[ceil32(arg2.length) + arg2.length + 532])]
            if ceil32(mem[ceil32(arg2.length) + arg2.length + 532]) > mem[ceil32(arg2.length) + arg2.length + 532]:
                mem[ceil32(arg2.length) + arg2.length + mem[ceil32(arg2.length) + arg2.length + 532] + 780] = 0
            revert with 0, 
                        32,
                        mem[ceil32(arg2.length) + arg2.length + 532],
                        mem[ceil32(arg2.length) + arg2.length + 780 len ceil32(mem[ceil32(arg2.length) + arg2.length + 532])]
        if not roleAdmin[msg.sender][address(msg.sender)].field_0:
            if not roleAdmin[msg.sender][address(msg.sender)].field_0:
                roleAdmin[msg.sender][address(msg.sender)].field_0 = 1
                emit RoleGranted(sha3(msg.sender), msg.sender, msg.sender);
            emit 0x888b171f: sha3(msg.sender), msg.sender
        roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256 = arg1
        emit RoleAdminChanged(sha3(arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), roleAdmin[arg1][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_256, arg1);
        mem[ceil32(arg2.length) + arg2.length + 424] = arg2.length
        mem[ceil32(arg2.length) + arg2.length + 456 len arg2.length] = arg2[all]
        mem[ceil32(arg2.length) + (2 * arg2.length) + 456] = 0
        emit 0x532ead3e: Array(len=arg2.length, data=arg2[all]), msg.sender, sha3(arg1, _286), arg1
        if roleAdmin[roleAdmin[arg1][_286].field_256][address(msg.sender)].field_0:
            if not roleAdmin[arg1][_286][address(msg.sender)].field_0:
                roleAdmin[arg1][_286][address(msg.sender)].field_0 = 1
                emit RoleGranted(sha3(arg1, _286), msg.sender, msg.sender);
            return sha3(arg1, _286)
        mem[ceil32(arg2.length) + arg2.length + 392 len 42] = call.data[calldata.size len 42]
        mem[ceil32(arg2.length) + arg2.length + 393 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + ceil32(arg2.length) + arg2.length + 392 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(arg2.length) + arg2.length + 488 len 66] = call.data[calldata.size len 66]
        mem[ceil32(arg2.length) + arg2.length + 489 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[arg1][_286].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + ceil32(arg2.length) + arg2.length + 488 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1][_286].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(arg2.length) + arg2.length + 616] = 'AccessControl: account '
    mem[ceil32(arg2.length) + arg2.length + 639 len 64] = 0, mem[ceil32(arg2.length) + arg2.length + 393 len 63]
    mem[ceil32(arg2.length) + arg2.length + 681] = ' is missing role '
    mem[ceil32(arg2.length) + arg2.length + 698 len 96] = 0, mem[ceil32(arg2.length) + arg2.length + 489 len 95]
    mem[ceil32(arg2.length) + arg2.length + 764] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + arg2.length + 768] = 32
    mem[ceil32(arg2.length) + arg2.length + 800] = mem[ceil32(arg2.length) + arg2.length + 584]
    mem[ceil32(arg2.length) + arg2.length + 832 len ceil32(mem[ceil32(arg2.length) + arg2.length + 584])] = mem[ceil32(arg2.length) + arg2.length + 616 len ceil32(mem[ceil32(arg2.length) + arg2.length + 584])]
    if ceil32(mem[ceil32(arg2.length) + arg2.length + 584]) > mem[ceil32(arg2.length) + arg2.length + 584]:
        mem[ceil32(arg2.length) + arg2.length + mem[ceil32(arg2.length) + arg2.length + 584] + 832] = 0
    revert with 0, 
                32,
                mem[ceil32(arg2.length) + arg2.length + 584],
                mem[ceil32(arg2.length) + arg2.length + 832 len ceil32(mem[ceil32(arg2.length) + arg2.length + 584])]
}



}
