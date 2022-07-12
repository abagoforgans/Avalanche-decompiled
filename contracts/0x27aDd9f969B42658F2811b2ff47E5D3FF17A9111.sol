contract main {




// =====================  Runtime code  =====================


#
#  - executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5)
#
const MAXIMUM_DELAY = (720 * 24 * 3600)

const MINIMUM_DELAY = (12 * 3600)

const GRACE_PERIOD = (336 * 24 * 3600)


address adminAddress;
uint256 stor0;
address pendingAdminAddress;
uint256 delay;
mapping of uint8 stor3;

function pendingAdmin() {
    return pendingAdminAddress
}

function delay() {
    return delay
}

function queuedTransactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function admin() {
    return address(adminAddress)
}

function _fallback() payable {
    revert
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
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::setPendingAdmin: Call must come from Timelock.'
    pendingAdminAddress = arg1
    emit NewPendingAdmin(arg1);
}

function setDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timelock::setDelay: Call must come from Timelock.'
    if arg1 < 12 * 3600:
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
        stor3[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256)][ceil32(arg3.length) + 192][arg5] = 0
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
        stor3[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 0
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
        stor3[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256)][ceil32(arg3.length) + 192][arg5] = 1
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
    stor3[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 1
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



}
