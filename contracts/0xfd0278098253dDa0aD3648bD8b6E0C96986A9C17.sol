contract main {




// =====================  Runtime code  =====================


const EXECUTOR_ROLE = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63

const TIMELOCK_ADMIN_ROLE = 0x5f58e3a2316349923ce3780f8d587db2d72378aed66a8261c916544fa6846ca5

const PROPOSER_ROLE = 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
mapping of uint256 timestamp;
uint256 minDelay;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getTimestamp(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return timestamp[arg1]
}

function getMinDelay() {
    return minDelay
}

function _fallback() payable {
    revert
}

function isOperation(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (timestamp[arg1] > 0)
}

function isOperationDone(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (timestamp[arg1] == 1)
}

function isOperationPending(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (timestamp[arg1] > 1)
}

function isOperationReady(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timestamp[arg1] <= 1:
        return (timestamp[arg1] > 1)
    return timestamp[arg1] <= block.timestamp
}

function updateDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayChange(minDelay, arg1);
    minDelay = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function hashOperation(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    mem[ceil32(arg3.length) + 320] = sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 352 len -arg3.length + ceil32(arg3.length)]
}

function revokeRole(bytes32 arg1, address arg2) {
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

function grantRole(bytes32 arg1, address arg2) {
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

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][address(msg.sender)].field_0:
        if timestamp[arg1] <= 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: operation cannot be cancelled'
        timestamp[arg1] = 0
        emit Cancelled(arg1);
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
    s = 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1
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

function hashOperationBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    mem[128] = 160
    mem[288] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 320
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
    u = (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(cd[s] + arg3 + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
        mem[t] = cd[(cd[s] + arg3 + 36)]
        mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
        mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
        u = u + 32
        continue 
    mem[224] = arg4
    mem[256] = arg5
    _12 = mem[64]
    mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + -mem[64] + 352
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
    mem[(32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384] = sha3(mem[_12 + 32 len mem[_12]])
    return memory
      from (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
       len 32
}

function schedule(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][address(msg.sender)].field_0:
        if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > 0:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if block.timestamp > -arg6 - 1:
            revert with 'NH{q', 17
        timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = block.timestamp + arg6
        mem[ceil32(arg3.length) + 320] = arg1
        mem[ceil32(arg3.length) + 352] = arg2
        mem[ceil32(arg3.length) + 384] = 160
        mem[ceil32(arg3.length) + 480] = arg3.length
        mem[ceil32(arg3.length) + 416] = arg4
        mem[ceil32(arg3.length) + 448] = arg6
        emit CallScheduled(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5, bytes32 arg6, uint256 arg7):
                           Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                           mem[arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 160],
                           sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                           0,
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
    s = 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1
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

function execute(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][0].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][address(msg.sender)].field_0:
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
            s = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
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
    mem[arg3.length + 320] = 0
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    if arg4:
        if timestamp[arg4] != 1:
            revert with 0, 'TimelockController: missing dependency'
    mem[ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + arg3.length + 320] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 324 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'TimelockController: underlying transaction reverted'
    if return_data.size:
        emit CallExecuted(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5), 0);
    else:
        mem[ceil32(arg3.length) + 320] = arg1
        mem[ceil32(arg3.length) + 352] = arg2
        mem[ceil32(arg3.length) + 384] = 96
        mem[ceil32(arg3.length) + 416] = arg3.length
        emit CallExecuted(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 96],
                          sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                          0,
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = 1
}

function scheduleBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    mem[0] = msg.sender
    mem[32] = sha3(0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, 0)
    if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][address(msg.sender)].field_0:
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
        s = 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1
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
    if arg1.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
    if arg1.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
    mem[128] = 160
    mem[288] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 320
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
    u = (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(cd[s] + arg3 + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
        mem[t] = cd[(cd[s] + arg3 + 36)]
        mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
        mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
        u = u + 32
        continue 
    mem[224] = arg4
    mem[256] = arg5
    _45 = mem[64]
    mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + -mem[64] + 352
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
    _47 = sha3(mem[_45 + 32 len mem[_45]])
    mem[0] = sha3(mem[_45 + 32 len mem[_45]])
    if timestamp[mem[0]] > 0:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    if block.timestamp > -arg6 - 1:
        revert with 'NH{q', 17
    timestamp[_47] = block.timestamp + arg6
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg3.length:
            revert with 'NH{q', 50
        require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
        mem[mem[64] + 64] = 160
        mem[mem[64] + 160] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 192 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 192] = 0
        mem[mem[64] + 96] = arg4
        mem[mem[64] + 128] = arg6
        emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _47, idx);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function executeBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    mem[0] = 0
    mem[32] = sha3(0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0)
    if roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][0].field_0:
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = arg1 + 36
        t = 320
        while idx < arg1.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(cd[s] + arg3 + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
            mem[t] = cd[(cd[s] + arg3 + 36)]
            mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
            mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _210 = mem[64]
        mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + -mem[64] + 352
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _212 = sha3(mem[_210 + 32 len mem[_210]])
        mem[0] = sha3(mem[_210 + 32 len mem[_210]])
        if timestamp[mem[0]] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[mem[0]] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _359 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _359 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if return_data.size:
                    _379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_379] = return_data.size
                    mem[_379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _212, idx);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[0] = arg4
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _360 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _360 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if return_data.size:
                    _380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_380] = return_data.size
                    mem[_380 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _212, idx);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        if timestamp[_212] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_212] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_212] = 1
    else:
        mem[0] = msg.sender
        mem[32] = sha3(0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0)
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][address(msg.sender)].field_0:
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
            s = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
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
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = arg1 + 36
        t = 320
        while idx < arg1.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(cd[s] + arg3 + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(cd[s] + arg3 + 36)]
            mem[t] = cd[(cd[s] + arg3 + 36)]
            mem[t + 32 len cd[(cd[s] + arg3 + 36)]] = call.data[cd[s] + arg3 + 68 len cd[(cd[s] + arg3 + 36)]]
            mem[t + cd[(cd[s] + arg3 + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[s] + arg3 + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _213 = mem[64]
        mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + -mem[64] + 352
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _215 = sha3(mem[_213 + 32 len mem[_213]])
        mem[0] = sha3(mem[_213 + 32 len mem[_213]])
        if timestamp[mem[0]] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[mem[0]] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_381] = return_data.size
                    mem[_381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _215, idx);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                if idx >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_382] = return_data.size
                    mem[_382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _215, idx);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        if timestamp[_215] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_215] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_215] = 1
}



}
