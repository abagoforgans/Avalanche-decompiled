contract main {




// =====================  Runtime code  =====================


#
#  - create(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4)
#  - fees(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4)
#
address owner;
uint32 stor1;
address settlementFeeRecipientAddress;
array of struct options;
uint256 impliedVolRate;
uint256 optionCollateralizationRatio;
uint256 stor5;
address priceProviderAddress;
uint32 stor7;
address poolAddress;
uint256 stor7;
address pangolinRouterAddress;
array of address sub_08c43d04;
address linkAddress;

function sub_08c43d04(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_08c43d04.length
    return sub_08c43d04[arg1]
}

function pool() {
    return address(poolAddress)
}

function settlementFeeRecipient() {
    return address(settlementFeeRecipientAddress)
}

function impliedVolRate() {
    return impliedVolRate
}

function link() {
    return linkAddress
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

function pangolinRouter() {
    return pangolinRouterAddress
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
    address(settlementFeeRecipientAddress) = arg1
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
    require ext_code.size(address(poolAddress))
    call address(poolAddress).0xf2fde38b with:
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
                    0x64496d706c696564566f6c52617465206c696d697420697320746f6f20736d616c,
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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
    require ext_code.size(address(poolAddress))
    call address(poolAddress).0x6198e339 with:
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
                    39,
                    0x654f6e6c7920616374697665206f7074696f6e20636f756c64206265207472616e736665727265,
                    mem[203 len 25]
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
        require ext_code.size(address(poolAddress))
        call address(poolAddress).0x6198e339 with:
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
            require ext_code.size(address(poolAddress))
            if 0 / ext_call.return_data[32] <= options[arg1].field_768:
                call address(poolAddress).send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, 0 / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise((0 / ext_call.return_data[32]), arg1);
            else:
                call address(poolAddress).send(uint256 rg1, address rg2, uint256 rg3) with:
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
            require ext_code.size(address(poolAddress))
            if (options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32] <= options[arg1].field_768:
                call address(poolAddress).send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, (options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(((options[arg1].field_256 * options[arg1].field_512) - (ext_call.return_data[32] * options[arg1].field_512) / ext_call.return_data[32]), arg1);
            else:
                call address(poolAddress).send(uint256 rg1, address rg2, uint256 rg3) with:
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
            require ext_code.size(address(poolAddress))
            if 0 / ext_call.return_data[32] <= options[arg1].field_768:
                call address(poolAddress).send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, 0 / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise((0 / ext_call.return_data[32]), arg1);
            else:
                call address(poolAddress).send(uint256 rg1, address rg2, uint256 rg3) with:
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
            require ext_code.size(address(poolAddress))
            if (ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32] <= options[arg1].field_768:
                call address(poolAddress).send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, (ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(((ext_call.return_data[32] * options[arg1].field_512) - (options[arg1].field_256 * options[arg1].field_512) / ext_call.return_data[32]), arg1);
            else:
                call address(poolAddress).send(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, options[arg1].field_0, options[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Exercise(options[arg1].field_768, arg1);
}

function approve() {
    require ext_code.size(linkAddress)
    staticcall linkAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(poolAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6c5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(linkAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(linkAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call linkAddress with:
       funct uint32(stor7)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(linkAddress)
        staticcall linkAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(settlementFeeRecipientAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x6c5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(linkAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(linkAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(settlementFeeRecipientAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call linkAddress with:
           funct uint32(stor1)
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), -1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(linkAddress)
            staticcall linkAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(settlementFeeRecipientAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x6c5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(linkAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(linkAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(settlementFeeRecipientAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call linkAddress with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(linkAddress)
            staticcall linkAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(settlementFeeRecipientAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x6c5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(linkAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(linkAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(settlementFeeRecipientAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call linkAddress with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), -1
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
}



}
