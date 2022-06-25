contract main {




// =====================  Runtime code  =====================


#
#  - addLiquidity(address arg1, uint256 arg2)
#  - sub_682dbc22(?)
#  - executeDelayedTransfer(bytes32 arg1)
#  - sub_a21a9280(?)
#  - sub_a5977fbb(?)
#  - sub_ba2cb25c(?)
#  - sub_cdd1b25d(?)
#  - _fallback()
#
address owner;
uint256 sub_d0790da9;
uint256 triggerTime;
uint256 resetTime;
uint256 sub_9b14d4c6;
uint256 stor5;
uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
uint256 epochLength;
mapping of uint256 sub_60216b00;
mapping of uint256 sub_b5f2bc47;
mapping of uint256 sub_f8321383;
mapping of struct sub_adc0d57f;
mapping of uint256 sub_52532faa;
uint256 sub_b1c94d94;
uint64 sub_89e39127;
mapping of uint256 sub_ccde517a;
mapping of uint8 stor18;
address sub_457bfa2fAddress;
mapping of uint8 stor20;
mapping of uint256 sub_f8b30d7d;
mapping of uint256 sub_618ee055;
uint32 sub_2fd1b0a4;

function sub_2fd1b0a4(?) {
    return sub_2fd1b0a4
}

function triggerTime() {
    return triggerTime
}

function transfers(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function sub_457bfa2f(?) {
    return sub_457bfa2fAddress
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function sub_52532faa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_52532faa[arg1]
}

function epochLength() {
    return epochLength
}

function paused() {
    return bool(stor6)
}

function sub_60216b00(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_60216b00[arg1]
}

function sub_618ee055(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_618ee055[arg1]
}

function resetTime() {
    return resetTime
}

function pausers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function sub_89e39127(?) {
    return sub_89e39127
}

function owner() {
    return owner
}

function sub_9b14d4c6(?) {
    return sub_9b14d4c6
}

function sub_adc0d57f(?) {
    require calldata.size - 4 >= 32
    return sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_256, sub_adc0d57f[arg1].field_512, sub_adc0d57f[arg1].field_768
}

function sub_b1c94d94(?) {
    return sub_b1c94d94
}

function sub_b5f2bc47(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b5f2bc47[arg1]
}

function sub_ccde517a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ccde517a[arg1]
}

function sub_d0790da9(?) {
    return sub_d0790da9
}

function withdraws(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function governors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function isGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function sub_f8321383(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f8321383[arg1]
}

function sub_f8b30d7d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f8b30d7d[arg1]
}

function renouncePauser() {
    if not stor7[address(msg.sender)]:
        revert with 0, 'Account is not pauser'
    stor7[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceGovernor() {
    if not stor8[address(msg.sender)]:
        revert with 0, 'Account is not governor'
    stor8[address(msg.sender)] = 0
    emit GovernorRemoved(msg.sender);
}

function pause() {
    if not stor7[msg.sender]:
        revert with 0, 'Caller is not pauser'
    if stor6:
        revert with 0, 'Pausable: paused'
    stor6 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not stor7[msg.sender]:
        revert with 0, 'Caller is not pauser'
    if not stor6:
        revert with 0, 'Pausable: not paused'
    stor6 = 0
    emit Unpaused(msg.sender);
}

function setMinimalMaxSlippage(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor8[msg.sender]:
        revert with 0, 'Caller is not governor'
    sub_2fd1b0a4 = arg1
}

function setEpochLength(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor8[msg.sender]:
        revert with 0, 'Caller is not governor'
    epochLength = arg1
    emit EpochLengthUpdated(arg1);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDelayPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor8[msg.sender]:
        revert with 0, 'Caller is not governor'
    sub_b1c94d94 = arg1
    emit DelayPeriodUpdated(arg1);
}

function setWrap(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_457bfa2fAddress = arg1
}

function notifyResetSigners() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if block.timestamp > !sub_9b14d4c6:
        revert with 0, 17
    resetTime = block.timestamp + sub_9b14d4c6
    emit ResetNotification((block.timestamp + sub_9b14d4c6));
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if stor7[address(arg1)]:
        revert with 0, 'Account is already pauser'
    stor7[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function removePauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not stor7[address(arg1)]:
        revert with 0, 'Account is not pauser'
    stor7[address(arg1)] = 0
    emit PauserRemoved(arg1);
}

function addGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if stor8[address(arg1)]:
        revert with 0, 'Account is already governor'
    stor8[address(arg1)] = 1
    emit GovernorAdded(arg1);
}

function removeGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not stor8[address(arg1)]:
        revert with 0, 'Account is not governor'
    stor8[address(arg1)] = 0
    emit GovernorRemoved(arg1);
}

function increaseNoticePeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 <= sub_9b14d4c6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'notice period can only be increased'
    sub_9b14d4c6 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addNativeLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if stor6:
        revert with 0, 'Pausable: paused'
    if arg1 != msg.value:
        revert with 0, 'Amount mismatch'
    if not sub_457bfa2fAddress:
        revert with 0, 'Native wrap not set'
    if arg1 <= sub_ccde517a[stor19]:
        revert with 0, 'amount too small'
    if sub_89e39127 > test266151307():
        revert with 0, 17
    sub_89e39127 = uint64(sub_89e39127 + 1)
    require ext_code.size(sub_457bfa2fAddress)
    call sub_457bfa2fAddress.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd5d28426: sub_89e39127, msg.sender, sub_457bfa2fAddress, arg1
    stor5 = 1
}

function sendNative(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, uint32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if stor6:
        revert with 0, 'Pausable: paused'
    if arg2 != msg.value:
        revert with 0, 'Amount mismatch'
    if not sub_457bfa2fAddress:
        revert with 0, 'Native wrap not set'
    if arg2 <= sub_f8b30d7d[stor19]:
        revert with 0, 'amount too small'
    if sub_618ee055[stor19]:
        if arg2 > sub_618ee055[stor19]:
            revert with 0, 'amount too large'
    if arg5 <= sub_2fd1b0a4:
        revert with 0, 'max slippage too small'
    if stor20[msg.sender][arg1][stor19][arg2][arg3][arg4][uint64(chainid)]:
        revert with 0, 'transfer exists'
    stor20[msg.sender][arg1][stor19][arg2][arg3][arg4][uint64(chainid)] = 1
    require ext_code.size(sub_457bfa2fAddress)
    call sub_457bfa2fAddress.0xd0e30db0 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Send(sha3(msg.sender, arg1, sub_457bfa2fAddress, arg2, arg3, arg4, uint64(chainid)), msg.sender, address(arg1), sub_457bfa2fAddress, arg2, arg3 << 192, arg4 << 192, arg5);
    stor5 = 1
}

function sub_e999e5f4(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor8[msg.sender]:
        revert with 0, 'Caller is not governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 17
        sub_ccde517a[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = cd[((32 * idx) + cd[36] + 36)]
        emit MinAddUpdated(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_08992741(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor8[msg.sender]:
        revert with 0, 'Caller is not governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 21
        sub_f8b30d7d[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = cd[((32 * idx) + cd[36] + 36)]
        emit MinSendUpdated(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_878fe1ce(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor8[msg.sender]:
        revert with 0, 'Caller is not governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 22
        sub_618ee055[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = cd[((32 * idx) + cd[36] + 36)]
        emit MaxSendUpdated(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_47b16c6c(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor8[msg.sender]:
        revert with 0, 'Caller is not governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 11
        sub_b5f2bc47[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = cd[((32 * idx) + cd[36] + 36)]
        emit EpochVolumeUpdated(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_17bdbae5(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor8[msg.sender]:
        revert with 0, 'Caller is not governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 14
        sub_52532faa[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = cd[((32 * idx) + cd[36] + 36)]
        emit DelayThresholdUpdated(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a7bdf45a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if block.timestamp <= resetTime:
        revert with 0, 'not reach reset time'
    resetTime = -1
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'signers and powers length not match'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if address(cd[((32 * idx) + cd[4] + 36)]) <= address(s):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New signers not in ascending order'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = cd[((32 * idx) + cd[4] + 36)]
        continue 
    idx = 0
    s = cd[4] + 36
    t = mem[64] + 32
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[mem[64] + (32 * ('cd', 4).length) + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[t + (32 * ('cd', 36).length)] = 0
    _23 = mem[64]
    mem[mem[64]] = t + (32 * ('cd', 36).length) + -mem[64] - 32
    mem[64] = t + (32 * ('cd', 36).length)
    sub_d0790da9 = sha3(mem[_23 + 32 len mem[_23]])
    idx = 0
    s = t + (32 * ('cd', 36).length) + 96
    u = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[u] == address(cd[u])
        mem[s] = address(cd[u])
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    mem[t + (32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 96] = ('cd', 36).length
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit SignersUpdated(Array(len=('cd', 4).length, data=mem[t + (32 * ('cd', 36).length) + 96 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 96);
}



}
