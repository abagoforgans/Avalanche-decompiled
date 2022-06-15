contract main {




// =====================  Runtime code  =====================


#
#  - executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5)
#
const MAXIMUM_DELAY = (720 * 24 * 3600)

const MINIMUM_DELAY = (6 * 3600)

const GRACE_PERIOD = (336 * 24 * 3600)


address adminAddress;
uint256 stor0;
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
    return bool(stor4[arg1])
}

function admin() {
    return address(adminAddress)
}

function acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::acceptAdmin: Call must come from pendingAdmin.'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    pendingAdminAddress = 0
    emit NewAdmin(msg.sender);
}

function setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Timelock::setPendingAdmin: Call must come from Timelock.'
    else:
        if address(adminAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Timelock::setPendingAdmin: First call must come from admin.'
        stor3 = 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(arg1);
}

function setDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timelock::setDelay: Call must come from Timelock.'
    if arg1 < 6 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::setDelay: Delay must exceed minimum delay.'
    if arg1 > 720 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::setDelay: Delay must not exceed maximum delay.'
    delay = arg1
    emit NewDelay(arg1);
}

function cancelTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    if address(adminAddress) != msg.sender:
        revert with 0, 'Timelock::cancelTransaction: Call must come from admin.'
    if ceil32(arg3.length) <= arg3.length:
        stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256)][ceil32(arg3.length) + 192][arg5] = 0
        if ceil32(arg3.length) <= arg3.length:
            emit CancelTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5), arg1);
        else:
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if ceil32(arg4.length) > arg4.length:
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 546] = 0
            emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                   arg2,
                                   128,
                                   ceil32(arg3.length) + 160,
                                   arg5,
                                   arg3.length,
                                   Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256,
                                   0,
                                   mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 546 len ceil32(arg4.length) + ceil32(arg3.length) - arg3.length],
                                   sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5),
                                   arg1,
    else:
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322] = arg4.length
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 354] = 0
        stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 0
        if ceil32(arg3.length) <= arg3.length:
            emit CancelTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), arg1);
        else:
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if ceil32(arg4.length) > arg4.length:
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 546] = 0
            emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                   arg2,
                                   128,
                                   ceil32(arg3.length) + 160,
                                   arg5,
                                   arg3.length,
                                   Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256,
                                   0,
                                   mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 546 len ceil32(arg4.length) + ceil32(arg3.length) - arg3.length],
                                   sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5),
                                   arg1,
}

function queueTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    if address(adminAddress) != msg.sender:
        revert with 0, 'Timelock::queueTransaction: Call must come from admin.'
    if block.timestamp > !delay:
        revert with 0, 17
    if arg5 < block.timestamp + delay:
        revert with 0, 'Timelock::queueTransaction: Estimated execution block must satisfy delay.'
    if ceil32(arg3.length) <= arg3.length:
        stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256)][ceil32(arg3.length) + 192][arg5] = 1
        if ceil32(arg3.length) <= arg3.length:
            emit QueueTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5), arg1);
        else:
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if ceil32(arg4.length) > arg4.length:
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 546] = 0
            emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                  arg2,
                                  128,
                                  ceil32(arg3.length) + 160,
                                  arg5,
                                  arg3.length,
                                  Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256,
                                  0,
                                  mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 546 len ceil32(arg4.length) + ceil32(arg3.length) - arg3.length],
                                  sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5),
                                  arg1,
        return sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5)
    mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322] = arg4.length
    mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) > arg4.length:
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 354] = 0
    stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 1
    if ceil32(arg3.length) <= arg3.length:
        emit QueueTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), arg1);
    else:
        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if ceil32(arg4.length) > arg4.length:
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 546] = 0
        emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                              arg2,
                              128,
                              ceil32(arg3.length) + 160,
                              arg5,
                              arg3.length,
                              Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256,
                              0,
                              mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 546 len ceil32(arg4.length) + ceil32(arg3.length) - arg3.length],
                              sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5),
                              arg1,
    return sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x6fc1f57e(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xc1a287e2(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x6fc1f57e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(stor3)
            if unknown_0x7d645fab(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return (720 * 24 * 3600)
            require unknown_0xb1b43ae5(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return (6 * 3600)
        if unknown_0xc1a287e2(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return (336 * 24 * 3600)
        if uint32(call.func_hash) >> 224 != unknown_0xe177246e(?????):
            if unknown_0xf2b06537(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                return bool(stor4[arg1])
            require unknown_0xf851a440(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return address(adminAddress)
        require not msg.value
        require calldata.size - 4 >= 32
        if msg.sender != this.address:
            revert with 0, 'Timelock::setDelay: Call must come from Timelock.'
        if arg1 < 6 * 3600:
            revert with 0, 'Timelock::setDelay: Delay must exceed minimum delay.'
        if arg1 > 720 * 24 * 3600:
            revert with 0, 'Timelock::setDelay: Delay must not exceed maximum delay.'
        delay = arg1
        emit NewDelay(arg1);
    if unknown_0x3a66f901(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x3a66f901(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 160
            require arg1 == address(arg1)
            require arg3 <= test266151307()
            require arg3 + 35 < calldata.size
            if arg3.length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
                revert with 0, 65
            require arg3 + arg3.length + 36 <= calldata.size
            require arg4 <= test266151307()
            require calldata.size > arg4 + 35
            if arg4.length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(arg4.length)) + 130 < 129 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130 > test266151307():
                revert with 0, 65
            require arg4 + arg4.length + 36 <= calldata.size
            mem[ceil32(ceil32(arg3.length)) + 161 len arg4.length] = arg4[all]
            mem[ceil32(ceil32(arg3.length)) + arg4.length + 161] = 0
            if address(adminAddress) != msg.sender:
                revert with 0, 'Timelock::queueTransaction: Call must come from admin.'
            if block.timestamp > !delay:
                revert with 0, 17
            if arg5 < block.timestamp + delay:
                revert with 0, 'Timelock::queueTransaction: Estimated execution block must satisfy delay.'
            if ceil32(arg3.length) <= arg3.length:
                stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256)][ceil32(arg3.length) + 192][arg5] = 1
                if ceil32(arg3.length) <= arg3.length:
                    emit QueueTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5), address(arg1));
                else:
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) > arg4.length:
                        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 578] = 0
                    emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                          arg2,
                                          128,
                                          ceil32(arg3.length) + 160,
                                          arg5,
                                          arg3.length,
                                          Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256,
                                          0,
                                          mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 578 len ceil32(arg4.length) + ceil32(arg3.length) - arg3.length],
                                          sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5),
                                          address(arg1),
                return sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5)
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354] = arg4.length
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 386] = 0
            stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 1
            if ceil32(arg3.length) <= arg3.length:
                emit QueueTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
            else:
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 578] = 0
                emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                      arg2,
                                      128,
                                      ceil32(arg3.length) + 160,
                                      arg5,
                                      arg3.length,
                                      Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256,
                                      0,
                                      mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 578 len ceil32(arg4.length) + ceil32(arg3.length) - arg3.length],
                                      sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5),
                                      address(arg1),
            return sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5)
        if unknown_0x4dd18bf5(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor3:
                if msg.sender != this.address:
                    revert with 0, 'Timelock::setPendingAdmin: Call must come from Timelock.'
            else:
                if address(adminAddress) != msg.sender:
                    revert with 0, 'Timelock::setPendingAdmin: First call must come from admin.'
                stor3 = 1
            pendingAdminAddress = address(arg1)
            emit NewPendingAdmin(address(arg1));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x591fcdfe(?????):
                require unknown_0x6a42b8f8(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return delay
            require not msg.value
            require calldata.size - 4 >= 160
            require arg1 == address(arg1)
            require arg3 <= test266151307()
            require arg3 + 35 < calldata.size
            if arg3.length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
                revert with 0, 65
            require arg3 + arg3.length + 36 <= calldata.size
            require arg4 <= test266151307()
            require calldata.size > arg4 + 35
            if arg4.length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(arg4.length)) + 130 < 129 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130 > test266151307():
                revert with 0, 65
            require arg4 + arg4.length + 36 <= calldata.size
            mem[ceil32(ceil32(arg3.length)) + 161 len arg4.length] = arg4[all]
            mem[ceil32(ceil32(arg3.length)) + arg4.length + 161] = 0
            if address(adminAddress) != msg.sender:
                revert with 0, 'Timelock::cancelTransaction: Call must come from admin.'
            if ceil32(arg3.length) <= arg3.length:
                stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256)][ceil32(arg3.length) + 192][arg5] = 0
                if ceil32(arg3.length) <= arg3.length:
                    emit CancelTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5), address(arg1));
                else:
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) > arg4.length:
                        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 578] = 0
                    emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                           arg2,
                                           128,
                                           ceil32(arg3.length) + 160,
                                           arg5,
                                           arg3.length,
                                           Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256,
                                           0,
                                           mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 578 len ceil32(arg4.length) + ceil32(arg3.length) - arg3.length],
                                           sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 192, arg5),
                                           address(arg1),
            else:
                mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354] = arg4.length
                mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]
                if ceil32(arg4.length) > arg4.length:
                    mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 386] = 0
                stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 0
                if ceil32(arg3.length) <= arg3.length:
                    emit CancelTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
                else:
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) > arg4.length:
                        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 578] = 0
                    emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                           arg2,
                                           128,
                                           ceil32(arg3.length) + 160,
                                           arg5,
                                           arg3.length,
                                           Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * arg3.length) - 256,
                                           0,
                                           mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 578 len ceil32(arg4.length) + ceil32(arg3.length) - arg3.length],
                                           sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5),
                                           address(arg1),
    if uint32(call.func_hash) >> 224 != executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5):
        if uint32(call.func_hash) >> 224 != acceptAdmin():
            require unknown_0x26782247(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return pendingAdminAddress
        require not msg.value
        if pendingAdminAddress != msg.sender:
            revert with 0, 'Timelock::acceptAdmin: Call must come from pendingAdmin.'
        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
        pendingAdminAddress = 0
        emit NewAdmin(msg.sender);
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
        revert with 0, 65
    mem[128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[160 len arg3.length] = arg3[all]
    mem[arg3.length + 160] = 0
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 130 < 129 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg3.length)) + 129] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 161 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 161] = 0
    if address(adminAddress) != msg.sender:
        revert with 0, 'Timelock::executeTransaction: Call must come from admin.'
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 162] = address(arg1)
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 194] = arg2
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 226] = 160
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322] = arg3.length
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    if ceil32(arg3.length) <= arg3.length:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 258] = ceil32(arg3.length) + 192
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354] = arg4.length
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) <= arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 290] = arg5
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = ceil32(arg4.length) + ceil32(arg3.length) + 224
            if not stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)])][ceil32(arg3.length) + 192][arg5]:
                revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction hasn't been queued.'
            if block.timestamp < arg5:
                revert with 0, 
                            32,
                            69,
                            0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054,
                            'ansaction hasn't surpassed time ',
                            0x6c6f636b2e000000000000000000000000000000000000000000000000000000
            if arg5 > -1209601:
                revert with 0, 17
            if block.timestamp > arg5 + (336 * 24 * 3600):
                revert with 0, 
                            32,
                            51,
                            0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054,
                            0x616e73616374696f6e206973207374616c652e00000000000000000000000000
            stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)])][ceil32(arg3.length) + 192][arg5] = 0
            if not arg3.length:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 386] = 0
                call address(arg1).mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 390 len arg4.length - 4]
                if not ext_call.success:
                    revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction execution reverted.'
                if return_data.size:
                    if ceil32(arg3.length) > arg3.length:
                        mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 547] = 0
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 547] = arg4.length
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 579 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) > arg4.length:
                        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg4.length + 579] = 0
                    emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
                    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 514] = arg3.length
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
                if ceil32(arg3.length) > arg3.length:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 546] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450] = ceil32(arg3.length) + 160
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546] = arg4.length
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 578] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 482] = arg5
                emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = 32
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = mem[96]
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + mem[96] + 450] = 0
                return Array(len=mem[96], data=mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450 len ceil32(mem[96])]), 
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = Mask(32, 224, sha3(arg3[all]))
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 422] = 0
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg4.length + 4
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len floor32(arg4.length + 35)] = Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len floor32(arg4.length + 35) + -ceil32(arg4.length) - 4]
            if floor32(arg4.length + 35) > arg4.length + 4:
                mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 426] = 0
            call address(arg1).mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 426 len arg4.length]
        else:
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 386] = 0
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 290] = arg5
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = ceil32(arg4.length) + ceil32(arg3.length) + 224
            if not stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)])][ceil32(arg3.length) + 192][arg5]:
                revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction hasn't been queued.'
            if block.timestamp < arg5:
                revert with 0, 
                            32,
                            69,
                            0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054,
                            'ansaction hasn't surpassed time ',
                            0x6c6f636b2e000000000000000000000000000000000000000000000000000000
            if arg5 > -1209601:
                revert with 0, 17
            if block.timestamp > arg5 + (336 * 24 * 3600):
                revert with 0, 
                            32,
                            51,
                            0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054,
                            0x616e73616374696f6e206973207374616c652e00000000000000000000000000
            stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)])][ceil32(arg3.length) + 192][arg5] = 0
            if not arg3.length:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 386] = 0
                call address(arg1) with:
                   funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 390 len arg4.length - 4]
                if not ext_call.success:
                    revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction execution reverted.'
                if return_data.size:
                    if ceil32(arg3.length) > arg3.length:
                        mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 547] = 0
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 547] = arg4.length
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 579 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) > arg4.length:
                        mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg4.length + 579] = 0
                    emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
                    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg2
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = 128
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 514] = arg3.length
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
                if ceil32(arg3.length) > arg3.length:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 546] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450] = ceil32(arg3.length) + 160
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546] = arg4.length
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 578] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 482] = arg5
                emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                        Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                                        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len (2 * ceil32(arg4.length)) + ceil32(arg3.length) + -arg4.length + 160],
                                        sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)]), ceil32(arg3.length) + 192, arg5),
                                        address(arg1),
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = 32
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = mem[96]
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + mem[96] + 450] = 0
                return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
                       mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len ceil32(mem[96]) + -arg4.length + ceil32(arg4.length) + 32]
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = Mask(32, 224, sha3(arg3[all]))
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if ceil32(arg4.length) <= arg4.length:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg4.length + 4
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)])]
                if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)]:
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)] + 422] = 0
                call address(arg1).mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 426 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)] - 4]
            else:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 422] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg4.length + 4
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)])]
                if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)]:
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)] + 422] = 0
                call address(arg1) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 426 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)] - 4]
        if not ext_call.success:
            revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction execution reverted.'
        if return_data.size:
            if ceil32(arg3.length) > arg3.length:
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 583] = 0
            mem[(2 * ceil32(arg3.length)) + arg4.length + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 583] = arg4.length
            mem[(2 * ceil32(arg3.length)) + arg4.length + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 615 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if ceil32(arg4.length) > arg4.length:
                mem[(2 * ceil32(arg3.length)) + (2 * arg4.length) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 615] = 0
            emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 550] = arg3.length
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 582 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if ceil32(arg3.length) > arg3.length:
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 582] = 0
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 486] = ceil32(arg3.length) + 160
        mem[(2 * ceil32(arg3.length)) + arg4.length + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 582] = arg4.length
        mem[(2 * ceil32(arg3.length)) + arg4.length + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 614 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if ceil32(arg4.length) > arg4.length:
            mem[(2 * ceil32(arg3.length)) + (2 * arg4.length) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 614] = 0
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 518] = arg5
        emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 386 len ceil32(arg4.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354] = 0
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 258] = ceil32(arg3.length) + 192
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354] = arg4.length
        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 161 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) <= arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 290] = arg5
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = ceil32(arg4.length) + ceil32(arg3.length) + 224
            if not stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5]:
                revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction hasn't been queued.'
            if block.timestamp < arg5:
                revert with 0, 
                            32,
                            69,
                            0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054,
                            'ansaction hasn't surpassed time ',
                            0x6c6f636b2e000000000000000000000000000000000000000000000000000000
            if arg5 > -1209601:
                revert with 0, 17
            if block.timestamp > arg5 + (336 * 24 * 3600):
                revert with 0, 
                            32,
                            51,
                            0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054,
                            0x616e73616374696f6e206973207374616c652e00000000000000000000000000
            stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 0
            if not arg3.length:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 386] = 0
                call address(arg1).mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 390 len arg4.length - 4]
                if return_data.size:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = return_data.size
                    if not ext_call.success:
                        revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction execution reverted.'
                    emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
                    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                if not ext_call.success:
                    revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction execution reverted.'
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg2
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 514] = arg3.length
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
                if ceil32(arg3.length) > arg3.length:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 546] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450] = ceil32(arg3.length) + 160
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546] = arg4.length
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 578] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 482] = arg5
                emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = 32
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = mem[96]
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + mem[96] + 450] = 0
                return Array(len=mem[96], data=mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450 len ceil32(mem[96])]), 
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = Mask(32, 224, sha3(arg3[all]))
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 422] = 0
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg4.length + 4
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len floor32(arg4.length + 35)] = Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len floor32(arg4.length + 35) + -ceil32(arg4.length) - 4]
            if floor32(arg4.length + 35) > arg4.length + 4:
                mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 426] = 0
            call address(arg1).mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 426 len arg4.length]
        else:
            mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 386] = 0
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 290] = arg5
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = ceil32(arg4.length) + ceil32(arg3.length) + 224
            if not stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5]:
                revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction hasn't been queued.'
            if block.timestamp < arg5:
                revert with 0, 
                            32,
                            69,
                            0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054,
                            'ansaction hasn't surpassed time ',
                            0x6c6f636b2e000000000000000000000000000000000000000000000000000000
            if arg5 > -1209601:
                revert with 0, 17
            if block.timestamp > arg5 + (336 * 24 * 3600):
                revert with 0, 
                            32,
                            51,
                            0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054,
                            0x616e73616374696f6e206973207374616c652e00000000000000000000000000
            stor4[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 0
            if not arg3.length:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 386] = 0
                call address(arg1) with:
                   funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 390 len arg4.length - 4]
                if return_data.size:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = return_data.size
                    if not ext_call.success:
                        revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction execution reverted.'
                    emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
                    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                if not ext_call.success:
                    revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction execution reverted.'
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg2
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = 128
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 514] = arg3.length
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
                if ceil32(arg3.length) > arg3.length:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 546] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450] = ceil32(arg3.length) + 160
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546] = arg4.length
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                if ceil32(arg4.length) > arg4.length:
                    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 578] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 482] = arg5
                emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                        Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                                        mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len (2 * ceil32(arg4.length)) + ceil32(arg3.length) + -arg4.length + 160],
                                        sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5),
                                        address(arg1),
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = 32
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = mem[96]
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + mem[96] + 450] = 0
                return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
                       mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len ceil32(mem[96]) + -arg4.length + ceil32(arg4.length) + 32]
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = Mask(32, 224, sha3(arg3[all]))
            mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if ceil32(arg4.length) <= arg4.length:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg4.length + 4
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)])]
                if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)]:
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)] + 422] = 0
                call address(arg1).mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 426 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)] - 4]
            else:
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 422] = 0
                mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = arg4.length + 4
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)])]
                if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)]:
                    mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)] + 422] = 0
                call address(arg1) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 426 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 418 len -arg4.length + ceil32(arg4.length)] - 4]
        if not ext_call.success:
            revert with 0, 32, 61, 0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2054, 'ansaction execution reverted.'
        if return_data.size:
            emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 550] = arg3.length
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 582 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if ceil32(arg3.length) > arg3.length:
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 582] = 0
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 486] = ceil32(arg3.length) + 160
        mem[(2 * ceil32(arg3.length)) + arg4.length + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 582] = arg4.length
        mem[(2 * ceil32(arg3.length)) + arg4.length + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 614 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
        if ceil32(arg4.length) > arg4.length:
            mem[(2 * ceil32(arg3.length)) + (2 * arg4.length) + ceil32(arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 614] = 0
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 518] = arg5
        emit ExecuteTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg4.length) + ceil32(arg3.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 386 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), address(arg1));
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 422] = 32
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 454] = mem[96]
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 486 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + mem[96] + 486] = 0
    return Array(len=mem[96], data=mem[arg4.length + ceil32(arg4.length) + ceil32(arg3.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 486 len ceil32(mem[96])]), 
}



}
