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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
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

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][address(msg.sender)].field_0:
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[arg1] <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: operation cannot be cancelled'
    timestamp[arg1] = 0
    emit Cancelled(arg1);
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
    if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][address(msg.sender)].field_0:
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
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
    emit CallScheduled(bytes32 rg1, uint256 rg2, address rg3, uint256 rg4, bytes rg5, bytes32 rg6, uint256 rg7):
                       Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                       mem[arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 160],
                       sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                       0,
}

function hashOperationBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) {
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
    mem[(32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
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
    return sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
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
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    mem[arg3.length + 320] = 0
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
        emit CallExecuted(bytes32 rg1, uint256 rg2, address rg3, uint256 rg4, bytes rg5):
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

function scheduleBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
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
    if roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][address(msg.sender)].field_0:
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
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
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
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
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _63 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] > 0:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if block.timestamp > -arg6 - 1:
            revert with 'NH{q', 17
        timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] = block.timestamp + arg6
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
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _63, idx);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
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
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
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
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _66 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] > 0:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if block.timestamp > -arg6 - 1:
            revert with 'NH{q', 17
        timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] = block.timestamp + arg6
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
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _66, idx);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function executeBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
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
    mem[0] = msg.sender
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if arg1.length != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg1.length != arg3.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
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
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
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
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _182 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
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
                    _291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_291] = return_data.size
                    mem[_291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _182, idx);
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
                    _292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_292] = return_data.size
                    mem[_292 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _182, idx);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        if timestamp[_182] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_182] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_182] = 1
    else:
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
        mem[96] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 256
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _179 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len 64 * arg3.length]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
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
                _281 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _281 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if return_data.size:
                    _289 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_289] = return_data.size
                    mem[_289 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _179, idx);
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
                    _290 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_290] = return_data.size
                    mem[_290 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _179, idx);
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        if timestamp[_179] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_179] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_179] = 1
}



}
