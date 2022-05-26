contract main {




// =====================  Runtime code  =====================


#
#  - depositUser0(bytes32 arg1)
#  - sub_57251a2c(?)
#  - sub_c5ddce45(?)
#  - withdrawUser0(bytes32 arg1)
#  - rescueTokens(address arg1, address arg2, uint256 arg3)
#
address owner;
address commissionAddress;
uint256 defaultFee;
uint256 defaultPendingTime;
uint8 stor4;
mapping of struct pairFee;
mapping of struct sub_c5def719;

function contractEnabled() {
    return bool(stor4)
}

function defaultFee() {
    return defaultFee
}

function defaultPendingTime() {
    return defaultPendingTime
}

function owner() {
    return owner
}

function commissionAddress() {
    return commissionAddress
}

function sub_c5def719(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_8 > 2:
        revert with 'NH{q', 33
    if sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_2048 > 2:
        revert with 'NH{q', 33
    if sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_2056 > 2:
        revert with 'NH{q', 33
    if sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_8 >= 3:
        revert with 'NH{q', 33
    if sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_2048 >= 3:
        revert with 'NH{q', 33
    if sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_2056 >= 3:
        revert with 'NH{q', 33
    return bool(sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_0), 
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_0,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_0,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_256,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_512,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_768,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_1024,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_1280,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_1536,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_1792,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_2048,
           sub_c5def719[arg1, '||', address(arg2) << 80 >> 176].field_2056
}

function getPairFee(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[234 len 64] = arg1, '||', address(arg2), mem[246 len 10]
    return bool(pairFee[mem[234 len 42]].field_0), pairFee[mem[234 len 42]].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'cannot renounce ownership'
}

function setContractEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = uint8(arg1)
    emit 0x31b6f728: bool(stor4)
}

function setDefaultFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee cannot be more than the maximum'
    defaultFee = arg1
    emit ChangedFee(defaultFee);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setCommissionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Commission cannot be zero address'
    commissionAddress = arg1
    emit 0xc089e288: commissionAddress
}

function setDefaultPendingTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pending time cannot be less than minimum'
    if arg1 > 48:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pending time cannot be more than maximum'
    defaultPendingTime = arg1
    emit ChangedPendingTime(defaultPendingTime);
}

function rescueETH(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit 0x77f67778: address(arg1), arg2
}

function setPairFee(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= 0:
        revert with 0, 'Fee must be more than 0'
    if arg3 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee cannot be more than the maximum'
    if arg1 == arg2:
        revert with 0, 'Tokens cannot be equal'
    pairFee[arg1, '||', arg2, 0 >> 80].field_0 = 1
    pairFee[arg1, '||', arg2, 0 >> 80].field_256 = arg3
    pairFee[arg1, Mask(176, 80, arg1, '||', arg2, 0) >> 80 >> 80].field_0 = 1
    pairFee[arg1, Mask(176, 80, arg1, '||', arg2, 0) >> 80 >> 80].field_256 = arg3
    emit 0x71aa5a5a: address(arg1), address(arg2), arg3
}

function createNewTransaction(bytes32 arg1, uint8 arg2, address arg3, uint256 arg4, address arg5, address arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if msg.sender == owner:
        revert with 0, 'Owner not allowed.'
    if bool(stor4) != 1:
        revert with 0, 'Contract has been disabled'
    if 2 < arg2:
        revert with 0, 'Invalid transaction type'
    if arg3 == arg6:
        revert with 0, 'Tokens cannot be equal'
    if msg.sender == arg5:
        revert with 0, 'Users cannot be equal'
    if not arg5:
        revert with 0, 'User cannot be zero address'
    if bool(sub_c5def719[arg1, '||', address(msg.sender) << 80 >> 176].field_0) == 1:
        revert with 0, 'Transaction Exists'
    if not arg8:
        if arg2 > 2:
            revert with 'NH{q', 33
        if defaultPendingTime and 3600 > -1 / defaultPendingTime:
            revert with 'NH{q', 17
        if block.timestamp > (-3600 * defaultPendingTime) - 1:
            revert with 'NH{q', 17
        sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_0 = 1
        if arg2 > 2:
            revert with 'NH{q', 33
        sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_8 = 0
        sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_16 = msg.sender
        if not arg2:
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_256 = 0
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_512 = arg4
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_768 = uint64(arg5) << 96
            if arg2 == 1:
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1024 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1280 = arg7
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1536 = block.timestamp
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1792 = block.timestamp + (3600 * defaultPendingTime)
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2048 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2056 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * defaultPendingTime), msg.sender, 0, arg4, address(arg5), 0, arg7
            else:
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1024 = uint64(arg6) << 96
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1280 = arg7
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1536 = block.timestamp
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1792 = block.timestamp + (3600 * defaultPendingTime)
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2048 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2056 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * defaultPendingTime), msg.sender, 0, arg4, address(arg5), address(arg6), arg7
        else:
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_256 = uint64(arg3) << 96
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_512 = arg4
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_768 = uint64(arg5) << 96
            if arg2 == 1:
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1024 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1280 = arg7
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1536 = block.timestamp
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1792 = block.timestamp + (3600 * defaultPendingTime)
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2048 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2056 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * defaultPendingTime), msg.sender, address(arg3), arg4, address(arg5), 0, arg7
            else:
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1024 = uint64(arg6) << 96
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1280 = arg7
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1536 = block.timestamp
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1792 = block.timestamp + (3600 * defaultPendingTime)
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2048 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2056 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * defaultPendingTime), msg.sender, address(arg3), arg4, address(arg5), address(arg6), arg7
    else:
        if arg8 < 1:
            revert with 0, 'Pending time cannot be less than minimum'
        if arg8 > 48:
            revert with 0, 'Pending time cannot be more than maximum'
        if arg2 > 2:
            revert with 'NH{q', 33
        if arg8 and 3600 > -1 / arg8:
            revert with 'NH{q', 17
        if block.timestamp > (-3600 * arg8) - 1:
            revert with 'NH{q', 17
        sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_0 = 1
        if arg2 > 2:
            revert with 'NH{q', 33
        sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_8 = 0
        sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_16 = msg.sender
        if not arg2:
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_256 = 0
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_512 = arg4
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_768 = uint64(arg5) << 96
            if arg2 == 1:
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1024 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1280 = arg7
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1536 = block.timestamp
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1792 = block.timestamp + (3600 * arg8)
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2048 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2056 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * arg8), msg.sender, 0, arg4, address(arg5), 0, arg7
            else:
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1024 = uint64(arg6) << 96
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1280 = arg7
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1536 = block.timestamp
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1792 = block.timestamp + (3600 * arg8)
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2048 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2056 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * arg8), msg.sender, 0, arg4, address(arg5), address(arg6), arg7
        else:
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_256 = uint64(arg3) << 96
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_512 = arg4
            sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_768 = uint64(arg5) << 96
            if arg2 == 1:
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1024 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1280 = arg7
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1536 = block.timestamp
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1792 = block.timestamp + (3600 * arg8)
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2048 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2056 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * arg8), msg.sender, address(arg3), arg4, address(arg5), 0, arg7
            else:
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1024 = uint64(arg6) << 96
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1280 = arg7
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1536 = block.timestamp
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_1792 = block.timestamp + (3600 * arg8)
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2048 = 0
                sub_c5def719[arg1, '||', msg.sender, 0 >> 176].field_2056 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * arg8), msg.sender, address(arg3), arg4, address(arg5), address(arg6), arg7
}



}
