contract main {




// =====================  Runtime code  =====================


#
#  - create(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4)
#
address owner;
address settlementFeeRecipientAddress;
array of struct options;
uint256 impliedVolRate;
uint256 optionCollateralizationRatio;
uint256 stor5;
address priceProviderAddress;
address poolAddress;

function pool() {
    return poolAddress
}

function settlementFeeRecipient() {
    return settlementFeeRecipientAddress
}

function impliedVolRate() {
    return impliedVolRate
}

function optionCollateralizationRatio() {
    return optionCollateralizationRatio
}

function options(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < options.length
    require options[arg1].field_0 <= 3
    require options[arg1].field_1536 <= 2
    return options[arg1].field_0, 
           options[arg1].field_0,
           options[arg1].field_256,
           options[arg1].field_512,
           options[arg1].field_768,
           options[arg1].field_1024,
           options[arg1].field_1280,
           options[arg1].field_1536
}

function owner() {
    return owner
}

function priceProvider() {
    return priceProviderAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSettlementFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require block.timestamp < stor5 + (336 * 24 * 3600)
    require arg1
    settlementFeeRecipientAddress = arg1
}

function setOptionCollaterizationRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if 50 > arg1:
        revert with 0, 'wrong value'
    if arg1 > 100:
        revert with 0, 'wrong value'
    optionCollateralizationRatio = arg1
}

function transferPoolOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require block.timestamp < stor5 + (336 * 24 * 3600)
    require ext_code.size(poolAddress)
    call poolAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setImpliedVolRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 < 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72496d706c696564566f6c52617465206c696d697420697320746f6f20736d616c,
                    mem[197 len 31]
    impliedVolRate = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < options.length
    if options[arg1].field_1280 >= block.timestamp:
        revert with 0, 'Option has not expired yet'
    require options[arg1].field_0 <= 3
    if options[arg1].field_0 != 1:
        revert with 0, 'Option is not active'
    options[arg1].field_0 = 3
    require ext_code.size(poolAddress)
    call poolAddress.0x6198e339 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Expire(options[arg1].field_1024, arg1);
}

function transfer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 < options.length
    if not arg2:
        revert with 0, 'new holder address is zero'
    if options[arg1].field_1280 < block.timestamp:
        revert with 0, 'Option has expired'
    if options[arg1].field_8 != msg.sender:
        revert with 0, 'Wrong msg.sender'
    require options[arg1].field_0 <= 3
    if options[arg1].field_0 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4f6e6c7920616374697665206f7074696f6e7320636f756c64206265207472616e736665727265,
                    mem[204 len 24]
    options[arg1].field_8 = arg2
}

function unlockAll(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] < options.length
        mem[0] = 2
        if options[cd[((32 * idx) + arg1 + 36)]].field_1280 >= block.timestamp:
            revert with 0, 'Option has not expired yet'
        require options[cd[((32 * idx) + arg1 + 36)]].field_0 <= 3
        if options[cd[((32 * idx) + arg1 + 36)]].field_0 != 1:
            revert with 0, 'Option is not active'
        options[cd[((32 * idx) + arg1 + 36)]].field_0 = 3
        mem[100] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(poolAddress)
        call poolAddress.0x6198e339 with:
             gas gas_remaining wei
            args cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = options[cd[((32 * idx) + arg1 + 36)]].field_1024
        emit Expire(options[cd[((32 * idx) + arg1 + 36)]].field_1024, cd[((32 * idx) + arg1 + 36)]);
        idx = idx + 1
        continue 
}

function exercise(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < options.length
    if options[arg1].field_1280 < block.timestamp:
        revert with 0, 'Option has expired'
    if options[arg1].field_8 != msg.sender:
        revert with 0, 'Wrong msg.sender'
    require options[arg1].field_0 <= 3
    if options[arg1].field_0 != 1:
        revert with 0, 'Wrong state'
    options[arg1].field_0 = 2
    require arg1 < options.length
    require options[arg1].field_0 <= 3
    require options[arg1].field_1536 <= 2
    require ext_code.size(priceProviderAddress)
    staticcall priceProviderAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require options[arg1].field_1536 <= 2
    if options[arg1].field_1536 != 2:
        if options[arg1].field_256 < ext_call.return_data[32]:
            revert with 0, 'Current price is too high'
        if ext_call.return_data[32] > options[arg1].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        if not options[arg1].field_256 - ext_call.return_data[32]:
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(poolAddress)
            if 0 / ext_call.return_data[32] <= options[arg1].field_768:
                call poolAddress.send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, 0 / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise((0 / ext_call.return_data[32]), arg1);
            else:
                call poolAddress.send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, options[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(options[arg1].field_768, arg1);
        else:
            if (options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / options[arg1].field_256 - ext_call.return_data[32] != options[arg1].field_512:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(poolAddress)
            if (options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32] <= options[arg1].field_768:
                call poolAddress.send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, (options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(((options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32]), arg1);
            else:
                call poolAddress.send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, options[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(options[arg1].field_768, arg1);
    else:
        if options[arg1].field_256 > ext_call.return_data[32]:
            revert with 0, 'Current price is too low'
        if options[arg1].field_256 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[32] - options[arg1].field_256:
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(poolAddress)
            if 0 / ext_call.return_data[32] <= options[arg1].field_768:
                call poolAddress.send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, 0 / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise((0 / ext_call.return_data[32]), arg1);
            else:
                call poolAddress.send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, options[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(options[arg1].field_768, arg1);
        else:
            if (ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32] - options[arg1].field_256 != options[arg1].field_512:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(poolAddress)
            if (ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32] <= options[arg1].field_768:
                call poolAddress.send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, (ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(((ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32]), arg1);
            else:
                call poolAddress.send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, options[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(options[arg1].field_768, arg1);
}

function fees(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(priceProviderAddress)
    staticcall priceProviderAddress.latestRoundData() with:
            gas gas_remaining wei
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require arg4 <= 2
    mem[64] = 160
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if (arg1 / 2) + 1 < arg1 / 2:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 != 1:
        s = (arg1 / 2) + 1
        t = arg1
        while s < t:
            _1453 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1453] = 26
            mem[_1453 + 32] = 'SafeMath: division by zero'
            if s:
                if s + (arg1 / s) < arg1 / s:
                    revert with 0, 'SafeMath: addition overflow'
                _1489 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1489] = 26
                mem[_1489 + 32] = 'SafeMath: division by zero'
                s = s + (arg1 / s) / 2
                t = s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _1453 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        if not arg2:
            _1491 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1491] = 26
            mem[_1491 + 32] = 'SafeMath: division by zero'
            if not arg3:
                revert with 0, 'SafeMath: division by zero'
            _1544 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1544] = 26
            mem[_1544 + 32] = 'SafeMath: division by zero'
            if arg3 <= ext_call.return_data[32]:
                if arg3 >= ext_call.return_data[32]:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                require arg4 <= 2
                if arg4 != 2:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                _1602 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1602] = 30
                mem[_1602 + 32] = 'SafeMath: subtraction overflow'
            else:
                require arg4 <= 2
                if arg4 == 1:
                    _1599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1599] = 30
                    mem[_1599 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3 - ext_call.return_data[32]:
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                               arg2 / 100,
                               0 / ext_call.return_data[32],
                               0 / arg3 / 100 * 10^6
                    if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                           arg2 / 100,
                           (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                           0 / arg3 / 100 * 10^6
                if arg3 >= ext_call.return_data[32]:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                require arg4 <= 2
                if arg4 != 2:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                _1623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1623] = 30
                mem[_1623 + 32] = 'SafeMath: subtraction overflow'
            if arg3 > ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[32] - arg3:
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                       arg2 / 100,
                       0 / ext_call.return_data[32],
                       0 / arg3 / 100 * 10^6
            if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 100 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                   arg2 / 100,
                   (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                   0 / arg3 / 100 * 10^6
        if t * arg2 / arg2 != t:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not t * arg2:
            _1493 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1493] = 26
            mem[_1493 + 32] = 'SafeMath: division by zero'
            if not arg3:
                revert with 0, 'SafeMath: division by zero'
            _1568 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1568] = 26
            mem[_1568 + 32] = 'SafeMath: division by zero'
            if arg3 <= ext_call.return_data[32]:
                if arg3 >= ext_call.return_data[32]:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                require arg4 <= 2
                if arg4 != 2:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                _1616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1616] = 30
                mem[_1616 + 32] = 'SafeMath: subtraction overflow'
            else:
                require arg4 <= 2
                if arg4 == 1:
                    _1601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1601] = 30
                    mem[_1601 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3 - ext_call.return_data[32]:
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                               arg2 / 100,
                               0 / ext_call.return_data[32],
                               0 / arg3 / 100 * 10^6
                    if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                           arg2 / 100,
                           (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                           0 / arg3 / 100 * 10^6
                if arg3 >= ext_call.return_data[32]:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                require arg4 <= 2
                if arg4 != 2:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                _1659 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1659] = 30
                mem[_1659 + 32] = 'SafeMath: subtraction overflow'
            if arg3 > ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[32] - arg3:
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                       arg2 / 100,
                       0 / ext_call.return_data[32],
                       0 / arg3 / 100 * 10^6
            if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 100 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                   arg2 / 100,
                   (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                   0 / arg3 / 100 * 10^6
        if impliedVolRate * t * arg2 / t * arg2 != impliedVolRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not impliedVolRate * t * arg2:
            _1507 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1507] = 26
            mem[_1507 + 32] = 'SafeMath: division by zero'
            if not arg3:
                revert with 0, 'SafeMath: division by zero'
            _1585 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1585] = 26
            mem[_1585 + 32] = 'SafeMath: division by zero'
            if arg3 <= ext_call.return_data[32]:
                if arg3 >= ext_call.return_data[32]:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                require arg4 <= 2
                if arg4 != 2:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                _1652 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1652] = 30
                mem[_1652 + 32] = 'SafeMath: subtraction overflow'
            else:
                require arg4 <= 2
                if arg4 == 1:
                    _1615 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1615] = 30
                    mem[_1615 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[32] > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3 - ext_call.return_data[32]:
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                               arg2 / 100,
                               0 / ext_call.return_data[32],
                               0 / arg3 / 100 * 10^6
                    if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                           arg2 / 100,
                           (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                           0 / arg3 / 100 * 10^6
                if arg3 >= ext_call.return_data[32]:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                require arg4 <= 2
                if arg4 != 2:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), arg2 / 100, 0, 0 / arg3 / 100 * 10^6
                _1716 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1716] = 30
                mem[_1716 + 32] = 'SafeMath: subtraction overflow'
            if arg3 > ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[32] - arg3:
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                       arg2 / 100,
                       0 / ext_call.return_data[32],
                       0 / arg3 / 100 * 10^6
            if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 100 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                   arg2 / 100,
                   (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                   0 / arg3 / 100 * 10^6
        if ext_call.return_data[32] * impliedVolRate * t * arg2 / impliedVolRate * t * arg2 != ext_call.return_data[32]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1525 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1525] = 26
        mem[_1525 + 32] = 'SafeMath: division by zero'
        if not arg3:
            revert with 0, 'SafeMath: division by zero'
        _1595 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1595] = 26
        mem[_1595 + 32] = 'SafeMath: division by zero'
        if arg3 <= ext_call.return_data[32]:
            if arg3 >= ext_call.return_data[32]:
                if ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6 < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                       arg2 / 100,
                       0,
                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
            require arg4 <= 2
            if arg4 != 2:
                if ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6 < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                       arg2 / 100,
                       0,
                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
            _1709 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1709] = 30
            mem[_1709 + 32] = 'SafeMath: subtraction overflow'
        else:
            require arg4 <= 2
            if arg4 == 1:
                _1651 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1651] = 30
                mem[_1651 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3 - ext_call.return_data[32]:
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                           arg2 / 100,
                           0 / ext_call.return_data[32],
                           ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                       arg2 / 100,
                       (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
            if arg3 >= ext_call.return_data[32]:
                if ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6 < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                       arg2 / 100,
                       0,
                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
            require arg4 <= 2
            if arg4 != 2:
                if ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6 < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                       arg2 / 100,
                       0,
                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
            _1788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1788] = 30
            mem[_1788 + 32] = 'SafeMath: subtraction overflow'
        if arg3 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[32] - arg3:
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 100 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                   arg2 / 100,
                   0 / ext_call.return_data[32],
                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 / 100 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
               arg2 / 100,
               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
               ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
    s = (arg1 / 2) + 1
    t = arg1
    while s < t:
        _1454 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1454] = 26
        mem[_1454 + 32] = 'SafeMath: division by zero'
        if s:
            if s + (arg1 / s) < arg1 / s:
                revert with 0, 'SafeMath: addition overflow'
            _1490 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1490] = 26
            mem[_1490 + 32] = 'SafeMath: division by zero'
            s = s + (arg1 / s) / 2
            t = s
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        mem[mem[64] + 68] = 'SafeMath: division by zero'
        idx = 32
        while idx < 26:
            mem[idx + mem[64] + 68] = mem[idx + _1454 + 32]
            idx = idx + 32
            continue 
        revert with 0, 'SafeMath: division by zero'
    if not arg2:
        _1492 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1492] = 26
        mem[_1492 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        _1549 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1549] = 26
        mem[_1549 + 32] = 'SafeMath: division by zero'
        if arg3 <= ext_call.return_data[32]:
            if arg3 >= ext_call.return_data[32]:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            require arg4 <= 2
            if arg4 != 2:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            _1607 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1607] = 30
            mem[_1607 + 32] = 'SafeMath: subtraction overflow'
        else:
            require arg4 <= 2
            if arg4 == 1:
                _1600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1600] = 30
                mem[_1600 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3 - ext_call.return_data[32]:
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                           arg2 / 100,
                           0 / ext_call.return_data[32],
                           0 / ext_call.return_data[32] / 100 * 10^6
                if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                       arg2 / 100,
                       (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                       0 / ext_call.return_data[32] / 100 * 10^6
            if arg3 >= ext_call.return_data[32]:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            require arg4 <= 2
            if arg4 != 2:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            _1633 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1633] = 30
            mem[_1633 + 32] = 'SafeMath: subtraction overflow'
        if arg3 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[32] - arg3:
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 100 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                   arg2 / 100,
                   0 / ext_call.return_data[32],
                   0 / ext_call.return_data[32] / 100 * 10^6
        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 / 100 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
               arg2 / 100,
               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
               0 / ext_call.return_data[32] / 100 * 10^6
    if t * arg2 / arg2 != t:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not t * arg2:
        _1497 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1497] = 26
        mem[_1497 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        _1573 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1573] = 26
        mem[_1573 + 32] = 'SafeMath: division by zero'
        if arg3 <= ext_call.return_data[32]:
            if arg3 >= ext_call.return_data[32]:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            require arg4 <= 2
            if arg4 != 2:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            _1626 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1626] = 30
            mem[_1626 + 32] = 'SafeMath: subtraction overflow'
        else:
            require arg4 <= 2
            if arg4 == 1:
                _1606 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1606] = 30
                mem[_1606 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3 - ext_call.return_data[32]:
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                           arg2 / 100,
                           0 / ext_call.return_data[32],
                           0 / ext_call.return_data[32] / 100 * 10^6
                if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                       arg2 / 100,
                       (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                       0 / ext_call.return_data[32] / 100 * 10^6
            if arg3 >= ext_call.return_data[32]:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            require arg4 <= 2
            if arg4 != 2:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            _1674 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1674] = 30
            mem[_1674 + 32] = 'SafeMath: subtraction overflow'
        if arg3 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[32] - arg3:
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 100 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                   arg2 / 100,
                   0 / ext_call.return_data[32],
                   0 / ext_call.return_data[32] / 100 * 10^6
        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 / 100 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
               arg2 / 100,
               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
               0 / ext_call.return_data[32] / 100 * 10^6
    if impliedVolRate * t * arg2 / t * arg2 != impliedVolRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not impliedVolRate * t * arg2:
        _1513 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1513] = 26
        mem[_1513 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        _1589 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1589] = 26
        mem[_1589 + 32] = 'SafeMath: division by zero'
        if arg3 <= ext_call.return_data[32]:
            if arg3 >= ext_call.return_data[32]:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            require arg4 <= 2
            if arg4 != 2:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            _1667 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1667] = 30
            mem[_1667 + 32] = 'SafeMath: subtraction overflow'
        else:
            require arg4 <= 2
            if arg4 == 1:
                _1625 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1625] = 30
                mem[_1625 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[32] > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3 - ext_call.return_data[32]:
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                           arg2 / 100,
                           0 / ext_call.return_data[32],
                           0 / ext_call.return_data[32] / 100 * 10^6
                if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                       arg2 / 100,
                       (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                       0 / ext_call.return_data[32] / 100 * 10^6
            if arg3 >= ext_call.return_data[32]:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            require arg4 <= 2
            if arg4 != 2:
                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), arg2 / 100, 0, 0 / ext_call.return_data[32] / 100 * 10^6
            _1732 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1732] = 30
            mem[_1732 + 32] = 'SafeMath: subtraction overflow'
        if arg3 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[32] - arg3:
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 100 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                   arg2 / 100,
                   0 / ext_call.return_data[32],
                   0 / ext_call.return_data[32] / 100 * 10^6
        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 / 100 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
               arg2 / 100,
               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
               0 / ext_call.return_data[32] / 100 * 10^6
    if arg3 * impliedVolRate * t * arg2 / impliedVolRate * t * arg2 != arg3:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    _1533 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1533] = 26
    mem[_1533 + 32] = 'SafeMath: division by zero'
    if not ext_call.return_data[32]:
        revert with 0, 'SafeMath: division by zero'
    _1597 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1597] = 26
    mem[_1597 + 32] = 'SafeMath: division by zero'
    if arg3 <= ext_call.return_data[32]:
        if arg3 >= ext_call.return_data[32]:
            if arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6 < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                   arg2 / 100,
                   0,
                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
        require arg4 <= 2
        if arg4 != 2:
            if arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6 < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                   arg2 / 100,
                   0,
                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
        _1725 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1725] = 30
        mem[_1725 + 32] = 'SafeMath: subtraction overflow'
    else:
        require arg4 <= 2
        if arg4 == 1:
            _1666 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1666] = 30
            mem[_1666 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[32] > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3 - ext_call.return_data[32]:
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 100 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                       arg2 / 100,
                       0 / ext_call.return_data[32],
                       arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
            if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 100 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                   arg2 / 100,
                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
        if arg3 >= ext_call.return_data[32]:
            if arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6 < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                   arg2 / 100,
                   0,
                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
        require arg4 <= 2
        if arg4 != 2:
            if arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6 < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                   arg2 / 100,
                   0,
                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
        _1804 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1804] = 30
        mem[_1804 + 32] = 'SafeMath: subtraction overflow'
    if arg3 > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[32] - arg3:
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 / 100 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
               arg2 / 100,
               0 / ext_call.return_data[32],
               arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
    if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not ext_call.return_data[32]:
        revert with 0, 'SafeMath: division by zero'
    if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 / 100 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
           arg2 / 100,
           (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
           arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
}



}
