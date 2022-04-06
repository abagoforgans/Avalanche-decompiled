contract main {




// =====================  Runtime code  =====================


#
#  - convertTokensToWBNB(address arg1, address[] arg2, uint256[] arg3)
#
const EXECUTOR_ROLE = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63

const TIMELOCK_ADMIN_ROLE = 0x5f58e3a2316349923ce3780f8d587db2d72378aed66a8261c916544fa6846ca5

const PROPOSER_ROLE = 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint256 stor1;
mapping of uint256 timestamp;
uint256 minDelay;
uint256 minDelayReduced;
address devWalletAddress;
array of address beneficiary;
array of uint256 beneficiaryRewardFactors;
address wbnbAddress;
uint256 sub_d7caff71;

function beneficiaryAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < beneficiary.length
    return beneficiary[arg1]
}

function devWalletAddress() {
    return devWalletAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_512
}

function beneficiaryRewardFactors(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < beneficiaryRewardFactors.length
    return beneficiaryRewardFactors[arg1]
}

function wbnbAddress() {
    return wbnbAddress
}

function minDelayReduced() {
    return minDelayReduced
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function minDelay() {
    return minDelay
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_0
}

function getTimestamp(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return timestamp[arg1]
}

function sub_d7caff71(?) {
    return sub_d7caff71
}

function getMinDelay() {
    return minDelay
}

function _fallback() payable {
    revert
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

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function isOperationReady(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timestamp[arg1] <= 1:
        return (timestamp[arg1] > 1)
    return timestamp[arg1] <= block.timestamp
}

function updateMinDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayChange(minDelay, arg1);
    minDelay = arg1
}

function updateMinDelayReduced(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayReducedChange(minDelayReduced, arg1);
    minDelayReduced = arg1
}

function setDevWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    if devWalletAddress != tx.origin:
        revert with 0, 'tx.origin != devWalletAddress'
    devWalletAddress = arg1
}

function setAUTOStakingRewardsFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newAUTOStakingRewardsFactor > 1000'
    emit AUTOStakingRewardsFactorChange(sub_d7caff71, arg1);
    sub_d7caff71 = arg1
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

function farm(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.farm() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function earn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.earn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pause(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrapBNB(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.wrapBNB() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc1(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc2(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc2() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc3(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc3() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][address(msg.sender)].field_0:
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[arg1] <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: operation cannot be cancelled'
    timestamp[arg1] = 0
    emit Cancelled(arg1);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function add(address arg1, address arg2, bool arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.add(uint256 rg1, address rg2, bool rg3, address rg4) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
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

function scheduleSet(address arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6]:
        revert with 0, 'TimelockController: operation already scheduled'
    if block.timestamp + minDelayReduced < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] = block.timestamp + minDelayReduced
    emit SetScheduled(arg2, arg3, arg4, arg5, minDelayReduced, sha3(address(arg1), arg2, arg3, arg4, arg5, arg6), 0);
}

function executeSet(address arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    if arg5:
        if timestamp[arg5] != 1:
            revert with 0, 'TimelockController: missing dependency'
    require ext_code.size(arg1)
    call arg1.set(uint256 rg1, uint256 rg2, bool rg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6] = 1
    stor1 = 1
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
    if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][address(msg.sender)].field_0:
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5]:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    if block.timestamp + arg6 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
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

function setBeneficiaries(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0, 'TimelockController: sender requires permission'
    beneficiary.length = arg1.length
    if not arg1.length:
        idx = 0
        while beneficiary.length > idx:
            beneficiary[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            beneficiary[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while beneficiary.length > idx:
            beneficiary[idx] = 0
            idx = idx + 1
            continue 
    beneficiaryRewardFactors.length = arg2.length
    if not arg2.length:
        idx = 0
        while beneficiaryRewardFactors.length > idx:
            beneficiaryRewardFactors[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            beneficiaryRewardFactors[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while beneficiaryRewardFactors.length > idx:
            beneficiaryRewardFactors[idx] = 0
            idx = idx + 1
            continue 
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
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
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
    stor1 = 1
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
    mem[32] = sha3(0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, 0) + 1
    if roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][address(msg.sender)].field_0:
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
        _69 = mem[64]
        mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + -mem[64] + 352
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _71 = sha3(mem[_69 + 32 len mem[_69]])
        mem[0] = sha3(mem[_69 + 32 len mem[_69]])
        if timestamp[mem[0]]:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if block.timestamp + arg6 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        timestamp[_71] = block.timestamp + arg6
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
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _71, idx);
            idx = idx + 1
            continue 
    else:
        mem[0] = 0
        mem[32] = sha3(0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, 0) + 1
        if not roleAdmin[0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
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
        _72 = mem[64]
        mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + -mem[64] + 352
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _74 = sha3(mem[_72 + 32 len mem[_72]])
        mem[0] = sha3(mem[_72 + 32 len mem[_72]])
        if timestamp[mem[0]]:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if block.timestamp + arg6 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        timestamp[_74] = block.timestamp + arg6
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
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _74, idx);
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
    mem[0] = msg.sender
    mem[32] = sha3(0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0) + 1
    if roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
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
        mem[0] = _215
        if timestamp[_215] > block.timestamp:
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
                _337 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _337 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if return_data.size:
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_345] = return_data.size
                    mem[_345 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _215, idx);
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
                _338 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _338 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if return_data.size:
                    _346 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_346] = return_data.size
                    mem[_346 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _215, idx);
                idx = idx + 1
                continue 
        if timestamp[_215] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_215] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_215] = 1
    else:
        mem[0] = 0
        mem[32] = sha3(0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0) + 1
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
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
        _216 = mem[64]
        mem[mem[64]] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + -mem[64] + 352
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (64 * arg3.length) + 384
        _218 = sha3(mem[_216 + 32 len mem[_216]])
        mem[0] = sha3(mem[_216 + 32 len mem[_216]])
        if timestamp[mem[0]] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        mem[0] = _218
        if timestamp[_218] > block.timestamp:
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
                _339 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _339 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if return_data.size:
                    _347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_347] = return_data.size
                    mem[_347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _218, idx);
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
                _340 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _340 + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if return_data.size:
                    _348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_348] = return_data.size
                    mem[_348 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _218, idx);
                idx = idx + 1
                continue 
        if timestamp[_218] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_218] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_218] = 1
    stor1 = 1
}

function distributeRewards() {
    mem[0] = msg.sender
    mem[32] = sha3(0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0) + 1
    if roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][address(msg.sender)].field_0:
        mem[100] = this.address
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_d7caff71 > 0:
            idx = 0
            while uint8(idx) < beneficiary.length:
                require uint8(idx) < beneficiaryRewardFactors.length
                mem[0] = 7
                if not ext_call.return_data[0]:
                    _295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_295] = 26
                    mem[_295 + 32] = 'SafeMath: division by zero'
                    _303 = mem[64]
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = beneficiary[uint8(idx)]
                    mem[mem[64] + 100] = 0
                    _307 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_307 + 32] = mem[_307 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[64] = _303 + 196
                    mem[_303 + 132] = 32
                    mem[_303 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(wbnbAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _331 = mem[_307]
                    s = 0
                    while s < _331:
                        mem[_303 + s + 196] = mem[_307 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_331) > _331:
                        mem[_303 + _331 + 196] = 0
                    call wbnbAddress.mem[_303 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_303 + 200 len _331 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_303 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_303 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_303 + idx + 264] = mem[_303 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_303 + 264]
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _303 + ceil32(return_data.size) + 197
                        mem[_303 + 196] = return_data.size
                        mem[_303 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_303 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_303 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[_303 + ceil32(return_data.size) + idx + 265] = mem[_303 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_303 + ceil32(return_data.size) + 265]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_303 + 228] == bool(mem[_303 + 228])
                            if not mem[_303 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * beneficiaryRewardFactors[uint8(idx)] / ext_call.return_data[0] != beneficiaryRewardFactors[uint8(idx)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_299] = 26
                    mem[_299 + 32] = 'SafeMath: division by zero'
                    _305 = mem[64]
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = beneficiary[uint8(idx)]
                    mem[mem[64] + 100] = ext_call.return_data[0] * beneficiaryRewardFactors[uint8(idx)] / 1000
                    _313 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_313 + 32] = mem[_313 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[64] = _305 + 196
                    mem[_305 + 132] = 32
                    mem[_305 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(wbnbAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _335 = mem[_313]
                    s = 0
                    while s < _335:
                        mem[_305 + s + 196] = mem[_313 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_335) > _335:
                        mem[_305 + _335 + 196] = 0
                    call wbnbAddress.mem[_305 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_305 + 200 len _335 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_305 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_305 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_305 + idx + 264] = mem[_305 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_305 + 264]
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _305 + ceil32(return_data.size) + 197
                        mem[_305 + 196] = return_data.size
                        mem[_305 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_305 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_305 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[_305 + ceil32(return_data.size) + idx + 265] = mem[_305 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_305 + ceil32(return_data.size) + 265]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_305 + 228] == bool(mem[_305 + 228])
                            if not mem[_305 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = idx + 1
                continue 
    else:
        mem[0] = 0
        mem[32] = sha3(0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, 0) + 1
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        mem[100] = this.address
        require ext_code.size(wbnbAddress)
        staticcall wbnbAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_d7caff71 > 0:
            idx = 0
            while uint8(idx) < beneficiary.length:
                require uint8(idx) < beneficiaryRewardFactors.length
                mem[0] = 7
                if not ext_call.return_data[0]:
                    _296 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_296] = 26
                    mem[_296 + 32] = 'SafeMath: division by zero'
                    _304 = mem[64]
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = beneficiary[uint8(idx)]
                    mem[mem[64] + 100] = 0
                    _309 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_309 + 32] = mem[_309 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[64] = _304 + 196
                    mem[_304 + 132] = 32
                    mem[_304 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(wbnbAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _333 = mem[_309]
                    s = 0
                    while s < _333:
                        mem[_304 + s + 196] = mem[_309 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_333) > _333:
                        mem[_304 + _333 + 196] = 0
                    call wbnbAddress.mem[_304 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_304 + 200 len _333 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_304 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_304 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_304 + idx + 264] = mem[_304 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_304 + 264]
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _304 + ceil32(return_data.size) + 197
                        mem[_304 + 196] = return_data.size
                        mem[_304 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_304 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_304 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[_304 + ceil32(return_data.size) + idx + 265] = mem[_304 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_304 + ceil32(return_data.size) + 265]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_304 + 228] == bool(mem[_304 + 228])
                            if not mem[_304 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * beneficiaryRewardFactors[uint8(idx)] / ext_call.return_data[0] != beneficiaryRewardFactors[uint8(idx)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_300] = 26
                    mem[_300 + 32] = 'SafeMath: division by zero'
                    _306 = mem[64]
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = beneficiary[uint8(idx)]
                    mem[mem[64] + 100] = ext_call.return_data[0] * beneficiaryRewardFactors[uint8(idx)] / 1000
                    _315 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_315 + 32] = mem[_315 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[64] = _306 + 196
                    mem[_306 + 132] = 32
                    mem[_306 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(wbnbAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _337 = mem[_315]
                    s = 0
                    while s < _337:
                        mem[_306 + s + 196] = mem[_315 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_337) > _337:
                        mem[_306 + _337 + 196] = 0
                    call wbnbAddress.mem[_306 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_306 + 200 len _337 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_306 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_306 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_306 + idx + 264] = mem[_306 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_306 + 264]
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _306 + ceil32(return_data.size) + 197
                        mem[_306 + 196] = return_data.size
                        mem[_306 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_306 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_306 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[_306 + ceil32(return_data.size) + idx + 265] = mem[_306 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_306 + ceil32(return_data.size) + 265]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_306 + 228] == bool(mem[_306 + 228])
                            if not mem[_306 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = idx + 1
                continue 
    return 0
}



}
