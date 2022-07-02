contract main {




// =====================  Runtime code  =====================


#
#  - executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5)
#
const MAXIMUM_DELAY = (720 * 24 * 3600)

const MINIMUM_DELAY = (6 * 3600)

const GRACE_PERIOD = (336 * 24 * 3600)


address adminAddress;
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
    require arg1 == arg1
    return bool(stor3[arg1])
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
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::setPendingAdmin: Call must come from Timelock.'
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
    if arg1 > 720 * 24 * 3600:
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
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    require arg5 == arg5
    if adminAddress != msg.sender:
        revert with 0, 'Timelock::cancelTransaction: Call must come from admin.'
    if ceil32(arg3.length) <= arg3.length:
        stor3[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length])][ceil32(arg3.length) + 192][arg5] = 0
        emit CancelTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg3.length) + ceil32(arg4.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]), ceil32(arg3.length) + 192, arg5), arg1);
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 322] = arg4.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 354 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + arg4.length + 354] = 0
        stor3[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 0
        emit CancelTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg3.length) + ceil32(arg4.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), arg1);
}

function queueTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    require arg5 == arg5
    if adminAddress != msg.sender:
        revert with 0, 'Timelock::queueTransaction: Call must come from admin.'
    if block.timestamp > -delay - 1:
        revert with 'NH{q', 17
    if block.timestamp + delay < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < block.timestamp + delay:
        revert with 0, 'Timelock::queueTransaction: Estimated execution block must satisfy delay.'
    if ceil32(arg3.length) <= arg3.length:
        stor3[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length])][ceil32(arg3.length) + 192][arg5] = 1
        emit QueueTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg3.length) + ceil32(arg4.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]), ceil32(arg3.length) + 192, arg5), arg1);
        return sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]), ceil32(arg3.length) + 192, arg5)
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 322] = arg4.length
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 354 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) > arg4.length:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + arg4.length + 354] = 0
    stor3[address(arg1)][arg2][Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)])][ceil32(arg3.length) + 192][arg5] = 1
    emit QueueTransaction(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, ceil32(arg3.length) + ceil32(arg4.length) + 224) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256), ceil32(arg3.length) + 160, arg5, sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5), arg1);
    return sha3(address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 354 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, arg5)
}



}
