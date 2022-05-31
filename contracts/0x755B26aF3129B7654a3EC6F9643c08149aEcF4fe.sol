contract main {




// =====================  Runtime code  =====================


#
#  - executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5)
#
const MAXIMUM_DELAY = (24 * 3600)

const MINIMUM_DELAY = (6 * 3600)

const GRACE_PERIOD = (336 * 24 * 3600)


address adminAddress;
address pendingAdminAddress;
uint256 delay;
uint8 stor3;
mapping of uint8 stor4;

function pendingAdmin() {
    return pendingAdminAddress
}

function delay() {
    return delay
}

function admin_initialized() {
    return bool(stor3)
}

function queuedTransactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::acceptAdmin: Call must come from pendingAdmin.'
    adminAddress = msg.sender
    pendingAdminAddress = 0
    emit NewAdmin(adminAddress);
}

function setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Timelock::setPendingAdmin: Call must come from Timelock.'
    else:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Timelock::setPendingAdmin: First call must come from admin.'
        stor3 = 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress);
}

function setDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timelock::setDelay: Call must come from Timelock.'
    if arg1 < 6 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::setDelay: Delay must exceed minimum delay.'
    if arg1 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::setDelay: Delay must not exceed maximum delay.'
    delay = arg1
    emit NewDelay(delay);
}

function cancelTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + ceil32(arg4.length) + 160 > test266151307() or ceil32(arg4.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg3.length) + 128] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg5 == arg5
    if adminAddress != msg.sender:
        revert with 0, 'Timelock::cancelTransaction: Call must come from admin.'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) <= arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = ceil32(arg3.length) + 192
        _73 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224
            mem[64] = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            _141 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor4[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
            _143 = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416] = arg2
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 448] = 128
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 544] = arg3.length
            mem[_143 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                mem[_143 + 64] = ceil32(arg3.length) + 160
                _203 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_143 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_143 + ceil32(arg3.length) + 192 len ceil32(_203)] = mem[ceil32(arg3.length) + 160 len ceil32(_203)]
                if ceil32(_203) > _203:
                    mem[_143 + ceil32(arg3.length) + _203 + 192] = 0
                mem[_143 + 96] = arg5
                emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                       mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_73) + 416 len _143 + -ceil32(arg3.length) + ceil32(_203) + -ceil32(arg4.length) + -ceil32(_73) - 224],
                                       _141,
                                       arg1,
            else:
                mem[_143 + arg3.length + 160] = 0
                mem[_143 + 64] = ceil32(arg3.length) + 160
                _207 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_143 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_143 + ceil32(arg3.length) + 192 len ceil32(_207)] = mem[ceil32(arg3.length) + 160 len ceil32(_207)]
                if ceil32(_207) > _207:
                    mem[_143 + ceil32(arg3.length) + _207 + 192] = 0
                mem[_143 + 96] = arg5
                emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                       mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_73) + 416 len _143 + -ceil32(arg3.length) + ceil32(_207) + -ceil32(arg4.length) + -ceil32(_73) - 224],
                                       _141,
                                       arg1,
        else:
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 416] = 0
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224
            mem[64] = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            _151 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor4[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
            _153 = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416] = arg2
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 448] = 128
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 544] = arg3.length
            mem[_153 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                mem[_153 + 64] = ceil32(arg3.length) + 160
                _204 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_153 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_153 + ceil32(arg3.length) + 192 len ceil32(_204)] = mem[ceil32(arg3.length) + 160 len ceil32(_204)]
                if ceil32(_204) > _204:
                    mem[_153 + ceil32(arg3.length) + _204 + 192] = 0
                mem[_153 + 96] = arg5
                emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                       mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_73) + 416 len _153 + -ceil32(arg3.length) + ceil32(_204) + -ceil32(arg4.length) + -ceil32(_73) - 224],
                                       _151,
                                       arg1,
            else:
                mem[_153 + arg3.length + 160] = 0
                mem[_153 + 64] = ceil32(arg3.length) + 160
                _208 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_153 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_153 + ceil32(arg3.length) + 192 len ceil32(_208)] = mem[ceil32(arg3.length) + 160 len ceil32(_208)]
                if ceil32(_208) > _208:
                    mem[_153 + ceil32(arg3.length) + _208 + 192] = 0
                mem[_153 + 96] = arg5
                emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                       mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_73) + 416 len _153 + -ceil32(arg3.length) + ceil32(_208) + -ceil32(arg4.length) + -ceil32(_73) - 224],
                                       _151,
                                       arg1,
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 384] = 0
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = ceil32(arg3.length) + 192
        _74 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224
            mem[64] = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            _146 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor4[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
            _148 = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416] = arg2
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 448] = 128
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 544] = arg3.length
            mem[_148 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                mem[_148 + 64] = ceil32(arg3.length) + 160
                _205 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_148 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_148 + ceil32(arg3.length) + 192 len ceil32(_205)] = mem[ceil32(arg3.length) + 160 len ceil32(_205)]
                if ceil32(_205) > _205:
                    mem[_148 + ceil32(arg3.length) + _205 + 192] = 0
                mem[_148 + 96] = arg5
                emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                       mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_74) + 416 len _148 + -ceil32(arg3.length) + ceil32(_205) + -ceil32(arg4.length) + -ceil32(_74) - 224],
                                       _146,
                                       arg1,
            else:
                mem[_148 + arg3.length + 160] = 0
                mem[_148 + 64] = ceil32(arg3.length) + 160
                _209 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_148 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_148 + ceil32(arg3.length) + 192 len ceil32(_209)] = mem[ceil32(arg3.length) + 160 len ceil32(_209)]
                if ceil32(_209) > _209:
                    mem[_148 + ceil32(arg3.length) + _209 + 192] = 0
                mem[_148 + 96] = arg5
                emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                       mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_74) + 416 len _148 + -ceil32(arg3.length) + ceil32(_209) + -ceil32(arg4.length) + -ceil32(_74) - 224],
                                       _146,
                                       arg1,
        else:
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 416] = 0
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224
            mem[64] = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            _156 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor4[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
            _158 = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416] = arg2
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 448] = 128
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 544] = arg3.length
            mem[_158 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                mem[_158 + 64] = ceil32(arg3.length) + 160
                _206 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_158 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_158 + ceil32(arg3.length) + 192 len ceil32(_206)] = mem[ceil32(arg3.length) + 160 len ceil32(_206)]
                if ceil32(_206) > _206:
                    mem[_158 + ceil32(arg3.length) + _206 + 192] = 0
                mem[_158 + 96] = arg5
                emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                       mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_74) + 416 len _158 + -ceil32(arg3.length) + ceil32(_206) + -ceil32(arg4.length) + -ceil32(_74) - 224],
                                       _156,
                                       arg1,
            else:
                mem[_158 + arg3.length + 160] = 0
                mem[_158 + 64] = ceil32(arg3.length) + 160
                _210 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_158 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_158 + ceil32(arg3.length) + 192 len ceil32(_210)] = mem[ceil32(arg3.length) + 160 len ceil32(_210)]
                if ceil32(_210) > _210:
                    mem[_158 + ceil32(arg3.length) + _210 + 192] = 0
                mem[_158 + 96] = arg5
                emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                       mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_74) + 416 len _158 + -ceil32(arg3.length) + ceil32(_210) + -ceil32(arg4.length) + -ceil32(_74) - 224],
                                       _156,
                                       arg1,
}

function queueTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + ceil32(arg4.length) + 160 > test266151307() or ceil32(arg4.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg3.length) + 128] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg5 == arg5
    if adminAddress != msg.sender:
        revert with 0, 'Timelock::queueTransaction: Call must come from admin.'
    if block.timestamp > -delay - 1:
        revert with 'NH{q', 17
    if block.timestamp + delay < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < block.timestamp + delay:
        revert with 0, 'Timelock::queueTransaction: Estimated execution block must satisfy delay.'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) <= arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = ceil32(arg3.length) + 192
        _109 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224
            mem[64] = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            _209 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor4[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
            _211 = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416] = arg2
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 448] = 128
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 544] = arg3.length
            mem[_211 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                mem[_211 + 64] = ceil32(arg3.length) + 160
                _303 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_211 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_211 + ceil32(arg3.length) + 192 len ceil32(_303)] = mem[ceil32(arg3.length) + 160 len ceil32(_303)]
                if ceil32(_303) > _303:
                    mem[_211 + ceil32(arg3.length) + _303 + 192] = 0
                mem[_211 + 96] = arg5
                emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                      mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_109) + 416 len _211 + -ceil32(arg3.length) + ceil32(_303) + -ceil32(arg4.length) + -ceil32(_109) - 224],
                                      _209,
                                      arg1,
            else:
                mem[_211 + arg3.length + 160] = 0
                mem[_211 + 64] = ceil32(arg3.length) + 160
                _307 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_211 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_211 + ceil32(arg3.length) + 192 len ceil32(_307)] = mem[ceil32(arg3.length) + 160 len ceil32(_307)]
                if ceil32(_307) > _307:
                    mem[_211 + ceil32(arg3.length) + _307 + 192] = 0
                mem[_211 + 96] = arg5
                emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                      mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_109) + 416 len _211 + -ceil32(arg3.length) + ceil32(_307) + -ceil32(arg4.length) + -ceil32(_109) - 224],
                                      _209,
                                      arg1,
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_109) + 416] = _209
        else:
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 416] = 0
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224
            mem[64] = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            _219 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
            stor4[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
            _221 = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416] = arg2
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 448] = 128
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 544] = arg3.length
            mem[_221 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                mem[_221 + 64] = ceil32(arg3.length) + 160
                _304 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_221 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_221 + ceil32(arg3.length) + 192 len ceil32(_304)] = mem[ceil32(arg3.length) + 160 len ceil32(_304)]
                if ceil32(_304) > _304:
                    mem[_221 + ceil32(arg3.length) + _304 + 192] = 0
                mem[_221 + 96] = arg5
                emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                      mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_109) + 416 len _221 + -ceil32(arg3.length) + ceil32(_304) + -ceil32(arg4.length) + -ceil32(_109) - 224],
                                      _219,
                                      arg1,
            else:
                mem[_221 + arg3.length + 160] = 0
                mem[_221 + 64] = ceil32(arg3.length) + 160
                _308 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_221 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[_221 + ceil32(arg3.length) + 192 len ceil32(_308)] = mem[ceil32(arg3.length) + 160 len ceil32(_308)]
                if ceil32(_308) > _308:
                    mem[_221 + ceil32(arg3.length) + _308 + 192] = 0
                mem[_221 + 96] = arg5
                emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                      mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_109) + 416 len _221 + -ceil32(arg3.length) + ceil32(_308) + -ceil32(arg4.length) + -ceil32(_109) - 224],
                                      _219,
                                      arg1,
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_109) + 416] = _219
        return memory
          from (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_109) + 416
           len ceil32(arg3.length) + 32
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 384] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = ceil32(arg3.length) + 192
    _110 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224
        mem[64] = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
        _214 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        stor4[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
        _216 = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416] = arg2
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 448] = 128
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 544] = arg3.length
        mem[_216 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if ceil32(arg3.length) <= arg3.length:
            mem[_216 + 64] = ceil32(arg3.length) + 160
            _305 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_216 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_216 + ceil32(arg3.length) + 192 len ceil32(_305)] = mem[ceil32(arg3.length) + 160 len ceil32(_305)]
            if ceil32(_305) > _305:
                mem[_216 + ceil32(arg3.length) + _305 + 192] = 0
            mem[_216 + 96] = arg5
            emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                  mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_110) + 416 len _216 + -ceil32(arg3.length) + ceil32(_305) + -ceil32(arg4.length) + -ceil32(_110) - 224],
                                  _214,
                                  arg1,
        else:
            mem[_216 + arg3.length + 160] = 0
            mem[_216 + 64] = ceil32(arg3.length) + 160
            _309 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_216 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_216 + ceil32(arg3.length) + 192 len ceil32(_309)] = mem[ceil32(arg3.length) + 160 len ceil32(_309)]
            if ceil32(_309) > _309:
                mem[_216 + ceil32(arg3.length) + _309 + 192] = 0
            mem[_216 + 96] = arg5
            emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                  mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_110) + 416 len _216 + -ceil32(arg3.length) + ceil32(_309) + -ceil32(arg4.length) + -ceil32(_110) - 224],
                                  _214,
                                  arg1,
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_110) + 416] = _214
    else:
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 416] = 0
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ceil32(arg3.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224
        mem[64] = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
        _224 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        stor4[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
        _226 = (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 416] = arg2
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 448] = 128
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 544] = arg3.length
        mem[_226 + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if ceil32(arg3.length) <= arg3.length:
            mem[_226 + 64] = ceil32(arg3.length) + 160
            _306 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_226 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_226 + ceil32(arg3.length) + 192 len ceil32(_306)] = mem[ceil32(arg3.length) + 160 len ceil32(_306)]
            if ceil32(_306) > _306:
                mem[_226 + ceil32(arg3.length) + _306 + 192] = 0
            mem[_226 + 96] = arg5
            emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                  mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_110) + 416 len _226 + -ceil32(arg3.length) + ceil32(_306) + -ceil32(arg4.length) + -ceil32(_110) - 224],
                                  _224,
                                  arg1,
        else:
            mem[_226 + arg3.length + 160] = 0
            mem[_226 + 64] = ceil32(arg3.length) + 160
            _310 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_226 + ceil32(arg3.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[_226 + ceil32(arg3.length) + 192 len ceil32(_310)] = mem[ceil32(arg3.length) + 160 len ceil32(_310)]
            if ceil32(_310) > _310:
                mem[_226 + ceil32(arg3.length) + _310 + 192] = 0
            mem[_226 + 96] = arg5
            emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                  mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_110) + 416 len _226 + -ceil32(arg3.length) + ceil32(_310) + -ceil32(arg4.length) + -ceil32(_110) - 224],
                                  _224,
                                  arg1,
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_110) + 416] = _224
    return memory
      from (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(_110) + 416
       len ceil32(arg3.length) + 32
}



}
