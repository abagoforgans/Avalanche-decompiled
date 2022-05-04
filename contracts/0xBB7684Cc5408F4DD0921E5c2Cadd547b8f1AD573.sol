contract main {




// =====================  Runtime code  =====================


#
#  - addLiquidity(address arg1, uint256 arg2)
#  - sub_682dbc22(?)
#  - sub_7d5a232f(?)
#  - sub_a21a9280(?)
#  - sub_a5977fbb(?)
#  - sub_cdd1b25d(?)
#  - _fallback()
#
address owner;
uint256 sub_d0790da9;
uint256 resetTime;
uint256 sub_9b14d4c6;
uint8 paused;
mapping of uint8 stor6;
uint64 sub_89e39127;
mapping of uint256 sub_ccde517a;
mapping of uint8 stor9;
uint256 epochLength;
mapping of uint256 sub_60216b00;
mapping of uint256 sub_b5f2bc47;
mapping of uint256 sub_f8321383;
mapping of struct sub_adc0d57f;
mapping of uint256 sub_52532faa;
uint256 sub_b1c94d94;
address sub_457bfa2fAddress;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of uint256 sub_f8b30d7d;
mapping of uint256 sub_618ee055;
uint32 sub_2fd1b0a4;

function sub_2fd1b0a4(?) {
    return sub_2fd1b0a4
}

function transfers(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function sub_457bfa2f(?) {
    return sub_457bfa2fAddress
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
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
    return bool(paused)
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
    return bool(stor6[arg1])
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
    return bool(stor9[arg1])
}

function governors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[arg1])
}

function isGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[address(arg1)])
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
    if not stor6[address(msg.sender)]:
        revert with 0, 'Account is not pauser'
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function sub_edd75e20(?) {
    if not stor18[address(msg.sender)]:
        revert with 0, 'Account is not governor'
    stor18[address(msg.sender)] = 0
    emit GovernorRemoved(msg.sender);
}

function pause() {
    if not stor6[msg.sender]:
        revert with 0, 'Caller is not pauser'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not stor6[msg.sender]:
        revert with 0, 'Caller is not pauser'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setMinimalMaxSlippage(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor18[msg.sender]:
        revert with 0, 'Caller is not governor'
    sub_2fd1b0a4 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setEpochLength(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor18[msg.sender]:
        revert with 0, 'Caller is not governor'
    epochLength = arg1
    emit EpochLengthUpdated(arg1);
}

function setDelayPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor18[msg.sender]:
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
    if stor6[address(arg1)]:
        revert with 0, 'Account is already pauser'
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function removePauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not stor6[address(arg1)]:
        revert with 0, 'Account is not pauser'
    stor6[address(arg1)] = 0
    emit PauserRemoved(arg1);
}

function sub_8d8afa17(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if stor18[address(arg1)]:
        revert with 0, 'Account is already governor'
    stor18[address(arg1)] = 1
    emit GovernorAdded(address(arg1));
}

function sub_44a848af(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not stor18[address(arg1)]:
        revert with 0, 'Account is not governor'
    stor18[address(arg1)] = 0
    emit GovernorRemoved(address(arg1));
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
    if not stor18[msg.sender]:
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
        mem[32] = 8
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
    if not stor18[msg.sender]:
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
        mem[32] = 20
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
    if not stor18[msg.sender]:
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
    if not stor18[msg.sender]:
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
        mem[32] = 12
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
    if not stor18[msg.sender]:
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
        mem[32] = 15
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

function sub_a7bdf45a(?) {
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
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * ('cd', 4).length) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 128] = 0
    sub_d0790da9 = sha3(mem[128 len (32 * ('cd', 4).length) + (32 * ('cd', 36).length)])
    idx = 0
    s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = ('cd', 36).length
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit SignersUpdated(Array(len=('cd', 4).length, data=mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 96);
}

function executeDelayedTransfer(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    mem[128] = sub_adc0d57f[arg1].field_256
    mem[160] = sub_adc0d57f[arg1].field_512
    mem[192] = sub_adc0d57f[arg1].field_768
    if not sub_adc0d57f[arg1].field_768:
        revert with 0, 'transfer not exist'
    if sub_adc0d57f[arg1].field_768 > !sub_b1c94d94:
        revert with 0, 17
    if block.timestamp <= sub_adc0d57f[arg1].field_768 + sub_b1c94d94:
        revert with 0, 'transfer still locked'
    sub_adc0d57f[arg1].field_0 = 0
    sub_adc0d57f[arg1].field_256 = 0
    sub_adc0d57f[arg1].field_512 = 0
    sub_adc0d57f[arg1].field_768 = 0
    if sub_457bfa2fAddress != sub_adc0d57f[arg1].field_256:
        mem[260] = sub_adc0d57f[arg1].field_0
        mem[292] = sub_adc0d57f[arg1].field_512
        mem[224] = 68
        mem[260 len 28] = sub_adc0d57f[arg1].field_0
        mem[256 len 4] = unknown_0xa9059cbb(?????)
        mem[324] = 32
        mem[356] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_adc0d57f[arg1].field_256):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 96] = unknown_0xa9059cbb(?????), sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_512, 0
        mem[456] = 0
        call sub_adc0d57f[arg1].field_256 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_512, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_512, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if sub_adc0d57f[arg1].field_0:
                    revert with memory
                      from 128
                       len sub_adc0d57f[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if sub_adc0d57f[arg1].field_0:
                require sub_adc0d57f[arg1].field_0 >= 32
                require sub_adc0d57f[arg1].field_256 == bool(sub_adc0d57f[arg1].field_256)
                if not sub_adc0d57f[arg1].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[420] == bool(mem[420])
                if not mem[420]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if not stor9[arg1]:
            require ext_code.size(sub_457bfa2fAddress)
            call sub_457bfa2fAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args sub_adc0d57f[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sub_adc0d57f[arg1].field_0 with:
               value sub_adc0d57f[arg1].field_512 wei
                 gas 50000 wei
            if not ext_call.success:
                revert with 0, 'failed to relay native token'
        else:
            mem[260] = sub_adc0d57f[arg1].field_0
            mem[292] = sub_adc0d57f[arg1].field_512
            mem[224] = 68
            mem[260 len 28] = sub_adc0d57f[arg1].field_0
            mem[256 len 4] = unknown_0xa9059cbb(?????)
            mem[324] = 32
            mem[356] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_adc0d57f[arg1].field_256):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 96] = unknown_0xa9059cbb(?????), sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_512, 0
            mem[456] = 0
            call sub_adc0d57f[arg1].field_256 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_512, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if sub_adc0d57f[arg1].field_0:
                        revert with memory
                          from 128
                           len sub_adc0d57f[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sub_adc0d57f[arg1].field_0:
                    require sub_adc0d57f[arg1].field_0 >= 32
                    require sub_adc0d57f[arg1].field_256 == bool(sub_adc0d57f[arg1].field_256)
                    if not sub_adc0d57f[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[420] == bool(mem[420])
                    if not mem[420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit DelayedTransferExecuted(arg1, sub_adc0d57f[arg1].field_0, sub_adc0d57f[arg1].field_256, sub_adc0d57f[arg1].field_512);
}



}
