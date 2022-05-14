contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
address sub_a54e143eAddress;
address sub_5d6af94fAddress;
uint256 lastLockId;
address stor6;
mapping of struct locks;

function sub_5d6af94f(?) payable {
    return sub_5d6af94fAddress
}

function owner() payable {
    return owner
}

function sub_a54e143e(?) payable {
    return sub_a54e143eAddress
}

function geUnlockTime() payable {
    return geUnlockTime
}

function sub_c9102afd(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'invalid lock'
    if arg1 > lastLockId:
        revert with 0, 'invalid lock'
    return locks[arg1].field_0, 
           locks[arg1].field_256,
           locks[arg1].field_512,
           locks[arg1].field_768,
           locks[arg1].field_1024,
           locks[arg1].field_1280,
           locks[arg1].field_1536,
           locks[arg1].field_1792,
           locks[arg1].field_2048
}

function lastLockId() payable {
    return lastLockId
}

function getLock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'out of range'
    if arg1 > lastLockId:
        revert with 0, 'out of range'
    return locks[arg1].field_0, 
           locks[arg1].field_256,
           locks[arg1].field_512,
           locks[arg1].field_768,
           locks[arg1].field_1024,
           locks[arg1].field_1280,
           locks[arg1].field_1536,
           locks[arg1].field_1792,
           locks[arg1].field_2048,
           bool(locks[arg1].field_2208),
           bool(locks[arg1].field_2216)
}

function locks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return locks[arg1].field_0, 
           locks[arg1].field_256,
           locks[arg1].field_512,
           locks[arg1].field_768,
           locks[arg1].field_1024,
           locks[arg1].field_1280,
           locks[arg1].field_1536,
           locks[arg1].field_1792,
           locks[arg1].field_2048,
           bool(locks[arg1].field_2208),
           bool(locks[arg1].field_2216)
}

function _fallback() payable {
    revert
}

function isValidLock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return bool(arg1)
    return arg1 <= lastLockId
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    owner = stor1
}

function sub_4c0db86c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5d6af94fAddress = address(arg1)
    sub_a54e143eAddress = address(arg2)
}

function sub_3e607e8f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_17106a1b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if locks[arg1].field_0 != tx.origin:
        if stor6 != tx.origin:
            revert with 0, 'not owner of lock share token'
    locks[arg1].field_0 = address(arg2)
    emit 0x58c2693b: arg1, locks[arg1].field_0, address(arg2), locks[arg1].field_2048
    return address(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeLockStatusByGovernance(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid lock'
    if arg1 > lastLockId:
        revert with 0, 'invalid lock'
    if arg2 == bool(locks[arg1].field_2216):
        revert with 0, 'already set'
    locks[arg1].field_2216 = Mask(88, 0, arg2)
}

function extendLock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= block.timestamp:
        revert with 0, 'time passed'
    if arg2 >= 10^10:
        if arg2 != -1:
            revert with 0, 'too far away'
    if locks[arg1].field_0 != tx.origin:
        revert with 0, 'not owner of locked token'
    if arg2 < locks[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lock time must be higher then previous lock extension.'
    locks[arg1].field_1792 = arg2
    emit 0xaf206878: arg1, arg2, locks[arg1].field_512
    return arg2, arg1, locks[arg1].field_512
}

function sub_aa7e66d2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'invalid lock id'
    if arg1 > lastLockId:
        revert with 0, 'invalid lock id'
    if locks[arg1].field_0 != tx.origin:
        revert with 0, 'not owner of lock share token'
    if block.timestamp < locks[arg1].field_1792:
        if not locks[arg1].field_2216:
            revert with 0, 'still locked'
    if locks[arg1].field_1536 < arg2:
        revert with 0, 'amount too large'
    locks[arg1].field_1536 -= arg2
    require ext_code.size(locks[arg1].field_512)
    call locks[arg1].field_512.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(locks[arg1].field_512)
    call locks[arg1].field_512.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), tx.origin, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(arg2, arg1, locks[arg1].field_512, tx.origin);
}

function sub_d6cd99a3(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if arg2 <= 0:
        revert with 0, 'zero amount'
    if arg3 <= block.timestamp:
        revert with 0, 'time passed'
    if arg3 >= 10^10:
        if arg3 != -1:
            revert with 0, 'too far away'
    if sub_5d6af94fAddress != msg.sender:
        if sub_a54e143eAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'This function can only be called by approved contract'
    lastLockId++
    require not locks[stor5].field_1024
    locks[stor5].field_0 = address(arg5)
    locks[stor5].field_256 = lastLockId
    locks[stor5].field_512 = address(arg1)
    locks[stor5].field_1024 = address(arg5)
    locks[stor5].field_2048 = address(arg4)
    locks[stor5].field_1280 = arg2
    locks[stor5].field_1536 = arg2
    locks[stor5].field_1792 = arg3
    locks[stor5].field_2208 = 1
    locks[stor5].field_2216 = 0
    create contract with 0 wei
                    code: code.data[9328 len 2400], address(arg1), lastLockId, this.address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    locks[stor5].field_768 = address(create.new_address)
    emit 0xf1ba86f0: lastLockId, address(create.new_address), address(arg1), address(arg5), arg2, address(arg4), arg3
    return address(create.new_address), lastLockId
}

function sub_8db7e9b5(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if arg2 <= 0:
        revert with 0, 'zero amount'
    if arg3 <= block.timestamp:
        revert with 0, 'time passed'
    if arg3 >= 10^10:
        if arg3 != -1:
            revert with 0, 'too far away'
    if sub_5d6af94fAddress != msg.sender:
        if sub_a54e143eAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'This function can only be called by approved contract'
    lastLockId++
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args tx.origin, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require not locks[stor5].field_1024
    revert with 0, 'Invalid amount'
}



}
