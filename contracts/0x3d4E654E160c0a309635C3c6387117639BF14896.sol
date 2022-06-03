contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct lockType;
address safetyLockerAddress;
address tokenAddress;

function safetyLocker() payable {
    return safetyLockerAddress
}

function owner() payable {
    return owner
}

function getLockType(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if lockType[address(arg1)].field_0 > 10:
        revert with 0, 33
    if lockType[address(arg1)].field_0 >= 11:
        revert with 0, 33
    return lockType[address(arg1)].field_0, lockType[address(arg1)].field_0, bool(lockType[address(arg1)].field_24)
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setSafetyLocker(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Locker: Bad token'
    tokenAddress = arg1
    safetyLockerAddress = arg2
    if arg2:
        require ext_code.size(arg2)
        staticcall arg2.IsSafetyLocker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Bad safetyLocker'
}

function lockAddress(address arg1, uint8 arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 < 11
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Locker: invalid target address'
    if lockType[address(arg1)].field_24:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Locker: address lock is permanent'
    if arg2 > 10:
        revert with 0, 33
    lockType[address(arg1)].field_0 = arg2 or Mask(248, 8, lockType[address(arg1)].field_0)
    lockType[address(arg1)].field_8 = arg3
    lockType[address(arg1)].field_24 = Mask(232, 0, arg4)
    lockType[address(arg1)].field_32 = 0
    return 1
}

function multiBlackList(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if lockType[msg.sender].field_0 > 10:
        revert with 0, 33
    if lockType[msg.sender].field_0 != 10:
        if lockType[msg.sender].field_0 > 10:
            revert with 0, 33
        if lockType[msg.sender].field_0 != 8:
            revert with 0, 'Locker: Only call from BL admin'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        lockType[address(cd[((32 * idx) + arg1 + 36)])].field_0 = 4
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function multiWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if lockType[msg.sender].field_0 > 10:
        revert with 0, 33
    if lockType[msg.sender].field_0 != 10:
        if lockType[msg.sender].field_0 > 10:
            revert with 0, 33
        if lockType[msg.sender].field_0 != 8:
            revert with 0, 'Locker: Only call from BL admin'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        if lockType[address(cd[((32 * idx) + arg1 + 36)])].field_0 > 10:
            revert with 0, 33
        if lockType[address(cd[((32 * idx) + arg1 + 36)])].field_0 == 4:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 1
            lockType[address(cd[((32 * idx) + arg1 + 36)])].field_0 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function lockOrGetPenalty(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if lockType[address(arg1)].field_0 > 10:
        revert with 0, 33
    if lockType[address(arg2)].field_0 > 10:
        revert with 0, 33
    if lockType[address(arg1)].field_0 > 10:
        revert with 0, 33
    if lockType[address(arg1)].field_0 == 3:
        revert with 0, 'Locker: not allowed source'
    if lockType[address(arg1)].field_0 > 10:
        revert with 0, 33
    if lockType[address(arg1)].field_0 == 4:
        revert with 0, 'Locker: not allowed source'
    if lockType[address(arg2)].field_0 > 10:
        revert with 0, 33
    if lockType[address(arg2)].field_0 == 2:
        revert with 0, 'Locker: not allowed destination'
    if lockType[address(arg2)].field_0 > 10:
        revert with 0, 33
    if lockType[address(arg2)].field_0 == 4:
        revert with 0, 'Locker: not allowed destination'
    if safetyLockerAddress:
        if tokenAddress != msg.sender:
            revert with 0, 'Locker: not allowed caller'
        require ext_code.size(safetyLockerAddress)
        call safetyLockerAddress.verifyTransfer(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    else:
        return 0
}



}
