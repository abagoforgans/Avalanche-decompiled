contract main {




// =====================  Runtime code  =====================


#
#  - executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5)
#  - unstake(uint256 arg1)
#  - stake(uint256 arg1)
#
const MAXIMUM_DELAY = (720 * 24 * 3600)

const MINIMUM_DELAY = (12 * 3600)

const GRACE_PERIOD = (336 * 24 * 3600)


address adminAddress;
address pendingAdminAddress;
uint256 delay;
mapping of uint8 stor3;
address owner;
address timeAddress;
address memoAddress;
address stakingAddress;
address routerAddress;
mapping of uint8 stor9;

function time() {
    return timeAddress
}

function pendingAdmin() {
    return pendingAdminAddress
}

function staking() {
    return stakingAddress
}

function memo() {
    return memoAddress
}

function tokenList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function delay() {
    return delay
}

function owner() {
    return owner
}

function queuedTransactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function admin() {
    return adminAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function sub_131e527e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timelock: caller is not the timelock'
    if not address(arg1):
        revert with 0, 'address invalid'
    stor9[address(arg1)] = 0
    emit 0x4bbe3945: address(arg1)
}

function sub_698f24d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timelock: caller is not the timelock'
    if not address(arg1):
        revert with 0, 'address invalid'
    stor9[address(arg1)] = 1
    emit 0xc895f5c0: address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timelock::setDelay: Call must come from Timelock.'
    if arg1 < 12 * 3600:
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

function swap(address[] arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
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
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= arg1.length:
        revert with 'NH{q', 50
    _385 = mem[128]
    if arg1.length < 1:
        revert with 'NH{q', 17
    if arg1.length - 1 >= arg1.length:
        revert with 'NH{q', 50
    _389 = mem[(32 * arg1.length - 1) + 128]
    if not stor9[mem[140 len 20]]:
        revert with 0, 'token not allow'
    mem[0] = mem[(32 * arg1.length - 1) + 140 len 20]
    mem[32] = 9
    if not stor9[address(mem[(32 * arg1.length - 1) + 128])]:
        revert with 0, 'token not allow'
    if not arg2:
        mem[floor32(arg1.length) + 133] = routerAddress
        mem[floor32(arg1.length) + 165] = arg2
        mem[floor32(arg1.length) + 97] = 68
        mem[floor32(arg1.length) + 129 len 4] = approve(address arg1, uint256 arg2)
        mem[floor32(arg1.length) + 197] = 32
        mem[floor32(arg1.length) + 229] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(_385)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[floor32(arg1.length) + 261 len 96] = 0, routerAddress, arg2, 0
        mem[floor32(arg1.length) + 329] = 0
        call address(_385) with:
           funct Mask(32, 224, 0, routerAddress, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, routerAddress, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg1.length > 0:
                    revert with memory
                      from 128
                       len arg1.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1.length <= 0:
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[floor32(arg1.length) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg1.length) + 265] = arg2
                mem[floor32(arg1.length) + 297] = arg3
                mem[floor32(arg1.length) + 329] = 160
                mem[floor32(arg1.length) + 425] = arg1.length
                idx = 0
                s = 128
                t = floor32(arg1.length) + 457
                while idx < arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg1.length) + 361] = this.address
                mem[floor32(arg1.length) + 393] = block.timestamp + 600
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[floor32(arg1.length) + 457 len 32 * arg1.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg1.length) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg1.length) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _3028 = mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32
                require mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 292 < floor32(arg1.length) + return_data.size + 261
                _3044 = mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]
                if mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg1.length) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 262 > test266151307() or floor32(mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg1.length) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 262
                mem[floor32(arg1.length) + ceil32(return_data.size) + 261] = _3044
                require _3028 + (32 * _3044) + 32 <= return_data.size
                idx = 0
                s = floor32(arg1.length) + _3028 + 293
                t = floor32(arg1.length) + ceil32(return_data.size) + 293
                while idx < _3044:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4756 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4776 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4756 + 100] = 32
                mem[_4756 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_385)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _4868 = mem[_4776]
                mem[_4756 + 164 len ceil32(mem[_4776])] = mem[_4776 + 32 len ceil32(mem[_4776])]
                if ceil32(_4868) > _4868:
                    mem[_4756 + _4868 + 164] = 0
                call address(_385) with:
                     gas gas_remaining wei
                    args mem[_4756 + 168 len _4868 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length > 0:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length > 0:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4756 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_4756 + 196] == bool(mem[_4756 + 196])
                        if not mem[_4756 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if _3044 < 1:
                    revert with 'NH{q', 17
                if _3044 - 1 >= _3044:
                    revert with 'NH{q', 50
                emit Swap(arg2, mem[(32 * _3044 - 1) + floor32(arg1.length) + ceil32(return_data.size) + 293], address(_385), address(_389));
            else:
                require arg1.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[floor32(arg1.length) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg1.length) + 265] = arg2
                mem[floor32(arg1.length) + 297] = arg3
                mem[floor32(arg1.length) + 329] = 160
                mem[floor32(arg1.length) + 425] = arg1.length
                idx = 0
                s = 128
                t = floor32(arg1.length) + 457
                while idx < arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg1.length) + 361] = this.address
                mem[floor32(arg1.length) + 393] = block.timestamp + 600
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[floor32(arg1.length) + 457 len 32 * arg1.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg1.length) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg1.length) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _3029 = mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32
                require mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 292 < floor32(arg1.length) + return_data.size + 261
                _3045 = mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]
                if mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg1.length) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 262 > test266151307() or floor32(mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg1.length) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + mem[floor32(arg1.length) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 262
                mem[floor32(arg1.length) + ceil32(return_data.size) + 261] = _3045
                require _3029 + (32 * _3045) + 32 <= return_data.size
                idx = 0
                s = floor32(arg1.length) + _3029 + 293
                t = floor32(arg1.length) + ceil32(return_data.size) + 293
                while idx < _3045:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4757 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4778 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4757 + 100] = 32
                mem[_4757 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_385)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _4869 = mem[_4778]
                mem[_4757 + 164 len ceil32(mem[_4778])] = mem[_4778 + 32 len ceil32(mem[_4778])]
                if ceil32(_4869) > _4869:
                    mem[_4757 + _4869 + 164] = 0
                call address(_385) with:
                     gas gas_remaining wei
                    args mem[_4757 + 168 len _4869 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length > 0:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length > 0:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4757 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_4757 + 196] == bool(mem[_4757 + 196])
                        if not mem[_4757 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if _3045 < 1:
                    revert with 'NH{q', 17
                if _3045 - 1 >= _3045:
                    revert with 'NH{q', 50
                emit Swap(arg2, mem[(32 * _3045 - 1) + floor32(arg1.length) + ceil32(return_data.size) + 293], address(_385), address(_389));
        else:
            mem[floor32(arg1.length) + 261] = return_data.size
            mem[floor32(arg1.length) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[floor32(arg1.length) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg1.length) + ceil32(return_data.size) + 266] = arg2
                mem[floor32(arg1.length) + ceil32(return_data.size) + 298] = arg3
                mem[floor32(arg1.length) + ceil32(return_data.size) + 330] = 160
                mem[floor32(arg1.length) + ceil32(return_data.size) + 426] = arg1.length
                idx = 0
                s = 128
                t = floor32(arg1.length) + ceil32(return_data.size) + 458
                while idx < arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg1.length) + ceil32(return_data.size) + 362] = this.address
                mem[floor32(arg1.length) + ceil32(return_data.size) + 394] = block.timestamp + 600
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[floor32(arg1.length) + ceil32(return_data.size) + 458 len 32 * arg1.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262
                require return_data.size >= 32
                _3030 = mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32
                require mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 293 < floor32(arg1.length) + ceil32(return_data.size) + return_data.size + 262
                _3046 = mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]
                if mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 263 > test266151307() or floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 263
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]
                require _3030 + (32 * _3046) + 32 <= return_data.size
                idx = 0
                s = floor32(arg1.length) + ceil32(return_data.size) + _3030 + 294
                t = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 294
                while idx < _3046:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4758 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4780 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4758 + 100] = 32
                mem[_4758 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_385)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _4870 = mem[_4780]
                mem[_4758 + 164 len ceil32(mem[_4780])] = mem[_4780 + 32 len ceil32(mem[_4780])]
                if ceil32(_4870) > _4870:
                    mem[_4758 + _4870 + 164] = 0
                call address(_385) with:
                     gas gas_remaining wei
                    args mem[_4758 + 168 len _4870 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length > 0:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length > 0:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4758 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_4758 + 196] == bool(mem[_4758 + 196])
                        if not mem[_4758 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if _3046 < 1:
                    revert with 'NH{q', 17
                if _3046 - 1 >= _3046:
                    revert with 'NH{q', 50
                emit Swap(arg2, mem[(32 * _3046 - 1) + floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 294], address(_385), address(_389));
            else:
                require return_data.size >= 32
                require mem[floor32(arg1.length) + 293] == bool(mem[floor32(arg1.length) + 293])
                if not mem[floor32(arg1.length) + 293]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[floor32(arg1.length) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg1.length) + ceil32(return_data.size) + 266] = arg2
                mem[floor32(arg1.length) + ceil32(return_data.size) + 298] = arg3
                mem[floor32(arg1.length) + ceil32(return_data.size) + 330] = 160
                mem[floor32(arg1.length) + ceil32(return_data.size) + 426] = arg1.length
                idx = 0
                s = 128
                t = floor32(arg1.length) + ceil32(return_data.size) + 458
                while idx < arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg1.length) + ceil32(return_data.size) + 362] = this.address
                mem[floor32(arg1.length) + ceil32(return_data.size) + 394] = block.timestamp + 600
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[floor32(arg1.length) + ceil32(return_data.size) + 458 len 32 * arg1.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262
                require return_data.size >= 32
                _3031 = mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32
                require mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 293 < floor32(arg1.length) + ceil32(return_data.size) + return_data.size + 262
                _3047 = mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]
                if mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 263 > test266151307() or floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 263
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]
                require _3031 + (32 * _3047) + 32 <= return_data.size
                idx = 0
                s = floor32(arg1.length) + ceil32(return_data.size) + _3031 + 294
                t = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 294
                while idx < _3047:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4759 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4782 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4759 + 100] = 32
                mem[_4759 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_385)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _4871 = mem[_4782]
                mem[_4759 + 164 len ceil32(mem[_4782])] = mem[_4782 + 32 len ceil32(mem[_4782])]
                if ceil32(_4871) > _4871:
                    mem[_4759 + _4871 + 164] = 0
                call address(_385) with:
                     gas gas_remaining wei
                    args mem[_4759 + 168 len _4871 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length > 0:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length > 0:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4759 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_4759 + 196] == bool(mem[_4759 + 196])
                        if not mem[_4759 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if _3047 < 1:
                    revert with 'NH{q', 17
                if _3047 - 1 >= _3047:
                    revert with 'NH{q', 50
                emit Swap(arg2, mem[(32 * _3047 - 1) + floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 294], address(_385), address(_389));
    else:
        mem[floor32(arg1.length) + 101] = this.address
        mem[floor32(arg1.length) + 133] = routerAddress
        require ext_code.size(address(_385))
        staticcall address(_385).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), routerAddress
        mem[floor32(arg1.length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[floor32(arg1.length) + ceil32(return_data.size) + 133] = routerAddress
        mem[floor32(arg1.length) + ceil32(return_data.size) + 165] = arg2
        mem[floor32(arg1.length) + ceil32(return_data.size) + 97] = 68
        mem[floor32(arg1.length) + ceil32(return_data.size) + 129 len 4] = approve(address arg1, uint256 arg2)
        mem[floor32(arg1.length) + ceil32(return_data.size) + 197] = 32
        mem[floor32(arg1.length) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(_385)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 96] = 0, routerAddress, arg2, 0
        mem[floor32(arg1.length) + ceil32(return_data.size) + 329] = 0
        call address(_385) with:
           funct Mask(32, 224, 0, routerAddress, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, routerAddress, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg1.length > 0:
                    revert with memory
                      from 128
                       len arg1.length
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1.length <= 0:
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[floor32(arg1.length) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg1.length) + ceil32(return_data.size) + 265] = arg2
                mem[floor32(arg1.length) + ceil32(return_data.size) + 297] = arg3
                mem[floor32(arg1.length) + ceil32(return_data.size) + 329] = 160
                mem[floor32(arg1.length) + ceil32(return_data.size) + 425] = arg1.length
                idx = 0
                s = 128
                t = floor32(arg1.length) + ceil32(return_data.size) + 457
                while idx < arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg1.length) + ceil32(return_data.size) + 361] = this.address
                mem[floor32(arg1.length) + ceil32(return_data.size) + 393] = block.timestamp + 600
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[floor32(arg1.length) + ceil32(return_data.size) + 457 len 32 * arg1.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg1.length) + (2 * ceil32(return_data.size)) + 261
                require return_data.size >= 32
                _3036 = mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32
                require mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 292 < floor32(arg1.length) + ceil32(return_data.size) + return_data.size + 261
                _3052 = mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]
                if mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg1.length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 262 > test266151307() or floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg1.length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 262
                mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + 261] = _3052
                require _3036 + (32 * _3052) + 32 <= return_data.size
                idx = 0
                s = floor32(arg1.length) + ceil32(return_data.size) + _3036 + 293
                t = floor32(arg1.length) + (2 * ceil32(return_data.size)) + 293
                while idx < _3052:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4764 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4792 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4764 + 100] = 32
                mem[_4764 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_385)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _4876 = mem[_4792]
                mem[_4764 + 164 len ceil32(mem[_4792])] = mem[_4792 + 32 len ceil32(mem[_4792])]
                if ceil32(_4876) > _4876:
                    mem[_4764 + _4876 + 164] = 0
                call address(_385) with:
                     gas gas_remaining wei
                    args mem[_4764 + 168 len _4876 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length > 0:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length > 0:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4764 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_4764 + 196] == bool(mem[_4764 + 196])
                        if not mem[_4764 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if _3052 < 1:
                    revert with 'NH{q', 17
                if _3052 - 1 >= _3052:
                    revert with 'NH{q', 50
                emit Swap(arg2, mem[(32 * _3052 - 1) + floor32(arg1.length) + (2 * ceil32(return_data.size)) + 293], address(_385), address(_389));
            else:
                require arg1.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[floor32(arg1.length) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg1.length) + ceil32(return_data.size) + 265] = arg2
                mem[floor32(arg1.length) + ceil32(return_data.size) + 297] = arg3
                mem[floor32(arg1.length) + ceil32(return_data.size) + 329] = 160
                mem[floor32(arg1.length) + ceil32(return_data.size) + 425] = arg1.length
                idx = 0
                s = 128
                t = floor32(arg1.length) + ceil32(return_data.size) + 457
                while idx < arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg1.length) + ceil32(return_data.size) + 361] = this.address
                mem[floor32(arg1.length) + ceil32(return_data.size) + 393] = block.timestamp + 600
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[floor32(arg1.length) + ceil32(return_data.size) + 457 len 32 * arg1.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg1.length) + (2 * ceil32(return_data.size)) + 261
                require return_data.size >= 32
                _3037 = mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32
                require mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 292 < floor32(arg1.length) + ceil32(return_data.size) + return_data.size + 261
                _3053 = mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]
                if mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg1.length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 262 > test266151307() or floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg1.length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, arg2) >> 32 + 261]) + 262
                mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + 261] = _3053
                require _3037 + (32 * _3053) + 32 <= return_data.size
                idx = 0
                s = floor32(arg1.length) + ceil32(return_data.size) + _3037 + 293
                t = floor32(arg1.length) + (2 * ceil32(return_data.size)) + 293
                while idx < _3053:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4765 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4794 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4765 + 100] = 32
                mem[_4765 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_385)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _4877 = mem[_4794]
                mem[_4765 + 164 len ceil32(mem[_4794])] = mem[_4794 + 32 len ceil32(mem[_4794])]
                if ceil32(_4877) > _4877:
                    mem[_4765 + _4877 + 164] = 0
                call address(_385) with:
                     gas gas_remaining wei
                    args mem[_4765 + 168 len _4877 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length > 0:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length > 0:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4765 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_4765 + 196] == bool(mem[_4765 + 196])
                        if not mem[_4765 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if _3053 < 1:
                    revert with 'NH{q', 17
                if _3053 - 1 >= _3053:
                    revert with 'NH{q', 50
                emit Swap(arg2, mem[(32 * _3053 - 1) + floor32(arg1.length) + (2 * ceil32(return_data.size)) + 293], address(_385), address(_389));
        else:
            mem[floor32(arg1.length) + ceil32(return_data.size) + 261] = return_data.size
            mem[floor32(arg1.length) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = arg2
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = arg3
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = 160
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = arg1.length
                idx = 0
                s = 128
                t = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458
                while idx < arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = this.address
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = block.timestamp + 600
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458 len 32 * arg1.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262
                require return_data.size >= 32
                _3038 = mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32
                require mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 293 < floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 262
                _3054 = mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]
                if mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 263 > test266151307() or floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 263
                mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = _3054
                require _3038 + (32 * _3054) + 32 <= return_data.size
                idx = 0
                s = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + _3038 + 294
                t = floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294
                while idx < _3054:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4766 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4796 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4766 + 100] = 32
                mem[_4766 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_385)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _4878 = mem[_4796]
                mem[_4766 + 164 len ceil32(mem[_4796])] = mem[_4796 + 32 len ceil32(mem[_4796])]
                if ceil32(_4878) > _4878:
                    mem[_4766 + _4878 + 164] = 0
                call address(_385) with:
                     gas gas_remaining wei
                    args mem[_4766 + 168 len _4878 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length > 0:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length > 0:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4766 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_4766 + 196] == bool(mem[_4766 + 196])
                        if not mem[_4766 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if _3054 < 1:
                    revert with 'NH{q', 17
                if _3054 - 1 >= _3054:
                    revert with 'NH{q', 50
                emit Swap(arg2, mem[(32 * _3054 - 1) + floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294], address(_385), address(_389));
            else:
                require return_data.size >= 32
                require mem[floor32(arg1.length) + ceil32(return_data.size) + 293] == bool(mem[floor32(arg1.length) + ceil32(return_data.size) + 293])
                if not mem[floor32(arg1.length) + ceil32(return_data.size) + 293]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = arg2
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = arg3
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = 160
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = arg1.length
                idx = 0
                s = 128
                t = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458
                while idx < arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = this.address
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = block.timestamp + 600
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=arg1.length, data=mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 458 len 32 * arg1.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262
                require return_data.size >= 32
                _3039 = mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32
                require mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 293 < floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 262
                _3055 = mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]
                if mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262] > test266151307():
                    revert with 'NH{q', 65
                if floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 263 > test266151307() or floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + mem[floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len 4], Mask(224, 32, arg2) >> 32 + 262]) + 263
                mem[floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 262] = _3055
                require _3039 + (32 * _3055) + 32 <= return_data.size
                idx = 0
                s = floor32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + _3039 + 294
                t = floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294
                while idx < _3055:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4767 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4798 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4767 + 100] = 32
                mem[_4767 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_385)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _4879 = mem[_4798]
                mem[_4767 + 164 len ceil32(mem[_4798])] = mem[_4798 + 32 len ceil32(mem[_4798])]
                if ceil32(_4879) > _4879:
                    mem[_4767 + _4879 + 164] = 0
                call address(_385) with:
                     gas gas_remaining wei
                    args mem[_4767 + 168 len _4879 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg1.length > 0:
                            revert with memory
                              from 128
                               len arg1.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1.length > 0:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4767 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_4767 + 196] == bool(mem[_4767 + 196])
                        if not mem[_4767 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if _3055 < 1:
                    revert with 'NH{q', 17
                if _3055 - 1 >= _3055:
                    revert with 'NH{q', 50
                emit Swap(arg2, mem[(32 * _3055 - 1) + floor32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 294], address(_385), address(_389));
}



}
