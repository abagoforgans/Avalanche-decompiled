contract main {




// =====================  Runtime code  =====================


#
#  - withdrawUser0(bytes32 arg1)
#  - withdrawUser1(bytes32 arg1)
#
address owner;
address commissionAddress;
uint256 defaultFee;
uint256 defaultPendingTime;
uint8 contractEnabled;
mapping of struct pairFee;
mapping of struct transactions;

function contractEnabled() {
    return bool(contractEnabled)
}

function pairs(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(pairFee[arg1[all]].field_0), pairFee[arg1[all]].field_256
}

function getTransaction(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if transactions[arg1].field_8 > 2:
        revert with 'NH{q', 33
    if transactions[arg1].field_2048 > 2:
        revert with 'NH{q', 33
    if transactions[arg1].field_2056 > 2:
        revert with 'NH{q', 33
    if transactions[arg1].field_8 >= 3:
        revert with 'NH{q', 33
    if transactions[arg1].field_2048 >= 3:
        revert with 'NH{q', 33
    if transactions[arg1].field_2056 >= 3:
        revert with 'NH{q', 33
    return bool(transactions[arg1].field_0), 
           transactions[arg1].field_0,
           transactions[arg1].field_0,
           transactions[arg1].field_256,
           transactions[arg1].field_512,
           transactions[arg1].field_768,
           transactions[arg1].field_1024,
           transactions[arg1].field_1280,
           transactions[arg1].field_1536,
           transactions[arg1].field_1792,
           transactions[arg1].field_2048,
           transactions[arg1].field_2056
}

function defaultFee() {
    return defaultFee
}

function transactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if transactions[arg1].field_8 >= 3:
        revert with 'NH{q', 33
    if transactions[arg1].field_2048 >= 3:
        revert with 'NH{q', 33
    if transactions[arg1].field_2056 >= 3:
        revert with 'NH{q', 33
    return bool(transactions[arg1].field_0), 
           transactions[arg1].field_0,
           transactions[arg1].field_0,
           transactions[arg1].field_256,
           transactions[arg1].field_512,
           transactions[arg1].field_768,
           transactions[arg1].field_1024,
           transactions[arg1].field_1280,
           transactions[arg1].field_1536,
           transactions[arg1].field_1792,
           transactions[arg1].field_2048,
           transactions[arg1].field_2056
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setContractEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractEnabled = uint8(arg1)
    emit 0x31b6f728: bool(contractEnabled)
}

function setDefaultFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Commission cannot be zero address'
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

function setPairFee(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= 0:
        revert with 0, 'Fee must be more than 0'
    if arg3 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee cannot be more than the maximum'
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
        revert with 0, 'Error: Owner not allowed.'
    if bool(contractEnabled) != 1:
        revert with 0, 'Contract has been disabled'
    if 2 < arg2:
        revert with 0, 'Error: Invalid transaction type'
    if bool(transactions[arg1].field_0) == 1:
        revert with 0, 'Error: Transaction Exists'
    if not arg8:
        if arg2 > 2:
            revert with 'NH{q', 33
        if defaultPendingTime and 3600 > -1 / defaultPendingTime:
            revert with 'NH{q', 17
        if block.timestamp > (-3600 * defaultPendingTime) - 1:
            revert with 'NH{q', 17
        transactions[arg1].field_0 = 1
        if arg2 > 2:
            revert with 'NH{q', 33
        transactions[arg1].field_8 = arg2
        transactions[arg1].field_16 = msg.sender
        if arg2:
            transactions[arg1].field_256 = arg3
            transactions[arg1].field_512 = arg4
            transactions[arg1].field_768 = arg5
            if arg2 != 1:
                transactions[arg1].field_1024 = arg6
                transactions[arg1].field_1280 = arg7
                transactions[arg1].field_1536 = block.timestamp
                transactions[arg1].field_1792 = block.timestamp + (3600 * defaultPendingTime)
                transactions[arg1].field_2048 = 0
                transactions[arg1].field_2304 = 0
                transactions[arg1].field_2056 = 0
                transactions[arg1].field_2304 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * defaultPendingTime), msg.sender, address(arg3), arg4, address(arg5), address(arg6), arg7
            else:
                transactions[arg1].field_1024 = 0
                transactions[arg1].field_1280 = 0
                transactions[arg1].field_1280 = arg7
                transactions[arg1].field_1536 = block.timestamp
                transactions[arg1].field_1792 = block.timestamp + (3600 * defaultPendingTime)
                transactions[arg1].field_2048 = 0
                transactions[arg1].field_2304 = 0
                transactions[arg1].field_2056 = 0
                transactions[arg1].field_2304 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * defaultPendingTime), msg.sender, address(arg3), arg4, address(arg5), 0, arg7
        else:
            transactions[arg1].field_256 = 0
            transactions[arg1].field_512 = 0
            transactions[arg1].field_512 = arg4
            transactions[arg1].field_768 = arg5
            if arg2 != 1:
                transactions[arg1].field_1024 = arg6
                transactions[arg1].field_1280 = arg7
                transactions[arg1].field_1536 = block.timestamp
                transactions[arg1].field_1792 = block.timestamp + (3600 * defaultPendingTime)
                transactions[arg1].field_2048 = 0
                transactions[arg1].field_2304 = 0
                transactions[arg1].field_2056 = 0
                transactions[arg1].field_2304 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * defaultPendingTime), msg.sender, 0, arg4, address(arg5), address(arg6), arg7
            else:
                transactions[arg1].field_1024 = 0
                transactions[arg1].field_1280 = 0
                transactions[arg1].field_1280 = arg7
                transactions[arg1].field_1536 = block.timestamp
                transactions[arg1].field_1792 = block.timestamp + (3600 * defaultPendingTime)
                transactions[arg1].field_2048 = 0
                transactions[arg1].field_2304 = 0
                transactions[arg1].field_2056 = 0
                transactions[arg1].field_2304 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * defaultPendingTime), msg.sender, 0, arg4, address(arg5), 0, arg7
    else:
        if arg8 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pending time cannot be less than minimum'
        if arg8 > 48:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pending time cannot be more than maximum'
        if arg2 > 2:
            revert with 'NH{q', 33
        if arg8 and 3600 > -1 / arg8:
            revert with 'NH{q', 17
        if block.timestamp > (-3600 * arg8) - 1:
            revert with 'NH{q', 17
        transactions[arg1].field_0 = 1
        if arg2 > 2:
            revert with 'NH{q', 33
        transactions[arg1].field_8 = arg2
        transactions[arg1].field_16 = msg.sender
        if arg2:
            transactions[arg1].field_256 = arg3
            transactions[arg1].field_512 = arg4
            transactions[arg1].field_768 = arg5
            if arg2 != 1:
                transactions[arg1].field_1024 = arg6
                transactions[arg1].field_1280 = arg7
                transactions[arg1].field_1536 = block.timestamp
                transactions[arg1].field_1792 = block.timestamp + (3600 * arg8)
                transactions[arg1].field_2048 = 0
                transactions[arg1].field_2304 = 0
                transactions[arg1].field_2056 = 0
                transactions[arg1].field_2304 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * arg8), msg.sender, address(arg3), arg4, address(arg5), address(arg6), arg7
            else:
                transactions[arg1].field_1024 = 0
                transactions[arg1].field_1280 = 0
                transactions[arg1].field_1280 = arg7
                transactions[arg1].field_1536 = block.timestamp
                transactions[arg1].field_1792 = block.timestamp + (3600 * arg8)
                transactions[arg1].field_2048 = 0
                transactions[arg1].field_2304 = 0
                transactions[arg1].field_2056 = 0
                transactions[arg1].field_2304 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * arg8), msg.sender, address(arg3), arg4, address(arg5), 0, arg7
        else:
            transactions[arg1].field_256 = 0
            transactions[arg1].field_512 = 0
            transactions[arg1].field_512 = arg4
            transactions[arg1].field_768 = arg5
            if arg2 != 1:
                transactions[arg1].field_1024 = arg6
                transactions[arg1].field_1280 = arg7
                transactions[arg1].field_1536 = block.timestamp
                transactions[arg1].field_1792 = block.timestamp + (3600 * arg8)
                transactions[arg1].field_2048 = 0
                transactions[arg1].field_2304 = 0
                transactions[arg1].field_2056 = 0
                transactions[arg1].field_2304 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * arg8), msg.sender, 0, arg4, address(arg5), address(arg6), arg7
            else:
                transactions[arg1].field_1024 = 0
                transactions[arg1].field_1280 = 0
                transactions[arg1].field_1280 = arg7
                transactions[arg1].field_1536 = block.timestamp
                transactions[arg1].field_1792 = block.timestamp + (3600 * arg8)
                transactions[arg1].field_2048 = 0
                transactions[arg1].field_2304 = 0
                transactions[arg1].field_2056 = 0
                transactions[arg1].field_2304 = 0
                if arg2 > 2:
                    revert with 'NH{q', 33
                emit 0x8fd75eb3: arg1, arg2 << 248, block.timestamp, block.timestamp + (3600 * arg8), msg.sender, 0, arg4, address(arg5), 0, arg7
}

function depositUser0(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(contractEnabled) != 1:
        revert with 0, 'Contract has been disabled'
    if not transactions[arg1].field_0:
        revert with 0, 'Error: Invalid transaction'
    if transactions[arg1].field_8 > 2:
        revert with 'NH{q', 33
    mem[128] = transactions[arg1].field_8
    mem[160] = transactions[arg1].field_16
    mem[192] = transactions[arg1].field_256
    mem[224] = transactions[arg1].field_512
    mem[256] = transactions[arg1].field_768
    mem[288] = transactions[arg1].field_1024
    mem[320] = transactions[arg1].field_1280
    mem[352] = transactions[arg1].field_1536
    mem[384] = transactions[arg1].field_1792
    if transactions[arg1].field_2048 > 2:
        revert with 'NH{q', 33
    mem[416] = transactions[arg1].field_2048
    if transactions[arg1].field_2056 > 2:
        revert with 'NH{q', 33
    mem[448] = transactions[arg1].field_2056
    if transactions[arg1].field_16 != msg.sender:
        revert with 0, 'Error: Invalid permissions'
    if block.timestamp >= transactions[arg1].field_1792:
        revert with 0, 'Error: Transaction expired'
    if transactions[arg1].field_2048 > 2:
        revert with 'NH{q', 33
    if transactions[arg1].field_2048:
        revert with 0, 'Error: Deposit done'
    transactions[arg1].field_2048 = 1
    if transactions[arg1].field_8 > 2:
        revert with 'NH{q', 33
    if transactions[arg1].field_8:
        if transactions[arg1].field_8 > 2:
            revert with 'NH{q', 33
        if transactions[arg1].field_8:
            mem[516] = msg.sender
            mem[548] = this.address
            mem[580] = transactions[arg1].field_512
            mem[480] = 100
            mem[516 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[512 len 4] = unknown_0x23b872dd(?????)
            mem[612] = 32
            mem[644] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(transactions[arg1].field_256) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[676 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0
            mem[776] = 0
            call transactions[arg1].field_256 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if bool(transactions[arg1].field_0) > 0:
                        revert with memory
                          from 128
                           len bool(transactions[arg1].field_0)
                    revert with 0, 'SafeERC20: low-level call failed'
                if bool(transactions[arg1].field_0) > 0:
                    require bool(transactions[arg1].field_0) >= 32
                    require transactions[arg1].field_8 == bool(transactions[arg1].field_8)
                    if not transactions[arg1].field_8:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[708] == bool(mem[708])
                    if not mem[708]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if msg.value < transactions[arg1].field_512:
            revert with 0, 'Insufficient deposit'
        if eth.balance(this.address) < transactions[arg1].field_512:
            revert with 0, 'Address: insufficient balance'
        call this.address with:
           value transactions[arg1].field_512 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if transactions[arg1].field_8 > 2:
                revert with 'NH{q', 33
            if transactions[arg1].field_8:
                mem[516] = msg.sender
                mem[548] = this.address
                mem[580] = transactions[arg1].field_512
                mem[480] = 100
                mem[516 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[512 len 4] = unknown_0x23b872dd(?????)
                mem[612] = 32
                mem[644] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(transactions[arg1].field_256) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[676 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0
                mem[776] = 0
                call transactions[arg1].field_256 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if bool(transactions[arg1].field_0) > 0:
                            revert with memory
                              from 128
                               len bool(transactions[arg1].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if bool(transactions[arg1].field_0) > 0:
                        require bool(transactions[arg1].field_0) >= 32
                        require transactions[arg1].field_8 == bool(transactions[arg1].field_8)
                        if not transactions[arg1].field_8:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[708] == bool(mem[708])
                        if not mem[708]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[480] = return_data.size
            mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if transactions[arg1].field_8 > 2:
                revert with 'NH{q', 33
            if transactions[arg1].field_8:
                mem[ceil32(return_data.size) + 517] = msg.sender
                mem[ceil32(return_data.size) + 549] = this.address
                mem[ceil32(return_data.size) + 581] = transactions[arg1].field_512
                mem[ceil32(return_data.size) + 481] = 100
                mem[ceil32(return_data.size) + 517 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 513 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 613] = 32
                mem[ceil32(return_data.size) + 645] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(transactions[arg1].field_256) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 677 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0
                mem[ceil32(return_data.size) + 777] = 0
                call transactions[arg1].field_256 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_512, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if bool(transactions[arg1].field_0) > 0:
                            revert with memory
                              from 128
                               len bool(transactions[arg1].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if bool(transactions[arg1].field_0) > 0:
                        require bool(transactions[arg1].field_0) >= 32
                        require transactions[arg1].field_8 == bool(transactions[arg1].field_8)
                        if not transactions[arg1].field_8:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 709 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 709] == bool(mem[ceil32(return_data.size) + 709])
                        if not mem[ceil32(return_data.size) + 709]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x9fcdb01a: arg1, transactions[arg1].field_0, transactions[arg1].field_256, transactions[arg1].field_512, block.timestamp
}

function depositUser1(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(contractEnabled) != 1:
        revert with 0, 'Contract has been disabled'
    if not transactions[arg1].field_0:
        revert with 0, 'Error: Invalid transaction'
    if transactions[arg1].field_8 > 2:
        revert with 'NH{q', 33
    mem[128] = transactions[arg1].field_8
    mem[160] = transactions[arg1].field_16
    mem[192] = transactions[arg1].field_256
    mem[224] = transactions[arg1].field_512
    mem[256] = transactions[arg1].field_768
    mem[288] = transactions[arg1].field_1024
    mem[320] = transactions[arg1].field_1280
    mem[352] = transactions[arg1].field_1536
    mem[384] = transactions[arg1].field_1792
    if transactions[arg1].field_2048 > 2:
        revert with 'NH{q', 33
    mem[416] = transactions[arg1].field_2048
    if transactions[arg1].field_2056 > 2:
        revert with 'NH{q', 33
    mem[448] = transactions[arg1].field_2056
    if transactions[arg1].field_768 != msg.sender:
        revert with 0, 'Error: Invalid permissions'
    if block.timestamp >= transactions[arg1].field_1792:
        revert with 0, 'Error: Transaction expired'
    if transactions[arg1].field_2056 > 2:
        revert with 'NH{q', 33
    if transactions[arg1].field_2056:
        revert with 0, 'Error: Deposit done'
    transactions[arg1].field_2056 = 1
    if transactions[arg1].field_8 > 2:
        revert with 'NH{q', 33
    if transactions[arg1].field_8 != 1:
        if transactions[arg1].field_8 > 2:
            revert with 'NH{q', 33
        if transactions[arg1].field_8 != 1:
            mem[516] = msg.sender
            mem[548] = this.address
            mem[580] = transactions[arg1].field_1280
            mem[480] = 100
            mem[516 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[512 len 4] = unknown_0x23b872dd(?????)
            mem[612] = 32
            mem[644] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(transactions[arg1].field_1024) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[676 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0
            mem[776] = 0
            call transactions[arg1].field_1024 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if bool(transactions[arg1].field_0) > 0:
                        revert with memory
                          from 128
                           len bool(transactions[arg1].field_0)
                    revert with 0, 'SafeERC20: low-level call failed'
                if bool(transactions[arg1].field_0) > 0:
                    require bool(transactions[arg1].field_0) >= 32
                    require transactions[arg1].field_8 == bool(transactions[arg1].field_8)
                    if not transactions[arg1].field_8:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[708] == bool(mem[708])
                    if not mem[708]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if msg.value < transactions[arg1].field_1280:
            revert with 0, 'Insufficient deposit'
        if eth.balance(this.address) < transactions[arg1].field_1280:
            revert with 0, 'Address: insufficient balance'
        call this.address with:
           value transactions[arg1].field_1280 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if transactions[arg1].field_8 > 2:
                revert with 'NH{q', 33
            if transactions[arg1].field_8 != 1:
                mem[516] = msg.sender
                mem[548] = this.address
                mem[580] = transactions[arg1].field_1280
                mem[480] = 100
                mem[516 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[512 len 4] = unknown_0x23b872dd(?????)
                mem[612] = 32
                mem[644] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(transactions[arg1].field_1024) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[676 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0
                mem[776] = 0
                call transactions[arg1].field_1024 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if bool(transactions[arg1].field_0) > 0:
                            revert with memory
                              from 128
                               len bool(transactions[arg1].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if bool(transactions[arg1].field_0) > 0:
                        require bool(transactions[arg1].field_0) >= 32
                        require transactions[arg1].field_8 == bool(transactions[arg1].field_8)
                        if not transactions[arg1].field_8:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[708] == bool(mem[708])
                        if not mem[708]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[480] = return_data.size
            mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if transactions[arg1].field_8 > 2:
                revert with 'NH{q', 33
            if transactions[arg1].field_8 != 1:
                mem[ceil32(return_data.size) + 517] = msg.sender
                mem[ceil32(return_data.size) + 549] = this.address
                mem[ceil32(return_data.size) + 581] = transactions[arg1].field_1280
                mem[ceil32(return_data.size) + 481] = 100
                mem[ceil32(return_data.size) + 517 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 513 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 613] = 32
                mem[ceil32(return_data.size) + 645] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(transactions[arg1].field_1024) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 677 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0
                mem[ceil32(return_data.size) + 777] = 0
                call transactions[arg1].field_1024 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), transactions[arg1].field_1280, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if bool(transactions[arg1].field_0) > 0:
                            revert with memory
                              from 128
                               len bool(transactions[arg1].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if bool(transactions[arg1].field_0) > 0:
                        require bool(transactions[arg1].field_0) >= 32
                        require transactions[arg1].field_8 == bool(transactions[arg1].field_8)
                        if not transactions[arg1].field_8:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 709 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 709] == bool(mem[ceil32(return_data.size) + 709])
                        if not mem[ceil32(return_data.size) + 709]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x9fcdb01a: arg1, transactions[arg1].field_768, transactions[arg1].field_1024, transactions[arg1].field_1280, block.timestamp
}



}
