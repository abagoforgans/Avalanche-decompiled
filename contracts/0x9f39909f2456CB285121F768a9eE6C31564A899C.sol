contract main {




// =====================  Runtime code  =====================


const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05

const EXECUTOR_ROLE = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63

const PROPOSER_ROLE = 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1


uint8 stor0;
address coreAddress; offset 8
mapping of uint256 timestamp;
uint256 minDelay;

function paused() {
    return bool(stor0)
}

function minDelay() {
    return minDelay
}

function getTimestamp(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return timestamp[arg1]
}

function core() {
    return coreAddress
}

function _fallback() payable {
    revert
}

function isOperation(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (timestamp[arg1] > 0)
}

function isOperationDone(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (timestamp[arg1] == 1)
}

function isOperationPending(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (timestamp[arg1] > 1)
}

function isOperationReady(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if timestamp[arg1] <= 1:
        return (timestamp[arg1] > 1)
    return timestamp[arg1] <= block.timestamp
}

function updateDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    emit MinDelayChange(minDelay, arg1);
    minDelay = arg1
}

function sub_8328716e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(address(arg1))
    call address(arg1).0x4d1387b4 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2ebdc22e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(address(arg1))
    call address(arg1).leverage(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_07c4902f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(address(arg1))
    call address(arg1).deleverage(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBorrowRate(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(arg1)
    call arg1.setBorrowRate(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_803a3554(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(address(arg1))
    call address(arg1).deleverageAll(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_460679cf(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(address(arg1))
    call address(arg1).0x606ce3bf with:
         gas gas_remaining wei
        args 0, arg2, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d9a46f0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(address(arg1))
    call address(arg1).updateRewardPerBlock(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_55e46f9e(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == bool(arg4)
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(address(arg1))
    call address(arg1).'dH/y' with:
         gas gas_remaining wei
        args arg2, arg3, bool(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function hashOperation(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 320] = sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 352 len -arg3.length + ceil32(arg3.length)]
}

function setCore(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyGovernor: Caller is not a governor'
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function inCaseTokensGetStuck(address arg1, address arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController::onlySelf: caller is not itself'
    require ext_code.size(arg1)
    call arg1.'g m@' with:
         gas gas_remaining wei
        args address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyRole: Not permit'
    if timestamp[arg1] <= 1:
        revert with 0, 'TimelockController: operation cannot be cancelled'
    timestamp[arg1] = 0
    emit Cancelled(arg1);
}

function earn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyRole: Not permit'
    require ext_code.size(arg1)
    call arg1.earn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pause() {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CoreRef::onlyGuardianOrGovernor: Caller is not a guardian or governor'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CoreRef::onlyGuardianOrGovernor: Caller is not a guardian or governor'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function schedule(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyRole: Not permit'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > 0:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = arg6 + block.timestamp
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 320] = arg1
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 352] = arg2
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 384] = 160
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 480] = arg3.length
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 416] = arg4
    mem[ceil32(return_data.size) + ceil32(arg3.length) + 448] = arg6
    emit CallScheduled(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5, bytes32 arg6, uint256 arg7):
                       Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                       mem[ceil32(return_data.size) + arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 160],
                       sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                       0,
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
    mem[128] = 160
    mem[288] = arg1.length
    idx = 0
    s = 320
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
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
    t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
    u = (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[224] = arg4
    mem[256] = arg5
    _12 = mem[64]
    mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
    mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
    mem[(64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384] = sha3(mem[_12 + 32 len mem[_12]])
    return memory
      from (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
       len 32
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
    mem[132] = msg.sender
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyRole: Not permit'
    if arg2.length != arg1.length:
        revert with 0, 'TimelockController: length mismatch'
    if arg3.length != arg1.length:
        revert with 0, 'TimelockController: length mismatch'
    mem[ceil32(return_data.size) + 128] = 160
    mem[ceil32(return_data.size) + 288] = arg1.length
    idx = 0
    s = ceil32(return_data.size) + 320
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 160] = (32 * arg1.length) + 192
    mem[ceil32(return_data.size) + (32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(return_data.size) + (32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[ceil32(return_data.size) + 192] = (32 * arg1.length) + (32 * arg2.length) + 224
    mem[ceil32(return_data.size) + (32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (32 * arg3.length) + ceil32(return_data.size) + (32 * arg1.length) + (32 * arg2.length) + 384
    u = ceil32(return_data.size) + (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -ceil32(return_data.size) + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[64] = (64 * arg3.length) + ceil32(return_data.size) + (32 * arg1.length) + (32 * arg2.length) + 384
    _36 = sha3(mem[ceil32(return_data.size) + 128 len 96], arg4, arg5, mem[ceil32(return_data.size) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96])
    if timestamp[mem[ceil32(return_data.size) + 128 len 96]][arg4][arg5][mem[ceil32(return_data.size) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96]] > 0:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    timestamp[mem[ceil32(return_data.size) + 128 len 96]][arg4][arg5][mem[ceil32(return_data.size) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96]] = arg6 + block.timestamp
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        require idx < arg3.length
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
        emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _36, idx);
        idx = idx + 1
        continue 
}

function execute(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + arg3.length + 320] = 0
        if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        if arg4:
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
        mem[ceil32(return_data.size) + ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(return_data.size) + ceil32(arg3.length) + 320] = 0
        call arg1 with:
           funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + ceil32(arg3.length) + 324 len arg3.length - 4]
        if not ext_call.success:
            revert with 0, 'TimelockController: underlying transaction reverted'
        if return_data.size:
            emit CallExecuted(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5), 0);
        else:
            mem[ceil32(return_data.size) + ceil32(arg3.length) + 320] = arg1
            mem[ceil32(return_data.size) + ceil32(arg3.length) + 352] = arg2
            mem[ceil32(return_data.size) + ceil32(arg3.length) + 384] = 96
            mem[ceil32(return_data.size) + ceil32(arg3.length) + 416] = arg3.length
            emit CallExecuted(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                              Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                              mem[ceil32(return_data.size) + arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 96],
                              sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                              0,
    else:
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x91d14854 with:
                gas gas_remaining wei
               args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CoreRef::onlyRoleOrOpenRole: Not permit'
        mem[(2 * ceil32(return_data.size)) + arg3.length + 320] = 0
        if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        if arg4:
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
        mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
        mem[arg3.length + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 320] = 0
        call arg1 with:
           funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
           value arg2 wei
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 324 len arg3.length - 4]
        if not ext_call.success:
            revert with 0, 'TimelockController: underlying transaction reverted'
        if return_data.size:
            emit CallExecuted(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5), 0);
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 320] = arg1
            mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 352] = arg2
            mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 384] = 96
            mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 416] = arg3.length
            emit CallExecuted(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                              Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                              mem[(2 * ceil32(return_data.size)) + arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 96],
                              sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                              0,
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = 1
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
    mem[100] = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
    mem[132] = 0
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if arg2.length != arg1.length:
            revert with 0, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0, 'TimelockController: length mismatch'
        mem[ceil32(return_data.size) + 128] = 160
        mem[ceil32(return_data.size) + 288] = arg1.length
        idx = 0
        s = ceil32(return_data.size) + 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 160] = (32 * arg1.length) + 192
        mem[ceil32(return_data.size) + (32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + (32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[ceil32(return_data.size) + 192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[ceil32(return_data.size) + (32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + ceil32(return_data.size) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = ceil32(return_data.size) + (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -ceil32(return_data.size) + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[ceil32(return_data.size) + 224] = arg4
        mem[ceil32(return_data.size) + 256] = arg5
        mem[ceil32(return_data.size) + 96] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 256
        mem[64] = (64 * arg3.length) + ceil32(return_data.size) + (32 * arg1.length) + (32 * arg2.length) + 384
        _203 = sha3(mem[ceil32(return_data.size) + 128 len 96], arg4, arg5, mem[ceil32(return_data.size) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96])
        mem[0] = sha3(mem[ceil32(return_data.size) + 128 len 96], arg4, arg5, mem[ceil32(return_data.size) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96])
        if timestamp[mem[ceil32(return_data.size) + 128 len 96]][arg4][arg5][mem[ceil32(return_data.size) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96]] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[mem[ceil32(return_data.size) + 128 len 96]][arg4][arg5][mem[ceil32(return_data.size) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96]] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _315 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + _315 + -mem[64] - 4]
                if return_data.size:
                    _323 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_323] = return_data.size
                    mem[_323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _203, idx);
                idx = idx + 1
                continue 
        else:
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _324 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_324] = return_data.size
                    mem[_324 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _203, idx);
                idx = idx + 1
                continue 
        if timestamp[_203] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_203] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_203] = 1
    else:
        mem[ceil32(return_data.size) + 100] = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
        mem[ceil32(return_data.size) + 132] = msg.sender
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x91d14854 with:
                gas gas_remaining wei
               args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CoreRef::onlyRoleOrOpenRole: Not permit'
        if arg2.length != arg1.length:
            revert with 0, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0, 'TimelockController: length mismatch'
        mem[(2 * ceil32(return_data.size)) + 128] = 160
        mem[(2 * ceil32(return_data.size)) + 288] = arg1.length
        idx = 0
        s = (2 * ceil32(return_data.size)) + 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 160] = (32 * arg1.length) + 192
        mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(2 * ceil32(return_data.size)) + 192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (2 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (2 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(2 * ceil32(return_data.size)) + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 224] = arg4
        mem[(2 * ceil32(return_data.size)) + 256] = arg5
        mem[(2 * ceil32(return_data.size)) + 96] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 256
        mem[64] = (64 * arg3.length) + (2 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 384
        _206 = sha3(mem[(2 * ceil32(return_data.size)) + 128 len 96], arg4, arg5, mem[(2 * ceil32(return_data.size)) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96])
        if timestamp[mem[(2 * ceil32(return_data.size)) + 128 len 96]][arg4][arg5][mem[(2 * ceil32(return_data.size)) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96]] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[mem[(2 * ceil32(return_data.size)) + 128 len 96]][arg4][arg5][mem[(2 * ceil32(return_data.size)) + 288 len (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 96]] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _325 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_325] = return_data.size
                    mem[_325 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _206, idx);
                idx = idx + 1
                continue 
        else:
            mem[0] = arg4
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _318 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + _318 + -mem[64] - 4]
                if return_data.size:
                    _326 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_326] = return_data.size
                    mem[_326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _206, idx);
                idx = idx + 1
                continue 
        if timestamp[_206] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_206] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_206] = 1
}



}
