contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct lockType;
address safetyLockerAddress;

function safetyLocker() payable {
    return safetyLockerAddress
}

function owner() payable {
    return owner
}

function getLockType(address arg1) payable {
    require calldata.size - 4 >= 32
    require lockType[address(arg1)].field_0 <= 10
    require lockType[address(arg1)].field_0 <= 10
    return lockType[address(arg1)].field_0, lockType[address(arg1)].field_0, bool(lockType[address(arg1)].field_24)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSafetyLocker(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    safetyLockerAddress = arg1
    if safetyLockerAddress:
        require ext_code.size(arg1)
        staticcall arg1.IsSafetyLocker() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Bad safetyLocker'
}

function multiBlackList(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require lockType[address(msg.sender)].field_0 <= 10
    if lockType[address(msg.sender)].field_0 != 10:
        require lockType[address(msg.sender)].field_0 <= 10
        if lockType[address(msg.sender)].field_0 != 8:
            revert with 0, 'Locker: Only call from BL admin'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        lockType[address(cd[((32 * idx) + arg1 + 36)])].field_0 = 4
        idx = idx + 1
        continue 
}

function lockAddress(address arg1, uint8 arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Locker: invalid target address'
    if lockType[address(arg1)].field_24:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734c6f636b65723a2061646472657373206c6f636b206973207065726d616e656e,
                    mem[197 len 31]
    require arg2 <= 10
    lockType[address(arg1)].field_0 = arg2
    lockType[address(arg1)].field_8 = arg3
    lockType[address(arg1)].field_24 = Mask(232, 0, arg4)
    return 1
}

function multiWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require lockType[address(msg.sender)].field_0 <= 10
    if lockType[address(msg.sender)].field_0 != 10:
        require lockType[address(msg.sender)].field_0 <= 10
        if lockType[address(msg.sender)].field_0 != 8:
            revert with 0, 'Locker: Only call from BL admin'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        require lockType[address(cd[((32 * idx) + arg1 + 36)])].field_0 <= 10
        if lockType[address(cd[((32 * idx) + arg1 + 36)])].field_0 == 4:
            require idx < arg1.length
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 1
            lockType[address(cd[((32 * idx) + arg1 + 36)])].field_0 = 0
        idx = idx + 1
        continue 
}

function lockOrGetPenalty(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require lockType[address(arg1)].field_0 <= 10
    require lockType[address(arg2)].field_0 <= 10
    require lockType[address(arg1)].field_0 <= 10
    if lockType[address(arg1)].field_0 == 3:
        revert with 0, 'Locker: not allowed source'
    require lockType[address(arg1)].field_0 <= 10
    if lockType[address(arg1)].field_0 == 4:
        revert with 0, 'Locker: not allowed source'
    require lockType[address(arg2)].field_0 <= 10
    if lockType[address(arg2)].field_0 == 2:
        revert with 0, 'Locker: not allowed destination'
    require lockType[address(arg2)].field_0 <= 10
    if lockType[address(arg2)].field_0 == 4:
        revert with 0, 'Locker: not allowed destination'
    if safetyLockerAddress:
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
