contract main {




// =====================  Runtime code  =====================


#
#  - create(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4)
#  - exercise(uint256 arg1)
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
array of struct sub_c8c6f7a6;
address wbtcAddress;

function pool() {
    return address(poolAddress)
}

function settlementFeeRecipient() {
    return address(settlementFeeRecipientAddress)
}

function impliedVolRate() {
    return impliedVolRate
}

function optionCollateralizationRatio() {
    return optionCollateralizationRatio
}

function wbtc() {
    return wbtcAddress
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

function sub_c8c6f7a6(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_c8c6f7a6.length
    return sub_c8c6f7a6[arg1].field_0
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

function approve() {
    require ext_code.size(wbtcAddress)
    staticcall wbtcAddress.0xdd62ed3e with:
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
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wbtcAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wbtcAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call wbtcAddress with:
       funct uint32(stor7)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(wbtcAddress)
        staticcall wbtcAddress.0xdd62ed3e with:
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
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wbtcAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wbtcAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(settlementFeeRecipientAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wbtcAddress with:
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
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(wbtcAddress)
        staticcall wbtcAddress.0xdd62ed3e with:
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
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wbtcAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wbtcAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(settlementFeeRecipientAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wbtcAddress with:
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
            _2429 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2429] = 26
            mem[_2429 + 32] = 'SafeMath: division by zero'
            if s:
                if s + (arg1 / s) < arg1 / s:
                    revert with 0, 'SafeMath: addition overflow'
                _2465 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2465] = 26
                mem[_2465 + 32] = 'SafeMath: division by zero'
                s = s + (arg1 / s) / 2
                t = s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _2429 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        if not arg2:
            _2467 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2467] = 26
            mem[_2467 + 32] = 'SafeMath: division by zero'
            if not arg3:
                revert with 0, 'SafeMath: division by zero'
            _2520 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2520] = 26
            mem[_2520 + 32] = 'SafeMath: division by zero'
            if arg3 <= ext_call.return_data[32]:
                if arg3 >= ext_call.return_data[32]:
                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    _2734 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                    if not sub_c8c6f7a6.length:
                        require ext_code.size(pangolinRouterAddress)
                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2897 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2954 = mem[_2897]
                        require mem[_2897] <= 4294967296
                        require mem[_2897] + 32 <= return_data.size
                        require mem[_2897 + mem[_2897]] <= 4294967296 and mem[_2897] + (32 * mem[_2897 + mem[_2897]]) + 32 <= return_data.size
                        mem[_2897 + ceil32(return_data.size)] = mem[_2897 + mem[_2897]]
                        _3149 = mem[_2897 + _2954]
                        mem[_2897 + ceil32(return_data.size) + 32 len floor32(mem[_2897 + _2954])] = mem[_2897 + _2954 + 32 len floor32(mem[_2897 + _2954])]
                        mem[64] = (32 * _3149) + _2897 + ceil32(return_data.size) + 32
                        if 0 < mem[_2897 + ceil32(return_data.size)]:
                            return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                   mem[_2897 + ceil32(return_data.size) + 32],
                                   arg2 / 100,
                                   0,
                                   0 / arg3 / 100 * 10^6
                    else:
                        mem[0] = 9
                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                        idx = mem[64] + 100
                        s = 0
                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(pangolinRouterAddress)
                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2734 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5685 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5795 = mem[_5685]
                        require mem[_5685] <= 4294967296
                        require mem[_5685] + 32 <= return_data.size
                        require mem[_5685 + mem[_5685]] <= 4294967296 and mem[_5685] + (32 * mem[_5685 + mem[_5685]]) + 32 <= return_data.size
                        mem[_5685 + ceil32(return_data.size)] = mem[_5685 + mem[_5685]]
                        _6005 = mem[_5685 + _5795]
                        mem[_5685 + ceil32(return_data.size) + 32 len floor32(mem[_5685 + _5795])] = mem[_5685 + _5795 + 32 len floor32(mem[_5685 + _5795])]
                        mem[64] = (32 * _6005) + _5685 + ceil32(return_data.size) + 32
                        if 0 < mem[_5685 + ceil32(return_data.size)]:
                            return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                   mem[_5685 + ceil32(return_data.size) + 32],
                                   arg2 / 100,
                                   0,
                                   0 / arg3 / 100 * 10^6
                else:
                    if arg4 <= 2:
                        if arg4 != 2:
                            if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            _2839 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3016 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3074 = mem[_3016]
                                require mem[_3016] <= 4294967296
                                require mem[_3016] + 32 <= return_data.size
                                require mem[_3016 + mem[_3016]] <= 4294967296 and mem[_3016] + (32 * mem[_3016 + mem[_3016]]) + 32 <= return_data.size
                                mem[_3016 + ceil32(return_data.size)] = mem[_3016 + mem[_3016]]
                                _3300 = mem[_3016 + _3074]
                                mem[_3016 + ceil32(return_data.size) + 32 len floor32(mem[_3016 + _3074])] = mem[_3016 + _3074 + 32 len floor32(mem[_3016 + _3074])]
                                mem[64] = (32 * _3300) + _3016 + ceil32(return_data.size) + 32
                                if 0 < mem[_3016 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                           mem[_3016 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / arg3 / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2839 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5686 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5797 = mem[_5686]
                                require mem[_5686] <= 4294967296
                                require mem[_5686] + 32 <= return_data.size
                                require mem[_5686 + mem[_5686]] <= 4294967296 and mem[_5686] + (32 * mem[_5686 + mem[_5686]]) + 32 <= return_data.size
                                mem[_5686 + ceil32(return_data.size)] = mem[_5686 + mem[_5686]]
                                _6006 = mem[_5686 + _5797]
                                mem[_5686 + ceil32(return_data.size) + 32 len floor32(mem[_5686 + _5797])] = mem[_5686 + _5797 + 32 len floor32(mem[_5686 + _5797])]
                                mem[64] = (32 * _6006) + _5686 + ceil32(return_data.size) + 32
                                if 0 < mem[_5686 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                           mem[_5686 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / arg3 / 100 * 10^6
                        else:
                            _2580 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2580] = 30
                            mem[_2580 + 32] = 'SafeMath: subtraction overflow'
                            if arg3 > ext_call.return_data[32]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_call.return_data[32] - arg3:
                                _2956 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2956] = 26
                                mem[_2956 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _4123 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4232 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4268 = mem[_4232]
                                    require mem[_4232] <= 4294967296
                                    require mem[_4232] + 32 <= return_data.size
                                    require mem[_4232 + mem[_4232]] <= 4294967296 and mem[_4232] + (32 * mem[_4232 + mem[_4232]]) + 32 <= return_data.size
                                    mem[_4232 + ceil32(return_data.size)] = mem[_4232 + mem[_4232]]
                                    _4399 = mem[_4232 + _4268]
                                    mem[_4232 + ceil32(return_data.size) + 32 len floor32(mem[_4232 + _4268])] = mem[_4232 + _4268 + 32 len floor32(mem[_4232 + _4268])]
                                    mem[64] = (32 * _4399) + _4232 + ceil32(return_data.size) + 32
                                    if 0 < mem[_4232 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                               mem[_4232 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0 / ext_call.return_data[32],
                                               0 / arg3 / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4123 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5688 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5801 = mem[_5688]
                                    require mem[_5688] <= 4294967296
                                    require mem[_5688] + 32 <= return_data.size
                                    require mem[_5688 + mem[_5688]] <= 4294967296 and mem[_5688] + (32 * mem[_5688 + mem[_5688]]) + 32 <= return_data.size
                                    mem[_5688 + ceil32(return_data.size)] = mem[_5688 + mem[_5688]]
                                    _6008 = mem[_5688 + _5801]
                                    mem[_5688 + ceil32(return_data.size) + 32 len floor32(mem[_5688 + _5801])] = mem[_5688 + _5801 + 32 len floor32(mem[_5688 + _5801])]
                                    mem[64] = (32 * _6008) + _5688 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5688 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                               mem[_5688 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0 / ext_call.return_data[32],
                                               0 / arg3 / 100 * 10^6
                            else:
                                if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _3076 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3076] = 26
                                mem[_3076 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _4192 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4312 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4353 = mem[_4312]
                                    require mem[_4312] <= 4294967296
                                    require mem[_4312] + 32 <= return_data.size
                                    require mem[_4312 + mem[_4312]] <= 4294967296 and mem[_4312] + (32 * mem[_4312 + mem[_4312]]) + 32 <= return_data.size
                                    mem[_4312 + ceil32(return_data.size)] = mem[_4312 + mem[_4312]]
                                    _4487 = mem[_4312 + _4353]
                                    mem[_4312 + ceil32(return_data.size) + 32 len floor32(mem[_4312 + _4353])] = mem[_4312 + _4353 + 32 len floor32(mem[_4312 + _4353])]
                                    mem[64] = (32 * _4487) + _4312 + ceil32(return_data.size) + 32
                                    if 0 < mem[_4312 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                               mem[_4312 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                               0 / arg3 / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4192 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5687 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5799 = mem[_5687]
                                    require mem[_5687] <= 4294967296
                                    require mem[_5687] + 32 <= return_data.size
                                    require mem[_5687 + mem[_5687]] <= 4294967296 and mem[_5687] + (32 * mem[_5687 + mem[_5687]]) + 32 <= return_data.size
                                    mem[_5687 + ceil32(return_data.size)] = mem[_5687 + mem[_5687]]
                                    _6007 = mem[_5687 + _5799]
                                    mem[_5687 + ceil32(return_data.size) + 32 len floor32(mem[_5687 + _5799])] = mem[_5687 + _5799 + 32 len floor32(mem[_5687 + _5799])]
                                    mem[64] = (32 * _6007) + _5687 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5687 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                               mem[_5687 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                               0 / arg3 / 100 * 10^6
            else:
                if arg4 <= 2:
                    if arg4 == 1:
                        _2575 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2575] = 30
                        mem[_2575 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[32] > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg3 - ext_call.return_data[32]:
                            _2845 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2845] = 26
                            mem[_2845 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            _4040 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4162 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4196 = mem[_4162]
                                require mem[_4162] <= 4294967296
                                require mem[_4162] + 32 <= return_data.size
                                require mem[_4162 + mem[_4162]] <= 4294967296 and mem[_4162] + (32 * mem[_4162 + mem[_4162]]) + 32 <= return_data.size
                                mem[_4162 + ceil32(return_data.size)] = mem[_4162 + mem[_4162]]
                                _4316 = mem[_4162 + _4196]
                                mem[_4162 + ceil32(return_data.size) + 32 len floor32(mem[_4162 + _4196])] = mem[_4162 + _4196 + 32 len floor32(mem[_4162 + _4196])]
                                mem[64] = (32 * _4316) + _4162 + ceil32(return_data.size) + 32
                                if 0 < mem[_4162 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                           mem[_4162 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0 / ext_call.return_data[32],
                                           0 / arg3 / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4040 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5694 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5813 = mem[_5694]
                                require mem[_5694] <= 4294967296
                                require mem[_5694] + 32 <= return_data.size
                                require mem[_5694 + mem[_5694]] <= 4294967296 and mem[_5694] + (32 * mem[_5694 + mem[_5694]]) + 32 <= return_data.size
                                mem[_5694 + ceil32(return_data.size)] = mem[_5694 + mem[_5694]]
                                _6014 = mem[_5694 + _5813]
                                mem[_5694 + ceil32(return_data.size) + 32 len floor32(mem[_5694 + _5813])] = mem[_5694 + _5813 + 32 len floor32(mem[_5694 + _5813])]
                                mem[64] = (32 * _6014) + _5694 + ceil32(return_data.size) + 32
                                if 0 < mem[_5694 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                           mem[_5694 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0 / ext_call.return_data[32],
                                           0 / arg3 / 100 * 10^6
                        else:
                            if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2958 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2958] = 26
                            mem[_2958 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            _4126 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4235 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4271 = mem[_4235]
                                require mem[_4235] <= 4294967296
                                require mem[_4235] + 32 <= return_data.size
                                require mem[_4235 + mem[_4235]] <= 4294967296 and mem[_4235] + (32 * mem[_4235 + mem[_4235]]) + 32 <= return_data.size
                                mem[_4235 + ceil32(return_data.size)] = mem[_4235 + mem[_4235]]
                                _4401 = mem[_4235 + _4271]
                                mem[_4235 + ceil32(return_data.size) + 32 len floor32(mem[_4235 + _4271])] = mem[_4235 + _4271 + 32 len floor32(mem[_4235 + _4271])]
                                mem[64] = (32 * _4401) + _4235 + ceil32(return_data.size) + 32
                                if 0 < mem[_4235 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                           mem[_4235 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                           0 / arg3 / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4126 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5693 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5811 = mem[_5693]
                                require mem[_5693] <= 4294967296
                                require mem[_5693] + 32 <= return_data.size
                                require mem[_5693 + mem[_5693]] <= 4294967296 and mem[_5693] + (32 * mem[_5693 + mem[_5693]]) + 32 <= return_data.size
                                mem[_5693 + ceil32(return_data.size)] = mem[_5693 + mem[_5693]]
                                _6013 = mem[_5693 + _5811]
                                mem[_5693 + ceil32(return_data.size) + 32 len floor32(mem[_5693 + _5811])] = mem[_5693 + _5811 + 32 len floor32(mem[_5693 + _5811])]
                                mem[64] = (32 * _6013) + _5693 + ceil32(return_data.size) + 32
                                if 0 < mem[_5693 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                           mem[_5693 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                           0 / arg3 / 100 * 10^6
                    else:
                        if arg3 >= ext_call.return_data[32]:
                            if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            _2840 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3017 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3080 = mem[_3017]
                                require mem[_3017] <= 4294967296
                                require mem[_3017] + 32 <= return_data.size
                                require mem[_3017 + mem[_3017]] <= 4294967296 and mem[_3017] + (32 * mem[_3017 + mem[_3017]]) + 32 <= return_data.size
                                mem[_3017 + ceil32(return_data.size)] = mem[_3017 + mem[_3017]]
                                _3304 = mem[_3017 + _3080]
                                mem[_3017 + ceil32(return_data.size) + 32 len floor32(mem[_3017 + _3080])] = mem[_3017 + _3080 + 32 len floor32(mem[_3017 + _3080])]
                                mem[64] = (32 * _3304) + _3017 + ceil32(return_data.size) + 32
                                if 0 < mem[_3017 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                           mem[_3017 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / arg3 / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2840 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5689 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5803 = mem[_5689]
                                require mem[_5689] <= 4294967296
                                require mem[_5689] + 32 <= return_data.size
                                require mem[_5689 + mem[_5689]] <= 4294967296 and mem[_5689] + (32 * mem[_5689 + mem[_5689]]) + 32 <= return_data.size
                                mem[_5689 + ceil32(return_data.size)] = mem[_5689 + mem[_5689]]
                                _6009 = mem[_5689 + _5803]
                                mem[_5689 + ceil32(return_data.size) + 32 len floor32(mem[_5689 + _5803])] = mem[_5689 + _5803 + 32 len floor32(mem[_5689 + _5803])]
                                mem[64] = (32 * _6009) + _5689 + ceil32(return_data.size) + 32
                                if 0 < mem[_5689 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                           mem[_5689 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / arg3 / 100 * 10^6
                        else:
                            if arg4 <= 2:
                                if arg4 != 2:
                                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _2957 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3151 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3220 = mem[_3151]
                                        require mem[_3151] <= 4294967296
                                        require mem[_3151] + 32 <= return_data.size
                                        require mem[_3151 + mem[_3151]] <= 4294967296 and mem[_3151] + (32 * mem[_3151 + mem[_3151]]) + 32 <= return_data.size
                                        mem[_3151 + ceil32(return_data.size)] = mem[_3151 + mem[_3151]]
                                        _3480 = mem[_3151 + _3220]
                                        mem[_3151 + ceil32(return_data.size) + 32 len floor32(mem[_3151 + _3220])] = mem[_3151 + _3220 + 32 len floor32(mem[_3151 + _3220])]
                                        mem[64] = (32 * _3480) + _3151 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3151 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_3151 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2957 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5690 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5805 = mem[_5690]
                                        require mem[_5690] <= 4294967296
                                        require mem[_5690] + 32 <= return_data.size
                                        require mem[_5690 + mem[_5690]] <= 4294967296 and mem[_5690] + (32 * mem[_5690 + mem[_5690]]) + 32 <= return_data.size
                                        mem[_5690 + ceil32(return_data.size)] = mem[_5690 + mem[_5690]]
                                        _6010 = mem[_5690 + _5805]
                                        mem[_5690 + ceil32(return_data.size) + 32 len floor32(mem[_5690 + _5805])] = mem[_5690 + _5805 + 32 len floor32(mem[_5690 + _5805])]
                                        mem[64] = (32 * _6010) + _5690 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5690 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_5690 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / arg3 / 100 * 10^6
                                else:
                                    _2607 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2607] = 30
                                    mem[_2607 + 32] = 'SafeMath: subtraction overflow'
                                    if arg3 > ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not ext_call.return_data[32] - arg3:
                                        _3082 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3082] = 26
                                        mem[_3082 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4195 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4315 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4356 = mem[_4315]
                                            require mem[_4315] <= 4294967296
                                            require mem[_4315] + 32 <= return_data.size
                                            require mem[_4315 + mem[_4315]] <= 4294967296 and mem[_4315] + (32 * mem[_4315 + mem[_4315]]) + 32 <= return_data.size
                                            mem[_4315 + ceil32(return_data.size)] = mem[_4315 + mem[_4315]]
                                            _4490 = mem[_4315 + _4356]
                                            mem[_4315 + ceil32(return_data.size) + 32 len floor32(mem[_4315 + _4356])] = mem[_4315 + _4356 + 32 len floor32(mem[_4315 + _4356])]
                                            mem[64] = (32 * _4490) + _4315 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4315 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_4315 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       0 / arg3 / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4195 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5692 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5809 = mem[_5692]
                                            require mem[_5692] <= 4294967296
                                            require mem[_5692] + 32 <= return_data.size
                                            require mem[_5692 + mem[_5692]] <= 4294967296 and mem[_5692] + (32 * mem[_5692 + mem[_5692]]) + 32 <= return_data.size
                                            mem[_5692 + ceil32(return_data.size)] = mem[_5692 + mem[_5692]]
                                            _6012 = mem[_5692 + _5809]
                                            mem[_5692 + ceil32(return_data.size) + 32 len floor32(mem[_5692 + _5809])] = mem[_5692 + _5809 + 32 len floor32(mem[_5692 + _5809])]
                                            mem[64] = (32 * _6012) + _5692 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5692 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_5692 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       0 / arg3 / 100 * 10^6
                                    else:
                                        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3222 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3222] = 26
                                        mem[_3222 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4270 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4400 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4444 = mem[_4400]
                                            require mem[_4400] <= 4294967296
                                            require mem[_4400] + 32 <= return_data.size
                                            require mem[_4400 + mem[_4400]] <= 4294967296 and mem[_4400] + (32 * mem[_4400 + mem[_4400]]) + 32 <= return_data.size
                                            mem[_4400 + ceil32(return_data.size)] = mem[_4400 + mem[_4400]]
                                            _4581 = mem[_4400 + _4444]
                                            mem[_4400 + ceil32(return_data.size) + 32 len floor32(mem[_4400 + _4444])] = mem[_4400 + _4444 + 32 len floor32(mem[_4400 + _4444])]
                                            mem[64] = (32 * _4581) + _4400 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4400 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_4400 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       0 / arg3 / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4270 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5691 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5807 = mem[_5691]
                                            require mem[_5691] <= 4294967296
                                            require mem[_5691] + 32 <= return_data.size
                                            require mem[_5691 + mem[_5691]] <= 4294967296 and mem[_5691] + (32 * mem[_5691 + mem[_5691]]) + 32 <= return_data.size
                                            mem[_5691 + ceil32(return_data.size)] = mem[_5691 + mem[_5691]]
                                            _6011 = mem[_5691 + _5807]
                                            mem[_5691 + ceil32(return_data.size) + 32 len floor32(mem[_5691 + _5807])] = mem[_5691 + _5807 + 32 len floor32(mem[_5691 + _5807])]
                                            mem[64] = (32 * _6011) + _5691 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5691 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_5691 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       0 / arg3 / 100 * 10^6
        else:
            if t * arg2 / arg2 != t:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not t * arg2:
                _2469 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2469] = 26
                mem[_2469 + 32] = 'SafeMath: division by zero'
                if not arg3:
                    revert with 0, 'SafeMath: division by zero'
                _2544 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2544] = 26
                mem[_2544 + 32] = 'SafeMath: division by zero'
                if arg3 <= ext_call.return_data[32]:
                    if arg3 >= ext_call.return_data[32]:
                        if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                            revert with 0, 'SafeMath: addition overflow'
                        _2830 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                        if not sub_c8c6f7a6.length:
                            require ext_code.size(pangolinRouterAddress)
                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3008 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3065 = mem[_3008]
                            require mem[_3008] <= 4294967296
                            require mem[_3008] + 32 <= return_data.size
                            require mem[_3008 + mem[_3008]] <= 4294967296 and mem[_3008] + (32 * mem[_3008 + mem[_3008]]) + 32 <= return_data.size
                            mem[_3008 + ceil32(return_data.size)] = mem[_3008 + mem[_3008]]
                            _3292 = mem[_3008 + _3065]
                            mem[_3008 + ceil32(return_data.size) + 32 len floor32(mem[_3008 + _3065])] = mem[_3008 + _3065 + 32 len floor32(mem[_3008 + _3065])]
                            mem[64] = (32 * _3292) + _3008 + ceil32(return_data.size) + 32
                            if 0 < mem[_3008 + ceil32(return_data.size)]:
                                return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                       mem[_3008 + ceil32(return_data.size) + 32],
                                       arg2 / 100,
                                       0,
                                       0 / arg3 / 100 * 10^6
                        else:
                            mem[0] = 9
                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                            idx = mem[64] + 100
                            s = 0
                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(pangolinRouterAddress)
                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2830 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5675 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5775 = mem[_5675]
                            require mem[_5675] <= 4294967296
                            require mem[_5675] + 32 <= return_data.size
                            require mem[_5675 + mem[_5675]] <= 4294967296 and mem[_5675] + (32 * mem[_5675 + mem[_5675]]) + 32 <= return_data.size
                            mem[_5675 + ceil32(return_data.size)] = mem[_5675 + mem[_5675]]
                            _5995 = mem[_5675 + _5775]
                            mem[_5675 + ceil32(return_data.size) + 32 len floor32(mem[_5675 + _5775])] = mem[_5675 + _5775 + 32 len floor32(mem[_5675 + _5775])]
                            mem[64] = (32 * _5995) + _5675 + ceil32(return_data.size) + 32
                            if 0 < mem[_5675 + ceil32(return_data.size)]:
                                return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                       mem[_5675 + ceil32(return_data.size) + 32],
                                       arg2 / 100,
                                       0,
                                       0 / arg3 / 100 * 10^6
                    else:
                        if arg4 <= 2:
                            if arg4 != 2:
                                if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                _2947 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3142 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3199 = mem[_3142]
                                    require mem[_3142] <= 4294967296
                                    require mem[_3142] + 32 <= return_data.size
                                    require mem[_3142 + mem[_3142]] <= 4294967296 and mem[_3142] + (32 * mem[_3142 + mem[_3142]]) + 32 <= return_data.size
                                    mem[_3142 + ceil32(return_data.size)] = mem[_3142 + mem[_3142]]
                                    _3462 = mem[_3142 + _3199]
                                    mem[_3142 + ceil32(return_data.size) + 32 len floor32(mem[_3142 + _3199])] = mem[_3142 + _3199 + 32 len floor32(mem[_3142 + _3199])]
                                    mem[64] = (32 * _3462) + _3142 + ceil32(return_data.size) + 32
                                    if 0 < mem[_3142 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                               mem[_3142 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0,
                                               0 / arg3 / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2947 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5676 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5777 = mem[_5676]
                                    require mem[_5676] <= 4294967296
                                    require mem[_5676] + 32 <= return_data.size
                                    require mem[_5676 + mem[_5676]] <= 4294967296 and mem[_5676] + (32 * mem[_5676 + mem[_5676]]) + 32 <= return_data.size
                                    mem[_5676 + ceil32(return_data.size)] = mem[_5676 + mem[_5676]]
                                    _5996 = mem[_5676 + _5777]
                                    mem[_5676 + ceil32(return_data.size) + 32 len floor32(mem[_5676 + _5777])] = mem[_5676 + _5777 + 32 len floor32(mem[_5676 + _5777])]
                                    mem[64] = (32 * _5996) + _5676 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5676 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                               mem[_5676 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0,
                                               0 / arg3 / 100 * 10^6
                            else:
                                _2596 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2596] = 30
                                mem[_2596 + 32] = 'SafeMath: subtraction overflow'
                                if arg3 > ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[32] - arg3:
                                    _3067 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3067] = 26
                                    mem[_3067 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4188 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4308 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4347 = mem[_4308]
                                        require mem[_4308] <= 4294967296
                                        require mem[_4308] + 32 <= return_data.size
                                        require mem[_4308 + mem[_4308]] <= 4294967296 and mem[_4308] + (32 * mem[_4308 + mem[_4308]]) + 32 <= return_data.size
                                        mem[_4308 + ceil32(return_data.size)] = mem[_4308 + mem[_4308]]
                                        _4482 = mem[_4308 + _4347]
                                        mem[_4308 + ceil32(return_data.size) + 32 len floor32(mem[_4308 + _4347])] = mem[_4308 + _4347 + 32 len floor32(mem[_4308 + _4347])]
                                        mem[64] = (32 * _4482) + _4308 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4308 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_4308 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   0 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4188 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5678 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5781 = mem[_5678]
                                        require mem[_5678] <= 4294967296
                                        require mem[_5678] + 32 <= return_data.size
                                        require mem[_5678 + mem[_5678]] <= 4294967296 and mem[_5678] + (32 * mem[_5678 + mem[_5678]]) + 32 <= return_data.size
                                        mem[_5678 + ceil32(return_data.size)] = mem[_5678 + mem[_5678]]
                                        _5998 = mem[_5678 + _5781]
                                        mem[_5678 + ceil32(return_data.size) + 32 len floor32(mem[_5678 + _5781])] = mem[_5678 + _5781 + 32 len floor32(mem[_5678 + _5781])]
                                        mem[64] = (32 * _5998) + _5678 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5678 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_5678 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   0 / arg3 / 100 * 10^6
                                else:
                                    if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3201 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3201] = 26
                                    mem[_3201 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4262 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4394 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4437 = mem[_4394]
                                        require mem[_4394] <= 4294967296
                                        require mem[_4394] + 32 <= return_data.size
                                        require mem[_4394 + mem[_4394]] <= 4294967296 and mem[_4394] + (32 * mem[_4394 + mem[_4394]]) + 32 <= return_data.size
                                        mem[_4394 + ceil32(return_data.size)] = mem[_4394 + mem[_4394]]
                                        _4569 = mem[_4394 + _4437]
                                        mem[_4394 + ceil32(return_data.size) + 32 len floor32(mem[_4394 + _4437])] = mem[_4394 + _4437 + 32 len floor32(mem[_4394 + _4437])]
                                        mem[64] = (32 * _4569) + _4394 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4394 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_4394 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                   0 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4262 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5677 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5779 = mem[_5677]
                                        require mem[_5677] <= 4294967296
                                        require mem[_5677] + 32 <= return_data.size
                                        require mem[_5677 + mem[_5677]] <= 4294967296 and mem[_5677] + (32 * mem[_5677 + mem[_5677]]) + 32 <= return_data.size
                                        mem[_5677 + ceil32(return_data.size)] = mem[_5677 + mem[_5677]]
                                        _5997 = mem[_5677 + _5779]
                                        mem[_5677 + ceil32(return_data.size) + 32 len floor32(mem[_5677 + _5779])] = mem[_5677 + _5779 + 32 len floor32(mem[_5677 + _5779])]
                                        mem[64] = (32 * _5997) + _5677 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5677 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_5677 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                   0 / arg3 / 100 * 10^6
                else:
                    if arg4 <= 2:
                        if arg4 == 1:
                            _2577 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2577] = 30
                            mem[_2577 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[32] > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg3 - ext_call.return_data[32]:
                                _2953 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2953] = 26
                                mem[_2953 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _4120 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4229 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4266 = mem[_4229]
                                    require mem[_4229] <= 4294967296
                                    require mem[_4229] + 32 <= return_data.size
                                    require mem[_4229 + mem[_4229]] <= 4294967296 and mem[_4229] + (32 * mem[_4229 + mem[_4229]]) + 32 <= return_data.size
                                    mem[_4229 + ceil32(return_data.size)] = mem[_4229 + mem[_4229]]
                                    _4398 = mem[_4229 + _4266]
                                    mem[_4229 + ceil32(return_data.size) + 32 len floor32(mem[_4229 + _4266])] = mem[_4229 + _4266 + 32 len floor32(mem[_4229 + _4266])]
                                    mem[64] = (32 * _4398) + _4229 + ceil32(return_data.size) + 32
                                    if 0 < mem[_4229 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                               mem[_4229 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0 / ext_call.return_data[32],
                                               0 / arg3 / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4120 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5684 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5793 = mem[_5684]
                                    require mem[_5684] <= 4294967296
                                    require mem[_5684] + 32 <= return_data.size
                                    require mem[_5684 + mem[_5684]] <= 4294967296 and mem[_5684] + (32 * mem[_5684 + mem[_5684]]) + 32 <= return_data.size
                                    mem[_5684 + ceil32(return_data.size)] = mem[_5684 + mem[_5684]]
                                    _6004 = mem[_5684 + _5793]
                                    mem[_5684 + ceil32(return_data.size) + 32 len floor32(mem[_5684 + _5793])] = mem[_5684 + _5793 + 32 len floor32(mem[_5684 + _5793])]
                                    mem[64] = (32 * _6004) + _5684 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5684 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                               mem[_5684 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0 / ext_call.return_data[32],
                                               0 / arg3 / 100 * 10^6
                            else:
                                if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _3069 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3069] = 26
                                mem[_3069 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _4191 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4311 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4350 = mem[_4311]
                                    require mem[_4311] <= 4294967296
                                    require mem[_4311] + 32 <= return_data.size
                                    require mem[_4311 + mem[_4311]] <= 4294967296 and mem[_4311] + (32 * mem[_4311 + mem[_4311]]) + 32 <= return_data.size
                                    mem[_4311 + ceil32(return_data.size)] = mem[_4311 + mem[_4311]]
                                    _4484 = mem[_4311 + _4350]
                                    mem[_4311 + ceil32(return_data.size) + 32 len floor32(mem[_4311 + _4350])] = mem[_4311 + _4350 + 32 len floor32(mem[_4311 + _4350])]
                                    mem[64] = (32 * _4484) + _4311 + ceil32(return_data.size) + 32
                                    if 0 < mem[_4311 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                               mem[_4311 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                               0 / arg3 / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4191 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5683 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5791 = mem[_5683]
                                    require mem[_5683] <= 4294967296
                                    require mem[_5683] + 32 <= return_data.size
                                    require mem[_5683 + mem[_5683]] <= 4294967296 and mem[_5683] + (32 * mem[_5683 + mem[_5683]]) + 32 <= return_data.size
                                    mem[_5683 + ceil32(return_data.size)] = mem[_5683 + mem[_5683]]
                                    _6003 = mem[_5683 + _5791]
                                    mem[_5683 + ceil32(return_data.size) + 32 len floor32(mem[_5683 + _5791])] = mem[_5683 + _5791 + 32 len floor32(mem[_5683 + _5791])]
                                    mem[64] = (32 * _6003) + _5683 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5683 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                               mem[_5683 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                               0 / arg3 / 100 * 10^6
                        else:
                            if arg3 >= ext_call.return_data[32]:
                                if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                _2948 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3143 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3205 = mem[_3143]
                                    require mem[_3143] <= 4294967296
                                    require mem[_3143] + 32 <= return_data.size
                                    require mem[_3143 + mem[_3143]] <= 4294967296 and mem[_3143] + (32 * mem[_3143 + mem[_3143]]) + 32 <= return_data.size
                                    mem[_3143 + ceil32(return_data.size)] = mem[_3143 + mem[_3143]]
                                    _3466 = mem[_3143 + _3205]
                                    mem[_3143 + ceil32(return_data.size) + 32 len floor32(mem[_3143 + _3205])] = mem[_3143 + _3205 + 32 len floor32(mem[_3143 + _3205])]
                                    mem[64] = (32 * _3466) + _3143 + ceil32(return_data.size) + 32
                                    if 0 < mem[_3143 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                               mem[_3143 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0,
                                               0 / arg3 / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2948 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5679 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5783 = mem[_5679]
                                    require mem[_5679] <= 4294967296
                                    require mem[_5679] + 32 <= return_data.size
                                    require mem[_5679 + mem[_5679]] <= 4294967296 and mem[_5679] + (32 * mem[_5679 + mem[_5679]]) + 32 <= return_data.size
                                    mem[_5679 + ceil32(return_data.size)] = mem[_5679 + mem[_5679]]
                                    _5999 = mem[_5679 + _5783]
                                    mem[_5679 + ceil32(return_data.size) + 32 len floor32(mem[_5679 + _5783])] = mem[_5679 + _5783 + 32 len floor32(mem[_5679 + _5783])]
                                    mem[64] = (32 * _5999) + _5679 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5679 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                               mem[_5679 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0,
                                               0 / arg3 / 100 * 10^6
                            else:
                                if arg4 <= 2:
                                    if arg4 != 2:
                                        if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _3068 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3294 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3371 = mem[_3294]
                                            require mem[_3294] <= 4294967296
                                            require mem[_3294] + 32 <= return_data.size
                                            require mem[_3294 + mem[_3294]] <= 4294967296 and mem[_3294] + (32 * mem[_3294 + mem[_3294]]) + 32 <= return_data.size
                                            mem[_3294 + ceil32(return_data.size)] = mem[_3294 + mem[_3294]]
                                            _3659 = mem[_3294 + _3371]
                                            mem[_3294 + ceil32(return_data.size) + 32 len floor32(mem[_3294 + _3371])] = mem[_3294 + _3371 + 32 len floor32(mem[_3294 + _3371])]
                                            mem[64] = (32 * _3659) + _3294 + ceil32(return_data.size) + 32
                                            if 0 < mem[_3294 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_3294 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0,
                                                       0 / arg3 / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _3068 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5680 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5785 = mem[_5680]
                                            require mem[_5680] <= 4294967296
                                            require mem[_5680] + 32 <= return_data.size
                                            require mem[_5680 + mem[_5680]] <= 4294967296 and mem[_5680] + (32 * mem[_5680 + mem[_5680]]) + 32 <= return_data.size
                                            mem[_5680 + ceil32(return_data.size)] = mem[_5680 + mem[_5680]]
                                            _6000 = mem[_5680 + _5785]
                                            mem[_5680 + ceil32(return_data.size) + 32 len floor32(mem[_5680 + _5785])] = mem[_5680 + _5785 + 32 len floor32(mem[_5680 + _5785])]
                                            mem[64] = (32 * _6000) + _5680 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5680 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_5680 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0,
                                                       0 / arg3 / 100 * 10^6
                                    else:
                                        _2649 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2649] = 30
                                        mem[_2649 + 32] = 'SafeMath: subtraction overflow'
                                        if arg3 > ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not ext_call.return_data[32] - arg3:
                                            _3207 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3207] = 26
                                            mem[_3207 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[32]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _4265 = mem[64]
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                            mem[mem[64] + 36] = 64
                                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                                            if not sub_c8c6f7a6.length:
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4397 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4440 = mem[_4397]
                                                require mem[_4397] <= 4294967296
                                                require mem[_4397] + 32 <= return_data.size
                                                require mem[_4397 + mem[_4397]] <= 4294967296 and mem[_4397] + (32 * mem[_4397 + mem[_4397]]) + 32 <= return_data.size
                                                mem[_4397 + ceil32(return_data.size)] = mem[_4397 + mem[_4397]]
                                                _4572 = mem[_4397 + _4440]
                                                mem[_4397 + ceil32(return_data.size) + 32 len floor32(mem[_4397 + _4440])] = mem[_4397 + _4440 + 32 len floor32(mem[_4397 + _4440])]
                                                mem[64] = (32 * _4572) + _4397 + ceil32(return_data.size) + 32
                                                if 0 < mem[_4397 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                           mem[_4397 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0 / ext_call.return_data[32],
                                                           0 / arg3 / 100 * 10^6
                                            else:
                                                mem[0] = 9
                                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                idx = mem[64] + 100
                                                s = 0
                                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len _4265 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5682 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5789 = mem[_5682]
                                                require mem[_5682] <= 4294967296
                                                require mem[_5682] + 32 <= return_data.size
                                                require mem[_5682 + mem[_5682]] <= 4294967296 and mem[_5682] + (32 * mem[_5682 + mem[_5682]]) + 32 <= return_data.size
                                                mem[_5682 + ceil32(return_data.size)] = mem[_5682 + mem[_5682]]
                                                _6002 = mem[_5682 + _5789]
                                                mem[_5682 + ceil32(return_data.size) + 32 len floor32(mem[_5682 + _5789])] = mem[_5682 + _5789 + 32 len floor32(mem[_5682 + _5789])]
                                                mem[64] = (32 * _6002) + _5682 + ceil32(return_data.size) + 32
                                                if 0 < mem[_5682 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                           mem[_5682 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0 / ext_call.return_data[32],
                                                           0 / arg3 / 100 * 10^6
                                        else:
                                            if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3373 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3373] = 26
                                            mem[_3373 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[32]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _4349 = mem[64]
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                            mem[mem[64] + 36] = 64
                                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                                            if not sub_c8c6f7a6.length:
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4483 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4532 = mem[_4483]
                                                require mem[_4483] <= 4294967296
                                                require mem[_4483] + 32 <= return_data.size
                                                require mem[_4483 + mem[_4483]] <= 4294967296 and mem[_4483] + (32 * mem[_4483 + mem[_4483]]) + 32 <= return_data.size
                                                mem[_4483 + ceil32(return_data.size)] = mem[_4483 + mem[_4483]]
                                                _4662 = mem[_4483 + _4532]
                                                mem[_4483 + ceil32(return_data.size) + 32 len floor32(mem[_4483 + _4532])] = mem[_4483 + _4532 + 32 len floor32(mem[_4483 + _4532])]
                                                mem[64] = (32 * _4662) + _4483 + ceil32(return_data.size) + 32
                                                if 0 < mem[_4483 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                           mem[_4483 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                           0 / arg3 / 100 * 10^6
                                            else:
                                                mem[0] = 9
                                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                idx = mem[64] + 100
                                                s = 0
                                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len _4349 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5681 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5787 = mem[_5681]
                                                require mem[_5681] <= 4294967296
                                                require mem[_5681] + 32 <= return_data.size
                                                require mem[_5681 + mem[_5681]] <= 4294967296 and mem[_5681] + (32 * mem[_5681 + mem[_5681]]) + 32 <= return_data.size
                                                mem[_5681 + ceil32(return_data.size)] = mem[_5681 + mem[_5681]]
                                                _6001 = mem[_5681 + _5787]
                                                mem[_5681 + ceil32(return_data.size) + 32 len floor32(mem[_5681 + _5787])] = mem[_5681 + _5787 + 32 len floor32(mem[_5681 + _5787])]
                                                mem[64] = (32 * _6001) + _5681 + ceil32(return_data.size) + 32
                                                if 0 < mem[_5681 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                           mem[_5681 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                           0 / arg3 / 100 * 10^6
            else:
                if impliedVolRate * t * arg2 / t * arg2 != impliedVolRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not impliedVolRate * t * arg2:
                    _2483 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2483] = 26
                    mem[_2483 + 32] = 'SafeMath: division by zero'
                    if not arg3:
                        revert with 0, 'SafeMath: division by zero'
                    _2561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2561] = 26
                    mem[_2561 + 32] = 'SafeMath: division by zero'
                    if arg3 <= ext_call.return_data[32]:
                        if arg3 >= ext_call.return_data[32]:
                            if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            _2938 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3134 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3190 = mem[_3134]
                                require mem[_3134] <= 4294967296
                                require mem[_3134] + 32 <= return_data.size
                                require mem[_3134 + mem[_3134]] <= 4294967296 and mem[_3134] + (32 * mem[_3134 + mem[_3134]]) + 32 <= return_data.size
                                mem[_3134 + ceil32(return_data.size)] = mem[_3134 + mem[_3134]]
                                _3454 = mem[_3134 + _3190]
                                mem[_3134 + ceil32(return_data.size) + 32 len floor32(mem[_3134 + _3190])] = mem[_3134 + _3190 + 32 len floor32(mem[_3134 + _3190])]
                                mem[64] = (32 * _3454) + _3134 + ceil32(return_data.size) + 32
                                if 0 < mem[_3134 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                           mem[_3134 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / arg3 / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2938 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5665 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5755 = mem[_5665]
                                require mem[_5665] <= 4294967296
                                require mem[_5665] + 32 <= return_data.size
                                require mem[_5665 + mem[_5665]] <= 4294967296 and mem[_5665] + (32 * mem[_5665 + mem[_5665]]) + 32 <= return_data.size
                                mem[_5665 + ceil32(return_data.size)] = mem[_5665 + mem[_5665]]
                                _5985 = mem[_5665 + _5755]
                                mem[_5665 + ceil32(return_data.size) + 32 len floor32(mem[_5665 + _5755])] = mem[_5665 + _5755 + 32 len floor32(mem[_5665 + _5755])]
                                mem[64] = (32 * _5985) + _5665 + ceil32(return_data.size) + 32
                                if 0 < mem[_5665 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                           mem[_5665 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / arg3 / 100 * 10^6
                        else:
                            if arg4 <= 2:
                                if arg4 != 2:
                                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _3058 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3285 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3350 = mem[_3285]
                                        require mem[_3285] <= 4294967296
                                        require mem[_3285] + 32 <= return_data.size
                                        require mem[_3285 + mem[_3285]] <= 4294967296 and mem[_3285] + (32 * mem[_3285 + mem[_3285]]) + 32 <= return_data.size
                                        mem[_3285 + ceil32(return_data.size)] = mem[_3285 + mem[_3285]]
                                        _3641 = mem[_3285 + _3350]
                                        mem[_3285 + ceil32(return_data.size) + 32 len floor32(mem[_3285 + _3350])] = mem[_3285 + _3350 + 32 len floor32(mem[_3285 + _3350])]
                                        mem[64] = (32 * _3641) + _3285 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3285 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_3285 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3058 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5666 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5757 = mem[_5666]
                                        require mem[_5666] <= 4294967296
                                        require mem[_5666] + 32 <= return_data.size
                                        require mem[_5666 + mem[_5666]] <= 4294967296 and mem[_5666] + (32 * mem[_5666 + mem[_5666]]) + 32 <= return_data.size
                                        mem[_5666 + ceil32(return_data.size)] = mem[_5666 + mem[_5666]]
                                        _5986 = mem[_5666 + _5757]
                                        mem[_5666 + ceil32(return_data.size) + 32 len floor32(mem[_5666 + _5757])] = mem[_5666 + _5757 + 32 len floor32(mem[_5666 + _5757])]
                                        mem[64] = (32 * _5986) + _5666 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5666 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_5666 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / arg3 / 100 * 10^6
                                else:
                                    _2638 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2638] = 30
                                    mem[_2638 + 32] = 'SafeMath: subtraction overflow'
                                    if arg3 > ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not ext_call.return_data[32] - arg3:
                                        _3192 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3192] = 26
                                        mem[_3192 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4258 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4390 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4431 = mem[_4390]
                                            require mem[_4390] <= 4294967296
                                            require mem[_4390] + 32 <= return_data.size
                                            require mem[_4390 + mem[_4390]] <= 4294967296 and mem[_4390] + (32 * mem[_4390 + mem[_4390]]) + 32 <= return_data.size
                                            mem[_4390 + ceil32(return_data.size)] = mem[_4390 + mem[_4390]]
                                            _4564 = mem[_4390 + _4431]
                                            mem[_4390 + ceil32(return_data.size) + 32 len floor32(mem[_4390 + _4431])] = mem[_4390 + _4431 + 32 len floor32(mem[_4390 + _4431])]
                                            mem[64] = (32 * _4564) + _4390 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4390 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_4390 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       0 / arg3 / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4258 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5668 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5761 = mem[_5668]
                                            require mem[_5668] <= 4294967296
                                            require mem[_5668] + 32 <= return_data.size
                                            require mem[_5668 + mem[_5668]] <= 4294967296 and mem[_5668] + (32 * mem[_5668 + mem[_5668]]) + 32 <= return_data.size
                                            mem[_5668 + ceil32(return_data.size)] = mem[_5668 + mem[_5668]]
                                            _5988 = mem[_5668 + _5761]
                                            mem[_5668 + ceil32(return_data.size) + 32 len floor32(mem[_5668 + _5761])] = mem[_5668 + _5761 + 32 len floor32(mem[_5668 + _5761])]
                                            mem[64] = (32 * _5988) + _5668 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5668 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_5668 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       0 / arg3 / 100 * 10^6
                                    else:
                                        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3352 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3352] = 26
                                        mem[_3352 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4341 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4477 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4525 = mem[_4477]
                                            require mem[_4477] <= 4294967296
                                            require mem[_4477] + 32 <= return_data.size
                                            require mem[_4477 + mem[_4477]] <= 4294967296 and mem[_4477] + (32 * mem[_4477 + mem[_4477]]) + 32 <= return_data.size
                                            mem[_4477 + ceil32(return_data.size)] = mem[_4477 + mem[_4477]]
                                            _4650 = mem[_4477 + _4525]
                                            mem[_4477 + ceil32(return_data.size) + 32 len floor32(mem[_4477 + _4525])] = mem[_4477 + _4525 + 32 len floor32(mem[_4477 + _4525])]
                                            mem[64] = (32 * _4650) + _4477 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4477 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_4477 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       0 / arg3 / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4341 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5667 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5759 = mem[_5667]
                                            require mem[_5667] <= 4294967296
                                            require mem[_5667] + 32 <= return_data.size
                                            require mem[_5667 + mem[_5667]] <= 4294967296 and mem[_5667] + (32 * mem[_5667 + mem[_5667]]) + 32 <= return_data.size
                                            mem[_5667 + ceil32(return_data.size)] = mem[_5667 + mem[_5667]]
                                            _5987 = mem[_5667 + _5759]
                                            mem[_5667 + ceil32(return_data.size) + 32 len floor32(mem[_5667 + _5759])] = mem[_5667 + _5759 + 32 len floor32(mem[_5667 + _5759])]
                                            mem[64] = (32 * _5987) + _5667 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5667 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                       mem[_5667 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       0 / arg3 / 100 * 10^6
                    else:
                        if arg4 <= 2:
                            if arg4 == 1:
                                _2593 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2593] = 30
                                mem[_2593 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[32] > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg3 - ext_call.return_data[32]:
                                    _3064 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3064] = 26
                                    mem[_3064 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4185 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4305 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4345 = mem[_4305]
                                        require mem[_4305] <= 4294967296
                                        require mem[_4305] + 32 <= return_data.size
                                        require mem[_4305 + mem[_4305]] <= 4294967296 and mem[_4305] + (32 * mem[_4305 + mem[_4305]]) + 32 <= return_data.size
                                        mem[_4305 + ceil32(return_data.size)] = mem[_4305 + mem[_4305]]
                                        _4481 = mem[_4305 + _4345]
                                        mem[_4305 + ceil32(return_data.size) + 32 len floor32(mem[_4305 + _4345])] = mem[_4305 + _4345 + 32 len floor32(mem[_4305 + _4345])]
                                        mem[64] = (32 * _4481) + _4305 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4305 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_4305 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   0 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4185 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5674 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5773 = mem[_5674]
                                        require mem[_5674] <= 4294967296
                                        require mem[_5674] + 32 <= return_data.size
                                        require mem[_5674 + mem[_5674]] <= 4294967296 and mem[_5674] + (32 * mem[_5674 + mem[_5674]]) + 32 <= return_data.size
                                        mem[_5674 + ceil32(return_data.size)] = mem[_5674 + mem[_5674]]
                                        _5994 = mem[_5674 + _5773]
                                        mem[_5674 + ceil32(return_data.size) + 32 len floor32(mem[_5674 + _5773])] = mem[_5674 + _5773 + 32 len floor32(mem[_5674 + _5773])]
                                        mem[64] = (32 * _5994) + _5674 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5674 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_5674 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   0 / arg3 / 100 * 10^6
                                else:
                                    if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3194 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3194] = 26
                                    mem[_3194 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4261 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4393 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4434 = mem[_4393]
                                        require mem[_4393] <= 4294967296
                                        require mem[_4393] + 32 <= return_data.size
                                        require mem[_4393 + mem[_4393]] <= 4294967296 and mem[_4393] + (32 * mem[_4393 + mem[_4393]]) + 32 <= return_data.size
                                        mem[_4393 + ceil32(return_data.size)] = mem[_4393 + mem[_4393]]
                                        _4566 = mem[_4393 + _4434]
                                        mem[_4393 + ceil32(return_data.size) + 32 len floor32(mem[_4393 + _4434])] = mem[_4393 + _4434 + 32 len floor32(mem[_4393 + _4434])]
                                        mem[64] = (32 * _4566) + _4393 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4393 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_4393 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                                   0 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4261 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5673 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5771 = mem[_5673]
                                        require mem[_5673] <= 4294967296
                                        require mem[_5673] + 32 <= return_data.size
                                        require mem[_5673 + mem[_5673]] <= 4294967296 and mem[_5673] + (32 * mem[_5673 + mem[_5673]]) + 32 <= return_data.size
                                        mem[_5673 + ceil32(return_data.size)] = mem[_5673 + mem[_5673]]
                                        _5993 = mem[_5673 + _5771]
                                        mem[_5673 + ceil32(return_data.size) + 32 len floor32(mem[_5673 + _5771])] = mem[_5673 + _5771 + 32 len floor32(mem[_5673 + _5771])]
                                        mem[64] = (32 * _5993) + _5673 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5673 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_5673 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                                   0 / arg3 / 100 * 10^6
                            else:
                                if arg3 >= ext_call.return_data[32]:
                                    if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _3059 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3286 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3356 = mem[_3286]
                                        require mem[_3286] <= 4294967296
                                        require mem[_3286] + 32 <= return_data.size
                                        require mem[_3286 + mem[_3286]] <= 4294967296 and mem[_3286] + (32 * mem[_3286 + mem[_3286]]) + 32 <= return_data.size
                                        mem[_3286 + ceil32(return_data.size)] = mem[_3286 + mem[_3286]]
                                        _3645 = mem[_3286 + _3356]
                                        mem[_3286 + ceil32(return_data.size) + 32 len floor32(mem[_3286 + _3356])] = mem[_3286 + _3356 + 32 len floor32(mem[_3286 + _3356])]
                                        mem[64] = (32 * _3645) + _3286 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3286 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_3286 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3059 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5669 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5763 = mem[_5669]
                                        require mem[_5669] <= 4294967296
                                        require mem[_5669] + 32 <= return_data.size
                                        require mem[_5669 + mem[_5669]] <= 4294967296 and mem[_5669] + (32 * mem[_5669 + mem[_5669]]) + 32 <= return_data.size
                                        mem[_5669 + ceil32(return_data.size)] = mem[_5669 + mem[_5669]]
                                        _5989 = mem[_5669 + _5763]
                                        mem[_5669 + ceil32(return_data.size) + 32 len floor32(mem[_5669 + _5763])] = mem[_5669 + _5763 + 32 len floor32(mem[_5669 + _5763])]
                                        mem[64] = (32 * _5989) + _5669 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5669 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                   mem[_5669 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / arg3 / 100 * 10^6
                                else:
                                    if arg4 <= 2:
                                        if arg4 != 2:
                                            if 0 / arg3 / 100 * 10^6 < 0 / arg3 / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 / 100) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _3193 = mem[64]
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = (arg2 / 100) + (0 / arg3 / 100 * 10^6)
                                            mem[mem[64] + 36] = 64
                                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                                            if not sub_c8c6f7a6.length:
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args (arg2 / 100) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3456 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3545 = mem[_3456]
                                                require mem[_3456] <= 4294967296
                                                require mem[_3456] + 32 <= return_data.size
                                                require mem[_3456 + mem[_3456]] <= 4294967296 and mem[_3456] + (32 * mem[_3456 + mem[_3456]]) + 32 <= return_data.size
                                                mem[_3456 + ceil32(return_data.size)] = mem[_3456 + mem[_3456]]
                                                _3829 = mem[_3456 + _3545]
                                                mem[_3456 + ceil32(return_data.size) + 32 len floor32(mem[_3456 + _3545])] = mem[_3456 + _3545 + 32 len floor32(mem[_3456 + _3545])]
                                                mem[64] = (32 * _3829) + _3456 + ceil32(return_data.size) + 32
                                                if 0 < mem[_3456 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                           mem[_3456 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0,
                                                           0 / arg3 / 100 * 10^6
                                            else:
                                                mem[0] = 9
                                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                idx = mem[64] + 100
                                                s = 0
                                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len _3193 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5670 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5765 = mem[_5670]
                                                require mem[_5670] <= 4294967296
                                                require mem[_5670] + 32 <= return_data.size
                                                require mem[_5670 + mem[_5670]] <= 4294967296 and mem[_5670] + (32 * mem[_5670 + mem[_5670]]) + 32 <= return_data.size
                                                mem[_5670 + ceil32(return_data.size)] = mem[_5670 + mem[_5670]]
                                                _5990 = mem[_5670 + _5765]
                                                mem[_5670 + ceil32(return_data.size) + 32 len floor32(mem[_5670 + _5765])] = mem[_5670 + _5765 + 32 len floor32(mem[_5670 + _5765])]
                                                mem[64] = (32 * _5990) + _5670 + ceil32(return_data.size) + 32
                                                if 0 < mem[_5670 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (0 / arg3 / 100 * 10^6), 
                                                           mem[_5670 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0,
                                                           0 / arg3 / 100 * 10^6
                                        else:
                                            _2720 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2720] = 30
                                            mem[_2720 + 32] = 'SafeMath: subtraction overflow'
                                            if arg3 > ext_call.return_data[32]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not ext_call.return_data[32] - arg3:
                                                _3358 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3358] = 26
                                                mem[_3358 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _4344 = mem[64]
                                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                                mem[mem[64] + 36] = 64
                                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                                if not sub_c8c6f7a6.length:
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4480 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4528 = mem[_4480]
                                                    require mem[_4480] <= 4294967296
                                                    require mem[_4480] + 32 <= return_data.size
                                                    require mem[_4480 + mem[_4480]] <= 4294967296 and mem[_4480] + (32 * mem[_4480 + mem[_4480]]) + 32 <= return_data.size
                                                    mem[_4480 + ceil32(return_data.size)] = mem[_4480 + mem[_4480]]
                                                    _4653 = mem[_4480 + _4528]
                                                    mem[_4480 + ceil32(return_data.size) + 32 len floor32(mem[_4480 + _4528])] = mem[_4480 + _4528 + 32 len floor32(mem[_4480 + _4528])]
                                                    mem[64] = (32 * _4653) + _4480 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_4480 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                               mem[_4480 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               0 / ext_call.return_data[32],
                                                               0 / arg3 / 100 * 10^6
                                                else:
                                                    mem[0] = 9
                                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                    idx = mem[64] + 100
                                                    s = 0
                                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _4344 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5672 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5769 = mem[_5672]
                                                    require mem[_5672] <= 4294967296
                                                    require mem[_5672] + 32 <= return_data.size
                                                    require mem[_5672 + mem[_5672]] <= 4294967296 and mem[_5672] + (32 * mem[_5672 + mem[_5672]]) + 32 <= return_data.size
                                                    mem[_5672 + ceil32(return_data.size)] = mem[_5672 + mem[_5672]]
                                                    _5992 = mem[_5672 + _5769]
                                                    mem[_5672 + ceil32(return_data.size) + 32 len floor32(mem[_5672 + _5769])] = mem[_5672 + _5769 + 32 len floor32(mem[_5672 + _5769])]
                                                    mem[64] = (32 * _5992) + _5672 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_5672 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                               mem[_5672 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               0 / ext_call.return_data[32],
                                                               0 / arg3 / 100 * 10^6
                                            else:
                                                if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3547 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3547] = 26
                                                mem[_3547 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6) < 0 / arg3 / 100 * 10^6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _4433 = mem[64]
                                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6)
                                                mem[mem[64] + 36] = 64
                                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                                if not sub_c8c6f7a6.length:
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4565 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4620 = mem[_4565]
                                                    require mem[_4565] <= 4294967296
                                                    require mem[_4565] + 32 <= return_data.size
                                                    require mem[_4565 + mem[_4565]] <= 4294967296 and mem[_4565] + (32 * mem[_4565 + mem[_4565]]) + 32 <= return_data.size
                                                    mem[_4565 + ceil32(return_data.size)] = mem[_4565 + mem[_4565]]
                                                    _4735 = mem[_4565 + _4620]
                                                    mem[_4565 + ceil32(return_data.size) + 32 len floor32(mem[_4565 + _4620])] = mem[_4565 + _4620 + 32 len floor32(mem[_4565 + _4620])]
                                                    mem[64] = (32 * _4735) + _4565 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_4565 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                               mem[_4565 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                               0 / arg3 / 100 * 10^6
                                                else:
                                                    mem[0] = 9
                                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                    idx = mem[64] + 100
                                                    s = 0
                                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _4433 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5671 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5767 = mem[_5671]
                                                    require mem[_5671] <= 4294967296
                                                    require mem[_5671] + 32 <= return_data.size
                                                    require mem[_5671 + mem[_5671]] <= 4294967296 and mem[_5671] + (32 * mem[_5671 + mem[_5671]]) + 32 <= return_data.size
                                                    mem[_5671 + ceil32(return_data.size)] = mem[_5671 + mem[_5671]]
                                                    _5991 = mem[_5671 + _5767]
                                                    mem[_5671 + ceil32(return_data.size) + 32 len floor32(mem[_5671 + _5767])] = mem[_5671 + _5767 + 32 len floor32(mem[_5671 + _5767])]
                                                    mem[64] = (32 * _5991) + _5671 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_5671 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / arg3 / 100 * 10^6), 
                                                               mem[_5671 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                               0 / arg3 / 100 * 10^6
                else:
                    if ext_call.return_data[32] * impliedVolRate * t * arg2 / impliedVolRate * t * arg2 != ext_call.return_data[32]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2501] = 26
                    mem[_2501 + 32] = 'SafeMath: division by zero'
                    if not arg3:
                        revert with 0, 'SafeMath: division by zero'
                    _2571 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2571] = 26
                    mem[_2571 + 32] = 'SafeMath: division by zero'
                    if arg3 <= ext_call.return_data[32]:
                        if arg3 >= ext_call.return_data[32]:
                            if ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6 < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            _3049 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3277 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3341 = mem[_3277]
                                require mem[_3277] <= 4294967296
                                require mem[_3277] + 32 <= return_data.size
                                require mem[_3277 + mem[_3277]] <= 4294967296 and mem[_3277] + (32 * mem[_3277 + mem[_3277]]) + 32 <= return_data.size
                                mem[_3277 + ceil32(return_data.size)] = mem[_3277 + mem[_3277]]
                                _3633 = mem[_3277 + _3341]
                                mem[_3277 + ceil32(return_data.size) + 32 len floor32(mem[_3277 + _3341])] = mem[_3277 + _3341 + 32 len floor32(mem[_3277 + _3341])]
                                mem[64] = (32 * _3633) + _3277 + ceil32(return_data.size) + 32
                                if 0 < mem[_3277 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                           mem[_3277 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _3049 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5655 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5735 = mem[_5655]
                                require mem[_5655] <= 4294967296
                                require mem[_5655] + 32 <= return_data.size
                                require mem[_5655 + mem[_5655]] <= 4294967296 and mem[_5655] + (32 * mem[_5655 + mem[_5655]]) + 32 <= return_data.size
                                mem[_5655 + ceil32(return_data.size)] = mem[_5655 + mem[_5655]]
                                _5975 = mem[_5655 + _5735]
                                mem[_5655 + ceil32(return_data.size) + 32 len floor32(mem[_5655 + _5735])] = mem[_5655 + _5735 + 32 len floor32(mem[_5655 + _5735])]
                                mem[64] = (32 * _5975) + _5655 + ceil32(return_data.size) + 32
                                if 0 < mem[_5655 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                           mem[_5655 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                        else:
                            if arg4 <= 2:
                                if arg4 != 2:
                                    if ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6 < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _3183 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3447 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3524 = mem[_3447]
                                        require mem[_3447] <= 4294967296
                                        require mem[_3447] + 32 <= return_data.size
                                        require mem[_3447 + mem[_3447]] <= 4294967296 and mem[_3447] + (32 * mem[_3447 + mem[_3447]]) + 32 <= return_data.size
                                        mem[_3447 + ceil32(return_data.size)] = mem[_3447 + mem[_3447]]
                                        _3811 = mem[_3447 + _3524]
                                        mem[_3447 + ceil32(return_data.size) + 32 len floor32(mem[_3447 + _3524])] = mem[_3447 + _3524 + 32 len floor32(mem[_3447 + _3524])]
                                        mem[64] = (32 * _3811) + _3447 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3447 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                   mem[_3447 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3183 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5656 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5737 = mem[_5656]
                                        require mem[_5656] <= 4294967296
                                        require mem[_5656] + 32 <= return_data.size
                                        require mem[_5656 + mem[_5656]] <= 4294967296 and mem[_5656] + (32 * mem[_5656 + mem[_5656]]) + 32 <= return_data.size
                                        mem[_5656 + ceil32(return_data.size)] = mem[_5656 + mem[_5656]]
                                        _5976 = mem[_5656 + _5737]
                                        mem[_5656 + ceil32(return_data.size) + 32 len floor32(mem[_5656 + _5737])] = mem[_5656 + _5737 + 32 len floor32(mem[_5656 + _5737])]
                                        mem[64] = (32 * _5976) + _5656 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5656 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                   mem[_5656 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                else:
                                    _2709 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2709] = 30
                                    mem[_2709 + 32] = 'SafeMath: subtraction overflow'
                                    if arg3 > ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not ext_call.return_data[32] - arg3:
                                        _3343 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3343] = 26
                                        mem[_3343 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4337 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4473 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4519 = mem[_4473]
                                            require mem[_4473] <= 4294967296
                                            require mem[_4473] + 32 <= return_data.size
                                            require mem[_4473 + mem[_4473]] <= 4294967296 and mem[_4473] + (32 * mem[_4473 + mem[_4473]]) + 32 <= return_data.size
                                            mem[_4473 + ceil32(return_data.size)] = mem[_4473 + mem[_4473]]
                                            _4645 = mem[_4473 + _4519]
                                            mem[_4473 + ceil32(return_data.size) + 32 len floor32(mem[_4473 + _4519])] = mem[_4473 + _4519 + 32 len floor32(mem[_4473 + _4519])]
                                            mem[64] = (32 * _4645) + _4473 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4473 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                       mem[_4473 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4337 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5658 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5741 = mem[_5658]
                                            require mem[_5658] <= 4294967296
                                            require mem[_5658] + 32 <= return_data.size
                                            require mem[_5658 + mem[_5658]] <= 4294967296 and mem[_5658] + (32 * mem[_5658 + mem[_5658]]) + 32 <= return_data.size
                                            mem[_5658 + ceil32(return_data.size)] = mem[_5658 + mem[_5658]]
                                            _5978 = mem[_5658 + _5741]
                                            mem[_5658 + ceil32(return_data.size) + 32 len floor32(mem[_5658 + _5741])] = mem[_5658 + _5741 + 32 len floor32(mem[_5658 + _5741])]
                                            mem[64] = (32 * _5978) + _5658 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5658 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                       mem[_5658 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                    else:
                                        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3526 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3526] = 26
                                        mem[_3526 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4425 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4559 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4613 = mem[_4559]
                                            require mem[_4559] <= 4294967296
                                            require mem[_4559] + 32 <= return_data.size
                                            require mem[_4559 + mem[_4559]] <= 4294967296 and mem[_4559] + (32 * mem[_4559 + mem[_4559]]) + 32 <= return_data.size
                                            mem[_4559 + ceil32(return_data.size)] = mem[_4559 + mem[_4559]]
                                            _4723 = mem[_4559 + _4613]
                                            mem[_4559 + ceil32(return_data.size) + 32 len floor32(mem[_4559 + _4613])] = mem[_4559 + _4613 + 32 len floor32(mem[_4559 + _4613])]
                                            mem[64] = (32 * _4723) + _4559 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4559 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                       mem[_4559 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4425 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5657 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5739 = mem[_5657]
                                            require mem[_5657] <= 4294967296
                                            require mem[_5657] + 32 <= return_data.size
                                            require mem[_5657 + mem[_5657]] <= 4294967296 and mem[_5657] + (32 * mem[_5657 + mem[_5657]]) + 32 <= return_data.size
                                            mem[_5657 + ceil32(return_data.size)] = mem[_5657 + mem[_5657]]
                                            _5977 = mem[_5657 + _5739]
                                            mem[_5657 + ceil32(return_data.size) + 32 len floor32(mem[_5657 + _5739])] = mem[_5657 + _5739 + 32 len floor32(mem[_5657 + _5739])]
                                            mem[64] = (32 * _5977) + _5657 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5657 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                       mem[_5657 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                    else:
                        if arg4 <= 2:
                            if arg4 == 1:
                                _2635 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2635] = 30
                                mem[_2635 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[32] > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg3 - ext_call.return_data[32]:
                                    _3189 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3189] = 26
                                    mem[_3189 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4255 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4387 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4429 = mem[_4387]
                                        require mem[_4387] <= 4294967296
                                        require mem[_4387] + 32 <= return_data.size
                                        require mem[_4387 + mem[_4387]] <= 4294967296 and mem[_4387] + (32 * mem[_4387 + mem[_4387]]) + 32 <= return_data.size
                                        mem[_4387 + ceil32(return_data.size)] = mem[_4387 + mem[_4387]]
                                        _4563 = mem[_4387 + _4429]
                                        mem[_4387 + ceil32(return_data.size) + 32 len floor32(mem[_4387 + _4429])] = mem[_4387 + _4429 + 32 len floor32(mem[_4387 + _4429])]
                                        mem[64] = (32 * _4563) + _4387 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4387 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                   mem[_4387 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4255 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5664 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5753 = mem[_5664]
                                        require mem[_5664] <= 4294967296
                                        require mem[_5664] + 32 <= return_data.size
                                        require mem[_5664 + mem[_5664]] <= 4294967296 and mem[_5664] + (32 * mem[_5664 + mem[_5664]]) + 32 <= return_data.size
                                        mem[_5664 + ceil32(return_data.size)] = mem[_5664 + mem[_5664]]
                                        _5984 = mem[_5664 + _5753]
                                        mem[_5664 + ceil32(return_data.size) + 32 len floor32(mem[_5664 + _5753])] = mem[_5664 + _5753 + 32 len floor32(mem[_5664 + _5753])]
                                        mem[64] = (32 * _5984) + _5664 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5664 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                   mem[_5664 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                else:
                                    if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3345 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3345] = 26
                                    mem[_3345 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4340 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4476 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4522 = mem[_4476]
                                        require mem[_4476] <= 4294967296
                                        require mem[_4476] + 32 <= return_data.size
                                        require mem[_4476 + mem[_4476]] <= 4294967296 and mem[_4476] + (32 * mem[_4476 + mem[_4476]]) + 32 <= return_data.size
                                        mem[_4476 + ceil32(return_data.size)] = mem[_4476 + mem[_4476]]
                                        _4647 = mem[_4476 + _4522]
                                        mem[_4476 + ceil32(return_data.size) + 32 len floor32(mem[_4476 + _4522])] = mem[_4476 + _4522 + 32 len floor32(mem[_4476 + _4522])]
                                        mem[64] = (32 * _4647) + _4476 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4476 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                   mem[_4476 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4340 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5663 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5751 = mem[_5663]
                                        require mem[_5663] <= 4294967296
                                        require mem[_5663] + 32 <= return_data.size
                                        require mem[_5663 + mem[_5663]] <= 4294967296 and mem[_5663] + (32 * mem[_5663 + mem[_5663]]) + 32 <= return_data.size
                                        mem[_5663 + ceil32(return_data.size)] = mem[_5663 + mem[_5663]]
                                        _5983 = mem[_5663 + _5751]
                                        mem[_5663 + ceil32(return_data.size) + 32 len floor32(mem[_5663 + _5751])] = mem[_5663 + _5751 + 32 len floor32(mem[_5663 + _5751])]
                                        mem[64] = (32 * _5983) + _5663 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5663 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                   mem[_5663 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                            else:
                                if arg3 >= ext_call.return_data[32]:
                                    if ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6 < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _3184 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3448 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3530 = mem[_3448]
                                        require mem[_3448] <= 4294967296
                                        require mem[_3448] + 32 <= return_data.size
                                        require mem[_3448 + mem[_3448]] <= 4294967296 and mem[_3448] + (32 * mem[_3448 + mem[_3448]]) + 32 <= return_data.size
                                        mem[_3448 + ceil32(return_data.size)] = mem[_3448 + mem[_3448]]
                                        _3815 = mem[_3448 + _3530]
                                        mem[_3448 + ceil32(return_data.size) + 32 len floor32(mem[_3448 + _3530])] = mem[_3448 + _3530 + 32 len floor32(mem[_3448 + _3530])]
                                        mem[64] = (32 * _3815) + _3448 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3448 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                   mem[_3448 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3184 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5659 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5743 = mem[_5659]
                                        require mem[_5659] <= 4294967296
                                        require mem[_5659] + 32 <= return_data.size
                                        require mem[_5659 + mem[_5659]] <= 4294967296 and mem[_5659] + (32 * mem[_5659 + mem[_5659]]) + 32 <= return_data.size
                                        mem[_5659 + ceil32(return_data.size)] = mem[_5659 + mem[_5659]]
                                        _5979 = mem[_5659 + _5743]
                                        mem[_5659 + ceil32(return_data.size) + 32 len floor32(mem[_5659 + _5743])] = mem[_5659 + _5743 + 32 len floor32(mem[_5659 + _5743])]
                                        mem[64] = (32 * _5979) + _5659 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5659 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                   mem[_5659 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                else:
                                    if arg4 <= 2:
                                        if arg4 != 2:
                                            if ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6 < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _3344 = mem[64]
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                            mem[mem[64] + 36] = 64
                                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                                            if not sub_c8c6f7a6.length:
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3635 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3722 = mem[_3635]
                                                require mem[_3635] <= 4294967296
                                                require mem[_3635] + 32 <= return_data.size
                                                require mem[_3635 + mem[_3635]] <= 4294967296 and mem[_3635] + (32 * mem[_3635 + mem[_3635]]) + 32 <= return_data.size
                                                mem[_3635 + ceil32(return_data.size)] = mem[_3635 + mem[_3635]]
                                                _3966 = mem[_3635 + _3722]
                                                mem[_3635 + ceil32(return_data.size) + 32 len floor32(mem[_3635 + _3722])] = mem[_3635 + _3722 + 32 len floor32(mem[_3635 + _3722])]
                                                mem[64] = (32 * _3966) + _3635 + ceil32(return_data.size) + 32
                                                if 0 < mem[_3635 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                           mem[_3635 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0,
                                                           ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                            else:
                                                mem[0] = 9
                                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                idx = mem[64] + 100
                                                s = 0
                                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len _3344 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5660 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5745 = mem[_5660]
                                                require mem[_5660] <= 4294967296
                                                require mem[_5660] + 32 <= return_data.size
                                                require mem[_5660 + mem[_5660]] <= 4294967296 and mem[_5660] + (32 * mem[_5660 + mem[_5660]]) + 32 <= return_data.size
                                                mem[_5660 + ceil32(return_data.size)] = mem[_5660 + mem[_5660]]
                                                _5980 = mem[_5660 + _5745]
                                                mem[_5660 + ceil32(return_data.size) + 32 len floor32(mem[_5660 + _5745])] = mem[_5660 + _5745 + 32 len floor32(mem[_5660 + _5745])]
                                                mem[64] = (32 * _5980) + _5660 + ceil32(return_data.size) + 32
                                                if 0 < mem[_5660 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                           mem[_5660 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0,
                                                           ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                        else:
                                            _2816 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2816] = 30
                                            mem[_2816 + 32] = 'SafeMath: subtraction overflow'
                                            if arg3 > ext_call.return_data[32]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not ext_call.return_data[32] - arg3:
                                                _3532 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3532] = 26
                                                mem[_3532 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _4428 = mem[64]
                                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                                mem[mem[64] + 36] = 64
                                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                                if not sub_c8c6f7a6.length:
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4562 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4616 = mem[_4562]
                                                    require mem[_4562] <= 4294967296
                                                    require mem[_4562] + 32 <= return_data.size
                                                    require mem[_4562 + mem[_4562]] <= 4294967296 and mem[_4562] + (32 * mem[_4562 + mem[_4562]]) + 32 <= return_data.size
                                                    mem[_4562 + ceil32(return_data.size)] = mem[_4562 + mem[_4562]]
                                                    _4726 = mem[_4562 + _4616]
                                                    mem[_4562 + ceil32(return_data.size) + 32 len floor32(mem[_4562 + _4616])] = mem[_4562 + _4616 + 32 len floor32(mem[_4562 + _4616])]
                                                    mem[64] = (32 * _4726) + _4562 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_4562 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                               mem[_4562 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               0 / ext_call.return_data[32],
                                                               ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                                else:
                                                    mem[0] = 9
                                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                    idx = mem[64] + 100
                                                    s = 0
                                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _4428 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5662 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5749 = mem[_5662]
                                                    require mem[_5662] <= 4294967296
                                                    require mem[_5662] + 32 <= return_data.size
                                                    require mem[_5662 + mem[_5662]] <= 4294967296 and mem[_5662] + (32 * mem[_5662 + mem[_5662]]) + 32 <= return_data.size
                                                    mem[_5662 + ceil32(return_data.size)] = mem[_5662 + mem[_5662]]
                                                    _5982 = mem[_5662 + _5749]
                                                    mem[_5662 + ceil32(return_data.size) + 32 len floor32(mem[_5662 + _5749])] = mem[_5662 + _5749 + 32 len floor32(mem[_5662 + _5749])]
                                                    mem[64] = (32 * _5982) + _5662 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_5662 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                               mem[_5662 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               0 / ext_call.return_data[32],
                                                               ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                            else:
                                                if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3724 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3724] = 26
                                                mem[_3724 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6) < ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _4521 = mem[64]
                                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6)
                                                mem[mem[64] + 36] = 64
                                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                                if not sub_c8c6f7a6.length:
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4646 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4702 = mem[_4646]
                                                    require mem[_4646] <= 4294967296
                                                    require mem[_4646] + 32 <= return_data.size
                                                    require mem[_4646 + mem[_4646]] <= 4294967296 and mem[_4646] + (32 * mem[_4646 + mem[_4646]]) + 32 <= return_data.size
                                                    mem[_4646 + ceil32(return_data.size)] = mem[_4646 + mem[_4646]]
                                                    _4789 = mem[_4646 + _4702]
                                                    mem[_4646 + ceil32(return_data.size) + 32 len floor32(mem[_4646 + _4702])] = mem[_4646 + _4702 + 32 len floor32(mem[_4646 + _4702])]
                                                    mem[64] = (32 * _4789) + _4646 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_4646 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                               mem[_4646 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                               ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
                                                else:
                                                    mem[0] = 9
                                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                    idx = mem[64] + 100
                                                    s = 0
                                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _4521 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5661 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5747 = mem[_5661]
                                                    require mem[_5661] <= 4294967296
                                                    require mem[_5661] + 32 <= return_data.size
                                                    require mem[_5661 + mem[_5661]] <= 4294967296 and mem[_5661] + (32 * mem[_5661 + mem[_5661]]) + 32 <= return_data.size
                                                    mem[_5661 + ceil32(return_data.size)] = mem[_5661 + mem[_5661]]
                                                    _5981 = mem[_5661 + _5747]
                                                    mem[_5661 + ceil32(return_data.size) + 32 len floor32(mem[_5661 + _5747])] = mem[_5661 + _5747 + 32 len floor32(mem[_5661 + _5747])]
                                                    mem[64] = (32 * _5981) + _5661 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_5661 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6), 
                                                               mem[_5661 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                               ext_call.return_data[32] * impliedVolRate * t * arg2 / arg3 / 100 * 10^6
    else:
        s = (arg1 / 2) + 1
        t = arg1
        while s < t:
            _2430 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2430] = 26
            mem[_2430 + 32] = 'SafeMath: division by zero'
            if s:
                if s + (arg1 / s) < arg1 / s:
                    revert with 0, 'SafeMath: addition overflow'
                _2466 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2466] = 26
                mem[_2466 + 32] = 'SafeMath: division by zero'
                s = s + (arg1 / s) / 2
                t = s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _2430 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        if not arg2:
            _2468 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2468] = 26
            mem[_2468 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            _2525 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2525] = 26
            mem[_2525 + 32] = 'SafeMath: division by zero'
            if arg3 <= ext_call.return_data[32]:
                if arg3 >= ext_call.return_data[32]:
                    if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                        revert with 0, 'SafeMath: addition overflow'
                    _2770 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                    if not sub_c8c6f7a6.length:
                        require ext_code.size(pangolinRouterAddress)
                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2919 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2989 = mem[_2919]
                        require mem[_2919] <= 4294967296
                        require mem[_2919] + 32 <= return_data.size
                        require mem[_2919 + mem[_2919]] <= 4294967296 and mem[_2919] + (32 * mem[_2919 + mem[_2919]]) + 32 <= return_data.size
                        mem[_2919 + ceil32(return_data.size)] = mem[_2919 + mem[_2919]]
                        _3177 = mem[_2919 + _2989]
                        mem[_2919 + ceil32(return_data.size) + 32 len floor32(mem[_2919 + _2989])] = mem[_2919 + _2989 + 32 len floor32(mem[_2919 + _2989])]
                        mem[64] = (32 * _3177) + _2919 + ceil32(return_data.size) + 32
                        if 0 < mem[_2919 + ceil32(return_data.size)]:
                            return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                   mem[_2919 + ceil32(return_data.size) + 32],
                                   arg2 / 100,
                                   0,
                                   0 / ext_call.return_data[32] / 100 * 10^6
                    else:
                        mem[0] = 9
                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                        idx = mem[64] + 100
                        s = 0
                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(pangolinRouterAddress)
                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2770 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5725 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5875 = mem[_5725]
                        require mem[_5725] <= 4294967296
                        require mem[_5725] + 32 <= return_data.size
                        require mem[_5725 + mem[_5725]] <= 4294967296 and mem[_5725] + (32 * mem[_5725 + mem[_5725]]) + 32 <= return_data.size
                        mem[_5725 + ceil32(return_data.size)] = mem[_5725 + mem[_5725]]
                        _6045 = mem[_5725 + _5875]
                        mem[_5725 + ceil32(return_data.size) + 32 len floor32(mem[_5725 + _5875])] = mem[_5725 + _5875 + 32 len floor32(mem[_5725 + _5875])]
                        mem[64] = (32 * _6045) + _5725 + ceil32(return_data.size) + 32
                        if 0 < mem[_5725 + ceil32(return_data.size)]:
                            return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                   mem[_5725 + ceil32(return_data.size) + 32],
                                   arg2 / 100,
                                   0,
                                   0 / ext_call.return_data[32] / 100 * 10^6
                else:
                    if arg4 <= 2:
                        if arg4 != 2:
                            if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            _2876 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3042 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3113 = mem[_3042]
                                require mem[_3042] <= 4294967296
                                require mem[_3042] + 32 <= return_data.size
                                require mem[_3042 + mem[_3042]] <= 4294967296 and mem[_3042] + (32 * mem[_3042 + mem[_3042]]) + 32 <= return_data.size
                                mem[_3042 + ceil32(return_data.size)] = mem[_3042 + mem[_3042]]
                                _3332 = mem[_3042 + _3113]
                                mem[_3042 + ceil32(return_data.size) + 32 len floor32(mem[_3042 + _3113])] = mem[_3042 + _3113 + 32 len floor32(mem[_3042 + _3113])]
                                mem[64] = (32 * _3332) + _3042 + ceil32(return_data.size) + 32
                                if 0 < mem[_3042 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_3042 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2876 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5726 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5877 = mem[_5726]
                                require mem[_5726] <= 4294967296
                                require mem[_5726] + 32 <= return_data.size
                                require mem[_5726 + mem[_5726]] <= 4294967296 and mem[_5726] + (32 * mem[_5726 + mem[_5726]]) + 32 <= return_data.size
                                mem[_5726 + ceil32(return_data.size)] = mem[_5726 + mem[_5726]]
                                _6046 = mem[_5726 + _5877]
                                mem[_5726 + ceil32(return_data.size) + 32 len floor32(mem[_5726 + _5877])] = mem[_5726 + _5877 + 32 len floor32(mem[_5726 + _5877])]
                                mem[64] = (32 * _6046) + _5726 + ceil32(return_data.size) + 32
                                if 0 < mem[_5726 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_5726 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / ext_call.return_data[32] / 100 * 10^6
                        else:
                            _2587 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2587] = 30
                            mem[_2587 + 32] = 'SafeMath: subtraction overflow'
                            if arg3 > ext_call.return_data[32]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_call.return_data[32] - arg3:
                                _2991 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2991] = 26
                                mem[_2991 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _4149 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4245 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4293 = mem[_4245]
                                    require mem[_4245] <= 4294967296
                                    require mem[_4245] + 32 <= return_data.size
                                    require mem[_4245 + mem[_4245]] <= 4294967296 and mem[_4245] + (32 * mem[_4245 + mem[_4245]]) + 32 <= return_data.size
                                    mem[_4245 + ceil32(return_data.size)] = mem[_4245 + mem[_4245]]
                                    _4420 = mem[_4245 + _4293]
                                    mem[_4245 + ceil32(return_data.size) + 32 len floor32(mem[_4245 + _4293])] = mem[_4245 + _4293 + 32 len floor32(mem[_4245 + _4293])]
                                    mem[64] = (32 * _4420) + _4245 + ceil32(return_data.size) + 32
                                    if 0 < mem[_4245 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_4245 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0 / ext_call.return_data[32],
                                               0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4149 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5728 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5881 = mem[_5728]
                                    require mem[_5728] <= 4294967296
                                    require mem[_5728] + 32 <= return_data.size
                                    require mem[_5728 + mem[_5728]] <= 4294967296 and mem[_5728] + (32 * mem[_5728 + mem[_5728]]) + 32 <= return_data.size
                                    mem[_5728 + ceil32(return_data.size)] = mem[_5728 + mem[_5728]]
                                    _6048 = mem[_5728 + _5881]
                                    mem[_5728 + ceil32(return_data.size) + 32 len floor32(mem[_5728 + _5881])] = mem[_5728 + _5881 + 32 len floor32(mem[_5728 + _5881])]
                                    mem[64] = (32 * _6048) + _5728 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5728 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_5728 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0 / ext_call.return_data[32],
                                               0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _3115 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3115] = 26
                                mem[_3115 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _4217 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4330 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4377 = mem[_4330]
                                    require mem[_4330] <= 4294967296
                                    require mem[_4330] + 32 <= return_data.size
                                    require mem[_4330 + mem[_4330]] <= 4294967296 and mem[_4330] + (32 * mem[_4330 + mem[_4330]]) + 32 <= return_data.size
                                    mem[_4330 + ceil32(return_data.size)] = mem[_4330 + mem[_4330]]
                                    _4511 = mem[_4330 + _4377]
                                    mem[_4330 + ceil32(return_data.size) + 32 len floor32(mem[_4330 + _4377])] = mem[_4330 + _4377 + 32 len floor32(mem[_4330 + _4377])]
                                    mem[64] = (32 * _4511) + _4330 + ceil32(return_data.size) + 32
                                    if 0 < mem[_4330 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_4330 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                               0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4217 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5727 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5879 = mem[_5727]
                                    require mem[_5727] <= 4294967296
                                    require mem[_5727] + 32 <= return_data.size
                                    require mem[_5727 + mem[_5727]] <= 4294967296 and mem[_5727] + (32 * mem[_5727 + mem[_5727]]) + 32 <= return_data.size
                                    mem[_5727 + ceil32(return_data.size)] = mem[_5727 + mem[_5727]]
                                    _6047 = mem[_5727 + _5879]
                                    mem[_5727 + ceil32(return_data.size) + 32 len floor32(mem[_5727 + _5879])] = mem[_5727 + _5879 + 32 len floor32(mem[_5727 + _5879])]
                                    mem[64] = (32 * _6047) + _5727 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5727 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_5727 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                               0 / ext_call.return_data[32] / 100 * 10^6
            else:
                if arg4 <= 2:
                    if arg4 == 1:
                        _2576 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2576] = 30
                        mem[_2576 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[32] > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg3 - ext_call.return_data[32]:
                            _2882 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2882] = 26
                            mem[_2882 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            _4070 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4172 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4221 = mem[_4172]
                                require mem[_4172] <= 4294967296
                                require mem[_4172] + 32 <= return_data.size
                                require mem[_4172 + mem[_4172]] <= 4294967296 and mem[_4172] + (32 * mem[_4172 + mem[_4172]]) + 32 <= return_data.size
                                mem[_4172 + ceil32(return_data.size)] = mem[_4172 + mem[_4172]]
                                _4334 = mem[_4172 + _4221]
                                mem[_4172 + ceil32(return_data.size) + 32 len floor32(mem[_4172 + _4221])] = mem[_4172 + _4221 + 32 len floor32(mem[_4172 + _4221])]
                                mem[64] = (32 * _4334) + _4172 + ceil32(return_data.size) + 32
                                if 0 < mem[_4172 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_4172 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0 / ext_call.return_data[32],
                                           0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4070 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5734 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5893 = mem[_5734]
                                require mem[_5734] <= 4294967296
                                require mem[_5734] + 32 <= return_data.size
                                require mem[_5734 + mem[_5734]] <= 4294967296 and mem[_5734] + (32 * mem[_5734 + mem[_5734]]) + 32 <= return_data.size
                                mem[_5734 + ceil32(return_data.size)] = mem[_5734 + mem[_5734]]
                                _6054 = mem[_5734 + _5893]
                                mem[_5734 + ceil32(return_data.size) + 32 len floor32(mem[_5734 + _5893])] = mem[_5734 + _5893 + 32 len floor32(mem[_5734 + _5893])]
                                mem[64] = (32 * _6054) + _5734 + ceil32(return_data.size) + 32
                                if 0 < mem[_5734 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_5734 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0 / ext_call.return_data[32],
                                           0 / ext_call.return_data[32] / 100 * 10^6
                        else:
                            if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2993 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2993] = 26
                            mem[_2993 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            _4152 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4248 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4296 = mem[_4248]
                                require mem[_4248] <= 4294967296
                                require mem[_4248] + 32 <= return_data.size
                                require mem[_4248 + mem[_4248]] <= 4294967296 and mem[_4248] + (32 * mem[_4248 + mem[_4248]]) + 32 <= return_data.size
                                mem[_4248 + ceil32(return_data.size)] = mem[_4248 + mem[_4248]]
                                _4422 = mem[_4248 + _4296]
                                mem[_4248 + ceil32(return_data.size) + 32 len floor32(mem[_4248 + _4296])] = mem[_4248 + _4296 + 32 len floor32(mem[_4248 + _4296])]
                                mem[64] = (32 * _4422) + _4248 + ceil32(return_data.size) + 32
                                if 0 < mem[_4248 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_4248 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                           0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4152 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5733 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5891 = mem[_5733]
                                require mem[_5733] <= 4294967296
                                require mem[_5733] + 32 <= return_data.size
                                require mem[_5733 + mem[_5733]] <= 4294967296 and mem[_5733] + (32 * mem[_5733 + mem[_5733]]) + 32 <= return_data.size
                                mem[_5733 + ceil32(return_data.size)] = mem[_5733 + mem[_5733]]
                                _6053 = mem[_5733 + _5891]
                                mem[_5733 + ceil32(return_data.size) + 32 len floor32(mem[_5733 + _5891])] = mem[_5733 + _5891 + 32 len floor32(mem[_5733 + _5891])]
                                mem[64] = (32 * _6053) + _5733 + ceil32(return_data.size) + 32
                                if 0 < mem[_5733 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_5733 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                           0 / ext_call.return_data[32] / 100 * 10^6
                    else:
                        if arg3 >= ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            _2877 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3043 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3119 = mem[_3043]
                                require mem[_3043] <= 4294967296
                                require mem[_3043] + 32 <= return_data.size
                                require mem[_3043 + mem[_3043]] <= 4294967296 and mem[_3043] + (32 * mem[_3043 + mem[_3043]]) + 32 <= return_data.size
                                mem[_3043 + ceil32(return_data.size)] = mem[_3043 + mem[_3043]]
                                _3336 = mem[_3043 + _3119]
                                mem[_3043 + ceil32(return_data.size) + 32 len floor32(mem[_3043 + _3119])] = mem[_3043 + _3119 + 32 len floor32(mem[_3043 + _3119])]
                                mem[64] = (32 * _3336) + _3043 + ceil32(return_data.size) + 32
                                if 0 < mem[_3043 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_3043 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2877 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5729 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5883 = mem[_5729]
                                require mem[_5729] <= 4294967296
                                require mem[_5729] + 32 <= return_data.size
                                require mem[_5729 + mem[_5729]] <= 4294967296 and mem[_5729] + (32 * mem[_5729 + mem[_5729]]) + 32 <= return_data.size
                                mem[_5729 + ceil32(return_data.size)] = mem[_5729 + mem[_5729]]
                                _6049 = mem[_5729 + _5883]
                                mem[_5729 + ceil32(return_data.size) + 32 len floor32(mem[_5729 + _5883])] = mem[_5729 + _5883 + 32 len floor32(mem[_5729 + _5883])]
                                mem[64] = (32 * _6049) + _5729 + ceil32(return_data.size) + 32
                                if 0 < mem[_5729 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_5729 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / ext_call.return_data[32] / 100 * 10^6
                        else:
                            if arg4 <= 2:
                                if arg4 != 2:
                                    if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _2992 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3179 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3267 = mem[_3179]
                                        require mem[_3179] <= 4294967296
                                        require mem[_3179] + 32 <= return_data.size
                                        require mem[_3179 + mem[_3179]] <= 4294967296 and mem[_3179] + (32 * mem[_3179 + mem[_3179]]) + 32 <= return_data.size
                                        mem[_3179 + ceil32(return_data.size)] = mem[_3179 + mem[_3179]]
                                        _3518 = mem[_3179 + _3267]
                                        mem[_3179 + ceil32(return_data.size) + 32 len floor32(mem[_3179 + _3267])] = mem[_3179 + _3267 + 32 len floor32(mem[_3179 + _3267])]
                                        mem[64] = (32 * _3518) + _3179 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3179 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_3179 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _2992 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5730 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5885 = mem[_5730]
                                        require mem[_5730] <= 4294967296
                                        require mem[_5730] + 32 <= return_data.size
                                        require mem[_5730 + mem[_5730]] <= 4294967296 and mem[_5730] + (32 * mem[_5730 + mem[_5730]]) + 32 <= return_data.size
                                        mem[_5730 + ceil32(return_data.size)] = mem[_5730 + mem[_5730]]
                                        _6050 = mem[_5730 + _5885]
                                        mem[_5730 + ceil32(return_data.size) + 32 len floor32(mem[_5730 + _5885])] = mem[_5730 + _5885 + 32 len floor32(mem[_5730 + _5885])]
                                        mem[64] = (32 * _6050) + _5730 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5730 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5730 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    _2624 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2624] = 30
                                    mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                                    if arg3 > ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not ext_call.return_data[32] - arg3:
                                        _3121 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3121] = 26
                                        mem[_3121 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4220 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4333 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4380 = mem[_4333]
                                            require mem[_4333] <= 4294967296
                                            require mem[_4333] + 32 <= return_data.size
                                            require mem[_4333 + mem[_4333]] <= 4294967296 and mem[_4333] + (32 * mem[_4333 + mem[_4333]]) + 32 <= return_data.size
                                            mem[_4333 + ceil32(return_data.size)] = mem[_4333 + mem[_4333]]
                                            _4514 = mem[_4333 + _4380]
                                            mem[_4333 + ceil32(return_data.size) + 32 len floor32(mem[_4333 + _4380])] = mem[_4333 + _4380 + 32 len floor32(mem[_4333 + _4380])]
                                            mem[64] = (32 * _4514) + _4333 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4333 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_4333 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4220 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5732 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5889 = mem[_5732]
                                            require mem[_5732] <= 4294967296
                                            require mem[_5732] + 32 <= return_data.size
                                            require mem[_5732 + mem[_5732]] <= 4294967296 and mem[_5732] + (32 * mem[_5732 + mem[_5732]]) + 32 <= return_data.size
                                            mem[_5732 + ceil32(return_data.size)] = mem[_5732 + mem[_5732]]
                                            _6052 = mem[_5732 + _5889]
                                            mem[_5732 + ceil32(return_data.size) + 32 len floor32(mem[_5732 + _5889])] = mem[_5732 + _5889 + 32 len floor32(mem[_5732 + _5889])]
                                            mem[64] = (32 * _6052) + _5732 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5732 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_5732 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3269 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3269] = 26
                                        mem[_3269 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4295 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4421 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4467 = mem[_4421]
                                            require mem[_4421] <= 4294967296
                                            require mem[_4421] + 32 <= return_data.size
                                            require mem[_4421 + mem[_4421]] <= 4294967296 and mem[_4421] + (32 * mem[_4421 + mem[_4421]]) + 32 <= return_data.size
                                            mem[_4421 + ceil32(return_data.size)] = mem[_4421 + mem[_4421]]
                                            _4608 = mem[_4421 + _4467]
                                            mem[_4421 + ceil32(return_data.size) + 32 len floor32(mem[_4421 + _4467])] = mem[_4421 + _4467 + 32 len floor32(mem[_4421 + _4467])]
                                            mem[64] = (32 * _4608) + _4421 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4421 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_4421 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4295 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5731 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5887 = mem[_5731]
                                            require mem[_5731] <= 4294967296
                                            require mem[_5731] + 32 <= return_data.size
                                            require mem[_5731 + mem[_5731]] <= 4294967296 and mem[_5731] + (32 * mem[_5731 + mem[_5731]]) + 32 <= return_data.size
                                            mem[_5731 + ceil32(return_data.size)] = mem[_5731 + mem[_5731]]
                                            _6051 = mem[_5731 + _5887]
                                            mem[_5731 + ceil32(return_data.size) + 32 len floor32(mem[_5731 + _5887])] = mem[_5731 + _5887 + 32 len floor32(mem[_5731 + _5887])]
                                            mem[64] = (32 * _6051) + _5731 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5731 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_5731 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       0 / ext_call.return_data[32] / 100 * 10^6
        else:
            if t * arg2 / arg2 != t:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not t * arg2:
                _2473 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2473] = 26
                mem[_2473 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                _2549 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2549] = 26
                mem[_2549 + 32] = 'SafeMath: division by zero'
                if arg3 <= ext_call.return_data[32]:
                    if arg3 >= ext_call.return_data[32]:
                        if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                            revert with 0, 'SafeMath: addition overflow'
                        _2867 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                        if not sub_c8c6f7a6.length:
                            require ext_code.size(pangolinRouterAddress)
                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3034 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3104 = mem[_3034]
                            require mem[_3034] <= 4294967296
                            require mem[_3034] + 32 <= return_data.size
                            require mem[_3034 + mem[_3034]] <= 4294967296 and mem[_3034] + (32 * mem[_3034 + mem[_3034]]) + 32 <= return_data.size
                            mem[_3034 + ceil32(return_data.size)] = mem[_3034 + mem[_3034]]
                            _3324 = mem[_3034 + _3104]
                            mem[_3034 + ceil32(return_data.size) + 32 len floor32(mem[_3034 + _3104])] = mem[_3034 + _3104 + 32 len floor32(mem[_3034 + _3104])]
                            mem[64] = (32 * _3324) + _3034 + ceil32(return_data.size) + 32
                            if 0 < mem[_3034 + ceil32(return_data.size)]:
                                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                       mem[_3034 + ceil32(return_data.size) + 32],
                                       arg2 / 100,
                                       0,
                                       0 / ext_call.return_data[32] / 100 * 10^6
                        else:
                            mem[0] = 9
                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                            idx = mem[64] + 100
                            s = 0
                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(pangolinRouterAddress)
                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2867 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5715 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5855 = mem[_5715]
                            require mem[_5715] <= 4294967296
                            require mem[_5715] + 32 <= return_data.size
                            require mem[_5715 + mem[_5715]] <= 4294967296 and mem[_5715] + (32 * mem[_5715 + mem[_5715]]) + 32 <= return_data.size
                            mem[_5715 + ceil32(return_data.size)] = mem[_5715 + mem[_5715]]
                            _6035 = mem[_5715 + _5855]
                            mem[_5715 + ceil32(return_data.size) + 32 len floor32(mem[_5715 + _5855])] = mem[_5715 + _5855 + 32 len floor32(mem[_5715 + _5855])]
                            mem[64] = (32 * _6035) + _5715 + ceil32(return_data.size) + 32
                            if 0 < mem[_5715 + ceil32(return_data.size)]:
                                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                       mem[_5715 + ceil32(return_data.size) + 32],
                                       arg2 / 100,
                                       0,
                                       0 / ext_call.return_data[32] / 100 * 10^6
                    else:
                        if arg4 <= 2:
                            if arg4 != 2:
                                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                _2982 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3170 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3246 = mem[_3170]
                                    require mem[_3170] <= 4294967296
                                    require mem[_3170] + 32 <= return_data.size
                                    require mem[_3170 + mem[_3170]] <= 4294967296 and mem[_3170] + (32 * mem[_3170 + mem[_3170]]) + 32 <= return_data.size
                                    mem[_3170 + ceil32(return_data.size)] = mem[_3170 + mem[_3170]]
                                    _3500 = mem[_3170 + _3246]
                                    mem[_3170 + ceil32(return_data.size) + 32 len floor32(mem[_3170 + _3246])] = mem[_3170 + _3246 + 32 len floor32(mem[_3170 + _3246])]
                                    mem[64] = (32 * _3500) + _3170 + ceil32(return_data.size) + 32
                                    if 0 < mem[_3170 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_3170 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0,
                                               0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2982 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5716 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5857 = mem[_5716]
                                    require mem[_5716] <= 4294967296
                                    require mem[_5716] + 32 <= return_data.size
                                    require mem[_5716 + mem[_5716]] <= 4294967296 and mem[_5716] + (32 * mem[_5716 + mem[_5716]]) + 32 <= return_data.size
                                    mem[_5716 + ceil32(return_data.size)] = mem[_5716 + mem[_5716]]
                                    _6036 = mem[_5716 + _5857]
                                    mem[_5716 + ceil32(return_data.size) + 32 len floor32(mem[_5716 + _5857])] = mem[_5716 + _5857 + 32 len floor32(mem[_5716 + _5857])]
                                    mem[64] = (32 * _6036) + _5716 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5716 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_5716 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0,
                                               0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                _2613 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2613] = 30
                                mem[_2613 + 32] = 'SafeMath: subtraction overflow'
                                if arg3 > ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[32] - arg3:
                                    _3106 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3106] = 26
                                    mem[_3106 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4213 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4326 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4371 = mem[_4326]
                                        require mem[_4326] <= 4294967296
                                        require mem[_4326] + 32 <= return_data.size
                                        require mem[_4326 + mem[_4326]] <= 4294967296 and mem[_4326] + (32 * mem[_4326 + mem[_4326]]) + 32 <= return_data.size
                                        mem[_4326 + ceil32(return_data.size)] = mem[_4326 + mem[_4326]]
                                        _4506 = mem[_4326 + _4371]
                                        mem[_4326 + ceil32(return_data.size) + 32 len floor32(mem[_4326 + _4371])] = mem[_4326 + _4371 + 32 len floor32(mem[_4326 + _4371])]
                                        mem[64] = (32 * _4506) + _4326 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4326 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_4326 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4213 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5718 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5861 = mem[_5718]
                                        require mem[_5718] <= 4294967296
                                        require mem[_5718] + 32 <= return_data.size
                                        require mem[_5718 + mem[_5718]] <= 4294967296 and mem[_5718] + (32 * mem[_5718 + mem[_5718]]) + 32 <= return_data.size
                                        mem[_5718 + ceil32(return_data.size)] = mem[_5718 + mem[_5718]]
                                        _6038 = mem[_5718 + _5861]
                                        mem[_5718 + ceil32(return_data.size) + 32 len floor32(mem[_5718 + _5861])] = mem[_5718 + _5861 + 32 len floor32(mem[_5718 + _5861])]
                                        mem[64] = (32 * _6038) + _5718 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5718 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5718 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3248 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3248] = 26
                                    mem[_3248 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4287 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4415 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4460 = mem[_4415]
                                        require mem[_4415] <= 4294967296
                                        require mem[_4415] + 32 <= return_data.size
                                        require mem[_4415 + mem[_4415]] <= 4294967296 and mem[_4415] + (32 * mem[_4415 + mem[_4415]]) + 32 <= return_data.size
                                        mem[_4415 + ceil32(return_data.size)] = mem[_4415 + mem[_4415]]
                                        _4596 = mem[_4415 + _4460]
                                        mem[_4415 + ceil32(return_data.size) + 32 len floor32(mem[_4415 + _4460])] = mem[_4415 + _4460 + 32 len floor32(mem[_4415 + _4460])]
                                        mem[64] = (32 * _4596) + _4415 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4415 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_4415 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4287 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5717 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5859 = mem[_5717]
                                        require mem[_5717] <= 4294967296
                                        require mem[_5717] + 32 <= return_data.size
                                        require mem[_5717 + mem[_5717]] <= 4294967296 and mem[_5717] + (32 * mem[_5717 + mem[_5717]]) + 32 <= return_data.size
                                        mem[_5717 + ceil32(return_data.size)] = mem[_5717 + mem[_5717]]
                                        _6037 = mem[_5717 + _5859]
                                        mem[_5717 + ceil32(return_data.size) + 32 len floor32(mem[_5717 + _5859])] = mem[_5717 + _5859 + 32 len floor32(mem[_5717 + _5859])]
                                        mem[64] = (32 * _6037) + _5717 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5717 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5717 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                else:
                    if arg4 <= 2:
                        if arg4 == 1:
                            _2584 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2584] = 30
                            mem[_2584 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[32] > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg3 - ext_call.return_data[32]:
                                _2988 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2988] = 26
                                mem[_2988 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _4146 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4242 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4291 = mem[_4242]
                                    require mem[_4242] <= 4294967296
                                    require mem[_4242] + 32 <= return_data.size
                                    require mem[_4242 + mem[_4242]] <= 4294967296 and mem[_4242] + (32 * mem[_4242 + mem[_4242]]) + 32 <= return_data.size
                                    mem[_4242 + ceil32(return_data.size)] = mem[_4242 + mem[_4242]]
                                    _4419 = mem[_4242 + _4291]
                                    mem[_4242 + ceil32(return_data.size) + 32 len floor32(mem[_4242 + _4291])] = mem[_4242 + _4291 + 32 len floor32(mem[_4242 + _4291])]
                                    mem[64] = (32 * _4419) + _4242 + ceil32(return_data.size) + 32
                                    if 0 < mem[_4242 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_4242 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0 / ext_call.return_data[32],
                                               0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4146 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5724 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5873 = mem[_5724]
                                    require mem[_5724] <= 4294967296
                                    require mem[_5724] + 32 <= return_data.size
                                    require mem[_5724 + mem[_5724]] <= 4294967296 and mem[_5724] + (32 * mem[_5724 + mem[_5724]]) + 32 <= return_data.size
                                    mem[_5724 + ceil32(return_data.size)] = mem[_5724 + mem[_5724]]
                                    _6044 = mem[_5724 + _5873]
                                    mem[_5724 + ceil32(return_data.size) + 32 len floor32(mem[_5724 + _5873])] = mem[_5724 + _5873 + 32 len floor32(mem[_5724 + _5873])]
                                    mem[64] = (32 * _6044) + _5724 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5724 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_5724 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0 / ext_call.return_data[32],
                                               0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _3108 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3108] = 26
                                mem[_3108 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _4216 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4329 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4374 = mem[_4329]
                                    require mem[_4329] <= 4294967296
                                    require mem[_4329] + 32 <= return_data.size
                                    require mem[_4329 + mem[_4329]] <= 4294967296 and mem[_4329] + (32 * mem[_4329 + mem[_4329]]) + 32 <= return_data.size
                                    mem[_4329 + ceil32(return_data.size)] = mem[_4329 + mem[_4329]]
                                    _4508 = mem[_4329 + _4374]
                                    mem[_4329 + ceil32(return_data.size) + 32 len floor32(mem[_4329 + _4374])] = mem[_4329 + _4374 + 32 len floor32(mem[_4329 + _4374])]
                                    mem[64] = (32 * _4508) + _4329 + ceil32(return_data.size) + 32
                                    if 0 < mem[_4329 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_4329 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                               0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4216 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5723 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5871 = mem[_5723]
                                    require mem[_5723] <= 4294967296
                                    require mem[_5723] + 32 <= return_data.size
                                    require mem[_5723 + mem[_5723]] <= 4294967296 and mem[_5723] + (32 * mem[_5723 + mem[_5723]]) + 32 <= return_data.size
                                    mem[_5723 + ceil32(return_data.size)] = mem[_5723 + mem[_5723]]
                                    _6043 = mem[_5723 + _5871]
                                    mem[_5723 + ceil32(return_data.size) + 32 len floor32(mem[_5723 + _5871])] = mem[_5723 + _5871 + 32 len floor32(mem[_5723 + _5871])]
                                    mem[64] = (32 * _6043) + _5723 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5723 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_5723 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                               0 / ext_call.return_data[32] / 100 * 10^6
                        else:
                            if arg3 >= ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                _2983 = mem[64]
                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                if not sub_c8c6f7a6.length:
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3171 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3252 = mem[_3171]
                                    require mem[_3171] <= 4294967296
                                    require mem[_3171] + 32 <= return_data.size
                                    require mem[_3171 + mem[_3171]] <= 4294967296 and mem[_3171] + (32 * mem[_3171 + mem[_3171]]) + 32 <= return_data.size
                                    mem[_3171 + ceil32(return_data.size)] = mem[_3171 + mem[_3171]]
                                    _3504 = mem[_3171 + _3252]
                                    mem[_3171 + ceil32(return_data.size) + 32 len floor32(mem[_3171 + _3252])] = mem[_3171 + _3252 + 32 len floor32(mem[_3171 + _3252])]
                                    mem[64] = (32 * _3504) + _3171 + ceil32(return_data.size) + 32
                                    if 0 < mem[_3171 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_3171 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0,
                                               0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    mem[0] = 9
                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                    idx = mem[64] + 100
                                    s = 0
                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(pangolinRouterAddress)
                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _2983 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5719 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5863 = mem[_5719]
                                    require mem[_5719] <= 4294967296
                                    require mem[_5719] + 32 <= return_data.size
                                    require mem[_5719 + mem[_5719]] <= 4294967296 and mem[_5719] + (32 * mem[_5719 + mem[_5719]]) + 32 <= return_data.size
                                    mem[_5719 + ceil32(return_data.size)] = mem[_5719 + mem[_5719]]
                                    _6039 = mem[_5719 + _5863]
                                    mem[_5719 + ceil32(return_data.size) + 32 len floor32(mem[_5719 + _5863])] = mem[_5719 + _5863 + 32 len floor32(mem[_5719 + _5863])]
                                    mem[64] = (32 * _6039) + _5719 + ceil32(return_data.size) + 32
                                    if 0 < mem[_5719 + ceil32(return_data.size)]:
                                        return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                               mem[_5719 + ceil32(return_data.size) + 32],
                                               arg2 / 100,
                                               0,
                                               0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                if arg4 <= 2:
                                    if arg4 != 2:
                                        if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _3107 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3326 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3424 = mem[_3326]
                                            require mem[_3326] <= 4294967296
                                            require mem[_3326] + 32 <= return_data.size
                                            require mem[_3326 + mem[_3326]] <= 4294967296 and mem[_3326] + (32 * mem[_3326 + mem[_3326]]) + 32 <= return_data.size
                                            mem[_3326 + ceil32(return_data.size)] = mem[_3326 + mem[_3326]]
                                            _3700 = mem[_3326 + _3424]
                                            mem[_3326 + ceil32(return_data.size) + 32 len floor32(mem[_3326 + _3424])] = mem[_3326 + _3424 + 32 len floor32(mem[_3326 + _3424])]
                                            mem[64] = (32 * _3700) + _3326 + ceil32(return_data.size) + 32
                                            if 0 < mem[_3326 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_3326 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0,
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _3107 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5720 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5865 = mem[_5720]
                                            require mem[_5720] <= 4294967296
                                            require mem[_5720] + 32 <= return_data.size
                                            require mem[_5720 + mem[_5720]] <= 4294967296 and mem[_5720] + (32 * mem[_5720 + mem[_5720]]) + 32 <= return_data.size
                                            mem[_5720 + ceil32(return_data.size)] = mem[_5720 + mem[_5720]]
                                            _6040 = mem[_5720 + _5865]
                                            mem[_5720 + ceil32(return_data.size) + 32 len floor32(mem[_5720 + _5865])] = mem[_5720 + _5865 + 32 len floor32(mem[_5720 + _5865])]
                                            mem[64] = (32 * _6040) + _5720 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5720 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_5720 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0,
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        _2677 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2677] = 30
                                        mem[_2677 + 32] = 'SafeMath: subtraction overflow'
                                        if arg3 > ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not ext_call.return_data[32] - arg3:
                                            _3254 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3254] = 26
                                            mem[_3254 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[32]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _4290 = mem[64]
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                            mem[mem[64] + 36] = 64
                                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                                            if not sub_c8c6f7a6.length:
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4418 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4463 = mem[_4418]
                                                require mem[_4418] <= 4294967296
                                                require mem[_4418] + 32 <= return_data.size
                                                require mem[_4418 + mem[_4418]] <= 4294967296 and mem[_4418] + (32 * mem[_4418 + mem[_4418]]) + 32 <= return_data.size
                                                mem[_4418 + ceil32(return_data.size)] = mem[_4418 + mem[_4418]]
                                                _4599 = mem[_4418 + _4463]
                                                mem[_4418 + ceil32(return_data.size) + 32 len floor32(mem[_4418 + _4463])] = mem[_4418 + _4463 + 32 len floor32(mem[_4418 + _4463])]
                                                mem[64] = (32 * _4599) + _4418 + ceil32(return_data.size) + 32
                                                if 0 < mem[_4418 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                           mem[_4418 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0 / ext_call.return_data[32],
                                                           0 / ext_call.return_data[32] / 100 * 10^6
                                            else:
                                                mem[0] = 9
                                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                idx = mem[64] + 100
                                                s = 0
                                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len _4290 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5722 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5869 = mem[_5722]
                                                require mem[_5722] <= 4294967296
                                                require mem[_5722] + 32 <= return_data.size
                                                require mem[_5722 + mem[_5722]] <= 4294967296 and mem[_5722] + (32 * mem[_5722 + mem[_5722]]) + 32 <= return_data.size
                                                mem[_5722 + ceil32(return_data.size)] = mem[_5722 + mem[_5722]]
                                                _6042 = mem[_5722 + _5869]
                                                mem[_5722 + ceil32(return_data.size) + 32 len floor32(mem[_5722 + _5869])] = mem[_5722 + _5869 + 32 len floor32(mem[_5722 + _5869])]
                                                mem[64] = (32 * _6042) + _5722 + ceil32(return_data.size) + 32
                                                if 0 < mem[_5722 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                           mem[_5722 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0 / ext_call.return_data[32],
                                                           0 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3426 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3426] = 26
                                            mem[_3426 + 32] = 'SafeMath: division by zero'
                                            if not ext_call.return_data[32]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _4373 = mem[64]
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                            mem[mem[64] + 36] = 64
                                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                                            if not sub_c8c6f7a6.length:
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4507 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4552 = mem[_4507]
                                                require mem[_4507] <= 4294967296
                                                require mem[_4507] + 32 <= return_data.size
                                                require mem[_4507 + mem[_4507]] <= 4294967296 and mem[_4507] + (32 * mem[_4507 + mem[_4507]]) + 32 <= return_data.size
                                                mem[_4507 + ceil32(return_data.size)] = mem[_4507 + mem[_4507]]
                                                _4690 = mem[_4507 + _4552]
                                                mem[_4507 + ceil32(return_data.size) + 32 len floor32(mem[_4507 + _4552])] = mem[_4507 + _4552 + 32 len floor32(mem[_4507 + _4552])]
                                                mem[64] = (32 * _4690) + _4507 + ceil32(return_data.size) + 32
                                                if 0 < mem[_4507 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                           mem[_4507 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                           0 / ext_call.return_data[32] / 100 * 10^6
                                            else:
                                                mem[0] = 9
                                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                idx = mem[64] + 100
                                                s = 0
                                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len _4373 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5721 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5867 = mem[_5721]
                                                require mem[_5721] <= 4294967296
                                                require mem[_5721] + 32 <= return_data.size
                                                require mem[_5721 + mem[_5721]] <= 4294967296 and mem[_5721] + (32 * mem[_5721 + mem[_5721]]) + 32 <= return_data.size
                                                mem[_5721 + ceil32(return_data.size)] = mem[_5721 + mem[_5721]]
                                                _6041 = mem[_5721 + _5867]
                                                mem[_5721 + ceil32(return_data.size) + 32 len floor32(mem[_5721 + _5867])] = mem[_5721 + _5867 + 32 len floor32(mem[_5721 + _5867])]
                                                mem[64] = (32 * _6041) + _5721 + ceil32(return_data.size) + 32
                                                if 0 < mem[_5721 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                           mem[_5721 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                           0 / ext_call.return_data[32] / 100 * 10^6
            else:
                if impliedVolRate * t * arg2 / t * arg2 != impliedVolRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not impliedVolRate * t * arg2:
                    _2489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2489] = 26
                    mem[_2489 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    _2565 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2565] = 26
                    mem[_2565 + 32] = 'SafeMath: division by zero'
                    if arg3 <= ext_call.return_data[32]:
                        if arg3 >= ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            _2973 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3162 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3237 = mem[_3162]
                                require mem[_3162] <= 4294967296
                                require mem[_3162] + 32 <= return_data.size
                                require mem[_3162 + mem[_3162]] <= 4294967296 and mem[_3162] + (32 * mem[_3162 + mem[_3162]]) + 32 <= return_data.size
                                mem[_3162 + ceil32(return_data.size)] = mem[_3162 + mem[_3162]]
                                _3492 = mem[_3162 + _3237]
                                mem[_3162 + ceil32(return_data.size) + 32 len floor32(mem[_3162 + _3237])] = mem[_3162 + _3237 + 32 len floor32(mem[_3162 + _3237])]
                                mem[64] = (32 * _3492) + _3162 + ceil32(return_data.size) + 32
                                if 0 < mem[_3162 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_3162 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _2973 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5705 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5835 = mem[_5705]
                                require mem[_5705] <= 4294967296
                                require mem[_5705] + 32 <= return_data.size
                                require mem[_5705 + mem[_5705]] <= 4294967296 and mem[_5705] + (32 * mem[_5705 + mem[_5705]]) + 32 <= return_data.size
                                mem[_5705 + ceil32(return_data.size)] = mem[_5705 + mem[_5705]]
                                _6025 = mem[_5705 + _5835]
                                mem[_5705 + ceil32(return_data.size) + 32 len floor32(mem[_5705 + _5835])] = mem[_5705 + _5835 + 32 len floor32(mem[_5705 + _5835])]
                                mem[64] = (32 * _6025) + _5705 + ceil32(return_data.size) + 32
                                if 0 < mem[_5705 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_5705 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           0 / ext_call.return_data[32] / 100 * 10^6
                        else:
                            if arg4 <= 2:
                                if arg4 != 2:
                                    if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _3097 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3317 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3403 = mem[_3317]
                                        require mem[_3317] <= 4294967296
                                        require mem[_3317] + 32 <= return_data.size
                                        require mem[_3317 + mem[_3317]] <= 4294967296 and mem[_3317] + (32 * mem[_3317 + mem[_3317]]) + 32 <= return_data.size
                                        mem[_3317 + ceil32(return_data.size)] = mem[_3317 + mem[_3317]]
                                        _3682 = mem[_3317 + _3403]
                                        mem[_3317 + ceil32(return_data.size) + 32 len floor32(mem[_3317 + _3403])] = mem[_3317 + _3403 + 32 len floor32(mem[_3317 + _3403])]
                                        mem[64] = (32 * _3682) + _3317 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3317 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_3317 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3097 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5706 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5837 = mem[_5706]
                                        require mem[_5706] <= 4294967296
                                        require mem[_5706] + 32 <= return_data.size
                                        require mem[_5706 + mem[_5706]] <= 4294967296 and mem[_5706] + (32 * mem[_5706 + mem[_5706]]) + 32 <= return_data.size
                                        mem[_5706 + ceil32(return_data.size)] = mem[_5706 + mem[_5706]]
                                        _6026 = mem[_5706 + _5837]
                                        mem[_5706 + ceil32(return_data.size) + 32 len floor32(mem[_5706 + _5837])] = mem[_5706 + _5837 + 32 len floor32(mem[_5706 + _5837])]
                                        mem[64] = (32 * _6026) + _5706 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5706 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5706 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    _2666 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2666] = 30
                                    mem[_2666 + 32] = 'SafeMath: subtraction overflow'
                                    if arg3 > ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not ext_call.return_data[32] - arg3:
                                        _3239 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3239] = 26
                                        mem[_3239 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4283 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4411 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4454 = mem[_4411]
                                            require mem[_4411] <= 4294967296
                                            require mem[_4411] + 32 <= return_data.size
                                            require mem[_4411 + mem[_4411]] <= 4294967296 and mem[_4411] + (32 * mem[_4411 + mem[_4411]]) + 32 <= return_data.size
                                            mem[_4411 + ceil32(return_data.size)] = mem[_4411 + mem[_4411]]
                                            _4591 = mem[_4411 + _4454]
                                            mem[_4411 + ceil32(return_data.size) + 32 len floor32(mem[_4411 + _4454])] = mem[_4411 + _4454 + 32 len floor32(mem[_4411 + _4454])]
                                            mem[64] = (32 * _4591) + _4411 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4411 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_4411 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4283 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5708 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5841 = mem[_5708]
                                            require mem[_5708] <= 4294967296
                                            require mem[_5708] + 32 <= return_data.size
                                            require mem[_5708 + mem[_5708]] <= 4294967296 and mem[_5708] + (32 * mem[_5708 + mem[_5708]]) + 32 <= return_data.size
                                            mem[_5708 + ceil32(return_data.size)] = mem[_5708 + mem[_5708]]
                                            _6028 = mem[_5708 + _5841]
                                            mem[_5708 + ceil32(return_data.size) + 32 len floor32(mem[_5708 + _5841])] = mem[_5708 + _5841 + 32 len floor32(mem[_5708 + _5841])]
                                            mem[64] = (32 * _6028) + _5708 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5708 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_5708 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3405 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3405] = 26
                                        mem[_3405 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4365 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4501 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4545 = mem[_4501]
                                            require mem[_4501] <= 4294967296
                                            require mem[_4501] + 32 <= return_data.size
                                            require mem[_4501 + mem[_4501]] <= 4294967296 and mem[_4501] + (32 * mem[_4501 + mem[_4501]]) + 32 <= return_data.size
                                            mem[_4501 + ceil32(return_data.size)] = mem[_4501 + mem[_4501]]
                                            _4678 = mem[_4501 + _4545]
                                            mem[_4501 + ceil32(return_data.size) + 32 len floor32(mem[_4501 + _4545])] = mem[_4501 + _4545 + 32 len floor32(mem[_4501 + _4545])]
                                            mem[64] = (32 * _4678) + _4501 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4501 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_4501 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4365 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5707 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5839 = mem[_5707]
                                            require mem[_5707] <= 4294967296
                                            require mem[_5707] + 32 <= return_data.size
                                            require mem[_5707 + mem[_5707]] <= 4294967296 and mem[_5707] + (32 * mem[_5707 + mem[_5707]]) + 32 <= return_data.size
                                            mem[_5707 + ceil32(return_data.size)] = mem[_5707 + mem[_5707]]
                                            _6027 = mem[_5707 + _5839]
                                            mem[_5707 + ceil32(return_data.size) + 32 len floor32(mem[_5707 + _5839])] = mem[_5707 + _5839 + 32 len floor32(mem[_5707 + _5839])]
                                            mem[64] = (32 * _6027) + _5707 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5707 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_5707 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       0 / ext_call.return_data[32] / 100 * 10^6
                    else:
                        if arg4 <= 2:
                            if arg4 == 1:
                                _2610 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2610] = 30
                                mem[_2610 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[32] > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg3 - ext_call.return_data[32]:
                                    _3103 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3103] = 26
                                    mem[_3103 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4210 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4323 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4369 = mem[_4323]
                                        require mem[_4323] <= 4294967296
                                        require mem[_4323] + 32 <= return_data.size
                                        require mem[_4323 + mem[_4323]] <= 4294967296 and mem[_4323] + (32 * mem[_4323 + mem[_4323]]) + 32 <= return_data.size
                                        mem[_4323 + ceil32(return_data.size)] = mem[_4323 + mem[_4323]]
                                        _4505 = mem[_4323 + _4369]
                                        mem[_4323 + ceil32(return_data.size) + 32 len floor32(mem[_4323 + _4369])] = mem[_4323 + _4369 + 32 len floor32(mem[_4323 + _4369])]
                                        mem[64] = (32 * _4505) + _4323 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4323 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_4323 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4210 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5714 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5853 = mem[_5714]
                                        require mem[_5714] <= 4294967296
                                        require mem[_5714] + 32 <= return_data.size
                                        require mem[_5714 + mem[_5714]] <= 4294967296 and mem[_5714] + (32 * mem[_5714 + mem[_5714]]) + 32 <= return_data.size
                                        mem[_5714 + ceil32(return_data.size)] = mem[_5714 + mem[_5714]]
                                        _6034 = mem[_5714 + _5853]
                                        mem[_5714 + ceil32(return_data.size) + 32 len floor32(mem[_5714 + _5853])] = mem[_5714 + _5853 + 32 len floor32(mem[_5714 + _5853])]
                                        mem[64] = (32 * _6034) + _5714 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5714 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5714 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3241 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3241] = 26
                                    mem[_3241 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4286 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4414 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4457 = mem[_4414]
                                        require mem[_4414] <= 4294967296
                                        require mem[_4414] + 32 <= return_data.size
                                        require mem[_4414 + mem[_4414]] <= 4294967296 and mem[_4414] + (32 * mem[_4414 + mem[_4414]]) + 32 <= return_data.size
                                        mem[_4414 + ceil32(return_data.size)] = mem[_4414 + mem[_4414]]
                                        _4593 = mem[_4414 + _4457]
                                        mem[_4414 + ceil32(return_data.size) + 32 len floor32(mem[_4414 + _4457])] = mem[_4414 + _4457 + 32 len floor32(mem[_4414 + _4457])]
                                        mem[64] = (32 * _4593) + _4414 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4414 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_4414 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4286 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5713 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5851 = mem[_5713]
                                        require mem[_5713] <= 4294967296
                                        require mem[_5713] + 32 <= return_data.size
                                        require mem[_5713 + mem[_5713]] <= 4294967296 and mem[_5713] + (32 * mem[_5713 + mem[_5713]]) + 32 <= return_data.size
                                        mem[_5713 + ceil32(return_data.size)] = mem[_5713 + mem[_5713]]
                                        _6033 = mem[_5713 + _5851]
                                        mem[_5713 + ceil32(return_data.size) + 32 len floor32(mem[_5713 + _5851])] = mem[_5713 + _5851 + 32 len floor32(mem[_5713 + _5851])]
                                        mem[64] = (32 * _6033) + _5713 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5713 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5713 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                if arg3 >= ext_call.return_data[32]:
                                    if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _3098 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3318 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3409 = mem[_3318]
                                        require mem[_3318] <= 4294967296
                                        require mem[_3318] + 32 <= return_data.size
                                        require mem[_3318 + mem[_3318]] <= 4294967296 and mem[_3318] + (32 * mem[_3318 + mem[_3318]]) + 32 <= return_data.size
                                        mem[_3318 + ceil32(return_data.size)] = mem[_3318 + mem[_3318]]
                                        _3686 = mem[_3318 + _3409]
                                        mem[_3318 + ceil32(return_data.size) + 32 len floor32(mem[_3318 + _3409])] = mem[_3318 + _3409 + 32 len floor32(mem[_3318 + _3409])]
                                        mem[64] = (32 * _3686) + _3318 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3318 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_3318 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3098 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5709 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5843 = mem[_5709]
                                        require mem[_5709] <= 4294967296
                                        require mem[_5709] + 32 <= return_data.size
                                        require mem[_5709 + mem[_5709]] <= 4294967296 and mem[_5709] + (32 * mem[_5709 + mem[_5709]]) + 32 <= return_data.size
                                        mem[_5709 + ceil32(return_data.size)] = mem[_5709 + mem[_5709]]
                                        _6029 = mem[_5709 + _5843]
                                        mem[_5709 + ceil32(return_data.size) + 32 len floor32(mem[_5709 + _5843])] = mem[_5709 + _5843 + 32 len floor32(mem[_5709 + _5843])]
                                        mem[64] = (32 * _6029) + _5709 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5709 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5709 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   0 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    if arg4 <= 2:
                                        if arg4 != 2:
                                            if 0 / ext_call.return_data[32] / 100 * 10^6 < 0 / ext_call.return_data[32] / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _3240 = mem[64]
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                            mem[mem[64] + 36] = 64
                                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                                            if not sub_c8c6f7a6.length:
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3494 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3600 = mem[_3494]
                                                require mem[_3494] <= 4294967296
                                                require mem[_3494] + 32 <= return_data.size
                                                require mem[_3494 + mem[_3494]] <= 4294967296 and mem[_3494] + (32 * mem[_3494 + mem[_3494]]) + 32 <= return_data.size
                                                mem[_3494 + ceil32(return_data.size)] = mem[_3494 + mem[_3494]]
                                                _3867 = mem[_3494 + _3600]
                                                mem[_3494 + ceil32(return_data.size) + 32 len floor32(mem[_3494 + _3600])] = mem[_3494 + _3600 + 32 len floor32(mem[_3494 + _3600])]
                                                mem[64] = (32 * _3867) + _3494 + ceil32(return_data.size) + 32
                                                if 0 < mem[_3494 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                           mem[_3494 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0,
                                                           0 / ext_call.return_data[32] / 100 * 10^6
                                            else:
                                                mem[0] = 9
                                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                idx = mem[64] + 100
                                                s = 0
                                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len _3240 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5710 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5845 = mem[_5710]
                                                require mem[_5710] <= 4294967296
                                                require mem[_5710] + 32 <= return_data.size
                                                require mem[_5710 + mem[_5710]] <= 4294967296 and mem[_5710] + (32 * mem[_5710 + mem[_5710]]) + 32 <= return_data.size
                                                mem[_5710 + ceil32(return_data.size)] = mem[_5710 + mem[_5710]]
                                                _6030 = mem[_5710 + _5845]
                                                mem[_5710 + ceil32(return_data.size) + 32 len floor32(mem[_5710 + _5845])] = mem[_5710 + _5845 + 32 len floor32(mem[_5710 + _5845])]
                                                mem[64] = (32 * _6030) + _5710 + ceil32(return_data.size) + 32
                                                if 0 < mem[_5710 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                           mem[_5710 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0,
                                                           0 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            _2756 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2756] = 30
                                            mem[_2756 + 32] = 'SafeMath: subtraction overflow'
                                            if arg3 > ext_call.return_data[32]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not ext_call.return_data[32] - arg3:
                                                _3411 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3411] = 26
                                                mem[_3411 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _4368 = mem[64]
                                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                                mem[mem[64] + 36] = 64
                                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                                if not sub_c8c6f7a6.length:
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4504 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4548 = mem[_4504]
                                                    require mem[_4504] <= 4294967296
                                                    require mem[_4504] + 32 <= return_data.size
                                                    require mem[_4504 + mem[_4504]] <= 4294967296 and mem[_4504] + (32 * mem[_4504 + mem[_4504]]) + 32 <= return_data.size
                                                    mem[_4504 + ceil32(return_data.size)] = mem[_4504 + mem[_4504]]
                                                    _4681 = mem[_4504 + _4548]
                                                    mem[_4504 + ceil32(return_data.size) + 32 len floor32(mem[_4504 + _4548])] = mem[_4504 + _4548 + 32 len floor32(mem[_4504 + _4548])]
                                                    mem[64] = (32 * _4681) + _4504 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_4504 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                               mem[_4504 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               0 / ext_call.return_data[32],
                                                               0 / ext_call.return_data[32] / 100 * 10^6
                                                else:
                                                    mem[0] = 9
                                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                    idx = mem[64] + 100
                                                    s = 0
                                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _4368 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5712 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5849 = mem[_5712]
                                                    require mem[_5712] <= 4294967296
                                                    require mem[_5712] + 32 <= return_data.size
                                                    require mem[_5712 + mem[_5712]] <= 4294967296 and mem[_5712] + (32 * mem[_5712 + mem[_5712]]) + 32 <= return_data.size
                                                    mem[_5712 + ceil32(return_data.size)] = mem[_5712 + mem[_5712]]
                                                    _6032 = mem[_5712 + _5849]
                                                    mem[_5712 + ceil32(return_data.size) + 32 len floor32(mem[_5712 + _5849])] = mem[_5712 + _5849 + 32 len floor32(mem[_5712 + _5849])]
                                                    mem[64] = (32 * _6032) + _5712 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_5712 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                               mem[_5712 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               0 / ext_call.return_data[32],
                                                               0 / ext_call.return_data[32] / 100 * 10^6
                                            else:
                                                if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3602 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3602] = 26
                                                mem[_3602 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6) < 0 / ext_call.return_data[32] / 100 * 10^6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _4456 = mem[64]
                                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6)
                                                mem[mem[64] + 36] = 64
                                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                                if not sub_c8c6f7a6.length:
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4592 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4636 = mem[_4592]
                                                    require mem[_4592] <= 4294967296
                                                    require mem[_4592] + 32 <= return_data.size
                                                    require mem[_4592 + mem[_4592]] <= 4294967296 and mem[_4592] + (32 * mem[_4592 + mem[_4592]]) + 32 <= return_data.size
                                                    mem[_4592 + ceil32(return_data.size)] = mem[_4592 + mem[_4592]]
                                                    _4760 = mem[_4592 + _4636]
                                                    mem[_4592 + ceil32(return_data.size) + 32 len floor32(mem[_4592 + _4636])] = mem[_4592 + _4636 + 32 len floor32(mem[_4592 + _4636])]
                                                    mem[64] = (32 * _4760) + _4592 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_4592 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                               mem[_4592 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                               0 / ext_call.return_data[32] / 100 * 10^6
                                                else:
                                                    mem[0] = 9
                                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                    idx = mem[64] + 100
                                                    s = 0
                                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _4456 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5711 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5847 = mem[_5711]
                                                    require mem[_5711] <= 4294967296
                                                    require mem[_5711] + 32 <= return_data.size
                                                    require mem[_5711 + mem[_5711]] <= 4294967296 and mem[_5711] + (32 * mem[_5711 + mem[_5711]]) + 32 <= return_data.size
                                                    mem[_5711 + ceil32(return_data.size)] = mem[_5711 + mem[_5711]]
                                                    _6031 = mem[_5711 + _5847]
                                                    mem[_5711 + ceil32(return_data.size) + 32 len floor32(mem[_5711 + _5847])] = mem[_5711 + _5847 + 32 len floor32(mem[_5711 + _5847])]
                                                    mem[64] = (32 * _6031) + _5711 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_5711 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (0 / ext_call.return_data[32] / 100 * 10^6), 
                                                               mem[_5711 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                               0 / ext_call.return_data[32] / 100 * 10^6
                else:
                    if arg3 * impliedVolRate * t * arg2 / impliedVolRate * t * arg2 != arg3:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2509 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2509] = 26
                    mem[_2509 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    _2573 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2573] = 26
                    mem[_2573 + 32] = 'SafeMath: division by zero'
                    if arg3 <= ext_call.return_data[32]:
                        if arg3 >= ext_call.return_data[32]:
                            if arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6 < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                revert with 0, 'SafeMath: addition overflow'
                            _3088 = mem[64]
                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                            if not sub_c8c6f7a6.length:
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3309 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3394 = mem[_3309]
                                require mem[_3309] <= 4294967296
                                require mem[_3309] + 32 <= return_data.size
                                require mem[_3309 + mem[_3309]] <= 4294967296 and mem[_3309] + (32 * mem[_3309 + mem[_3309]]) + 32 <= return_data.size
                                mem[_3309 + ceil32(return_data.size)] = mem[_3309 + mem[_3309]]
                                _3674 = mem[_3309 + _3394]
                                mem[_3309 + ceil32(return_data.size) + 32 len floor32(mem[_3309 + _3394])] = mem[_3309 + _3394 + 32 len floor32(mem[_3309 + _3394])]
                                mem[64] = (32 * _3674) + _3309 + ceil32(return_data.size) + 32
                                if 0 < mem[_3309 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_3309 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                mem[0] = 9
                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                idx = mem[64] + 100
                                s = 0
                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(pangolinRouterAddress)
                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _3088 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5695 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5815 = mem[_5695]
                                require mem[_5695] <= 4294967296
                                require mem[_5695] + 32 <= return_data.size
                                require mem[_5695 + mem[_5695]] <= 4294967296 and mem[_5695] + (32 * mem[_5695 + mem[_5695]]) + 32 <= return_data.size
                                mem[_5695 + ceil32(return_data.size)] = mem[_5695 + mem[_5695]]
                                _6015 = mem[_5695 + _5815]
                                mem[_5695 + ceil32(return_data.size) + 32 len floor32(mem[_5695 + _5815])] = mem[_5695 + _5815 + 32 len floor32(mem[_5695 + _5815])]
                                mem[64] = (32 * _6015) + _5695 + ceil32(return_data.size) + 32
                                if 0 < mem[_5695 + ceil32(return_data.size)]:
                                    return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                           mem[_5695 + ceil32(return_data.size) + 32],
                                           arg2 / 100,
                                           0,
                                           arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                        else:
                            if arg4 <= 2:
                                if arg4 != 2:
                                    if arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6 < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _3230 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3485 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3579 = mem[_3485]
                                        require mem[_3485] <= 4294967296
                                        require mem[_3485] + 32 <= return_data.size
                                        require mem[_3485 + mem[_3485]] <= 4294967296 and mem[_3485] + (32 * mem[_3485 + mem[_3485]]) + 32 <= return_data.size
                                        mem[_3485 + ceil32(return_data.size)] = mem[_3485 + mem[_3485]]
                                        _3849 = mem[_3485 + _3579]
                                        mem[_3485 + ceil32(return_data.size) + 32 len floor32(mem[_3485 + _3579])] = mem[_3485 + _3579 + 32 len floor32(mem[_3485 + _3579])]
                                        mem[64] = (32 * _3849) + _3485 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3485 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_3485 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3230 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5696 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5817 = mem[_5696]
                                        require mem[_5696] <= 4294967296
                                        require mem[_5696] + 32 <= return_data.size
                                        require mem[_5696 + mem[_5696]] <= 4294967296 and mem[_5696] + (32 * mem[_5696 + mem[_5696]]) + 32 <= return_data.size
                                        mem[_5696 + ceil32(return_data.size)] = mem[_5696 + mem[_5696]]
                                        _6016 = mem[_5696 + _5817]
                                        mem[_5696 + ceil32(return_data.size) + 32 len floor32(mem[_5696 + _5817])] = mem[_5696 + _5817 + 32 len floor32(mem[_5696 + _5817])]
                                        mem[64] = (32 * _6016) + _5696 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5696 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5696 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    _2745 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2745] = 30
                                    mem[_2745 + 32] = 'SafeMath: subtraction overflow'
                                    if arg3 > ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not ext_call.return_data[32] - arg3:
                                        _3396 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3396] = 26
                                        mem[_3396 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4361 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4497 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4539 = mem[_4497]
                                            require mem[_4497] <= 4294967296
                                            require mem[_4497] + 32 <= return_data.size
                                            require mem[_4497 + mem[_4497]] <= 4294967296 and mem[_4497] + (32 * mem[_4497 + mem[_4497]]) + 32 <= return_data.size
                                            mem[_4497 + ceil32(return_data.size)] = mem[_4497 + mem[_4497]]
                                            _4673 = mem[_4497 + _4539]
                                            mem[_4497 + ceil32(return_data.size) + 32 len floor32(mem[_4497 + _4539])] = mem[_4497 + _4539 + 32 len floor32(mem[_4497 + _4539])]
                                            mem[64] = (32 * _4673) + _4497 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4497 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_4497 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4361 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5698 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5821 = mem[_5698]
                                            require mem[_5698] <= 4294967296
                                            require mem[_5698] + 32 <= return_data.size
                                            require mem[_5698 + mem[_5698]] <= 4294967296 and mem[_5698] + (32 * mem[_5698 + mem[_5698]]) + 32 <= return_data.size
                                            mem[_5698 + ceil32(return_data.size)] = mem[_5698 + mem[_5698]]
                                            _6018 = mem[_5698 + _5821]
                                            mem[_5698 + ceil32(return_data.size) + 32 len floor32(mem[_5698 + _5821])] = mem[_5698 + _5821 + 32 len floor32(mem[_5698 + _5821])]
                                            mem[64] = (32 * _6018) + _5698 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5698 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_5698 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       0 / ext_call.return_data[32],
                                                       arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3581 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3581] = 26
                                        mem[_3581 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[32]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _4448 = mem[64]
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = sub_c8c6f7a6.length
                                        if not sub_c8c6f7a6.length:
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4586 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4629 = mem[_4586]
                                            require mem[_4586] <= 4294967296
                                            require mem[_4586] + 32 <= return_data.size
                                            require mem[_4586 + mem[_4586]] <= 4294967296 and mem[_4586] + (32 * mem[_4586 + mem[_4586]]) + 32 <= return_data.size
                                            mem[_4586 + ceil32(return_data.size)] = mem[_4586 + mem[_4586]]
                                            _4748 = mem[_4586 + _4629]
                                            mem[_4586 + ceil32(return_data.size) + 32 len floor32(mem[_4586 + _4629])] = mem[_4586 + _4629 + 32 len floor32(mem[_4586 + _4629])]
                                            mem[64] = (32 * _4748) + _4586 + ceil32(return_data.size) + 32
                                            if 0 < mem[_4586 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_4586 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            mem[0] = 9
                                            mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                            idx = mem[64] + 100
                                            s = 0
                                            while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(pangolinRouterAddress)
                                            staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _4448 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5697 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5819 = mem[_5697]
                                            require mem[_5697] <= 4294967296
                                            require mem[_5697] + 32 <= return_data.size
                                            require mem[_5697 + mem[_5697]] <= 4294967296 and mem[_5697] + (32 * mem[_5697 + mem[_5697]]) + 32 <= return_data.size
                                            mem[_5697 + ceil32(return_data.size)] = mem[_5697 + mem[_5697]]
                                            _6017 = mem[_5697 + _5819]
                                            mem[_5697 + ceil32(return_data.size) + 32 len floor32(mem[_5697 + _5819])] = mem[_5697 + _5819 + 32 len floor32(mem[_5697 + _5819])]
                                            mem[64] = (32 * _6017) + _5697 + ceil32(return_data.size) + 32
                                            if 0 < mem[_5697 + ceil32(return_data.size)]:
                                                return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                       mem[_5697 + ceil32(return_data.size) + 32],
                                                       arg2 / 100,
                                                       (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                       arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                    else:
                        if arg4 <= 2:
                            if arg4 == 1:
                                _2663 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2663] = 30
                                mem[_2663 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[32] > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg3 - ext_call.return_data[32]:
                                    _3236 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3236] = 26
                                    mem[_3236 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4280 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4408 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4452 = mem[_4408]
                                        require mem[_4408] <= 4294967296
                                        require mem[_4408] + 32 <= return_data.size
                                        require mem[_4408 + mem[_4408]] <= 4294967296 and mem[_4408] + (32 * mem[_4408 + mem[_4408]]) + 32 <= return_data.size
                                        mem[_4408 + ceil32(return_data.size)] = mem[_4408 + mem[_4408]]
                                        _4590 = mem[_4408 + _4452]
                                        mem[_4408 + ceil32(return_data.size) + 32 len floor32(mem[_4408 + _4452])] = mem[_4408 + _4452 + 32 len floor32(mem[_4408 + _4452])]
                                        mem[64] = (32 * _4590) + _4408 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4408 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_4408 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4280 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5704 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5833 = mem[_5704]
                                        require mem[_5704] <= 4294967296
                                        require mem[_5704] + 32 <= return_data.size
                                        require mem[_5704 + mem[_5704]] <= 4294967296 and mem[_5704] + (32 * mem[_5704 + mem[_5704]]) + 32 <= return_data.size
                                        mem[_5704 + ceil32(return_data.size)] = mem[_5704 + mem[_5704]]
                                        _6024 = mem[_5704 + _5833]
                                        mem[_5704 + ceil32(return_data.size) + 32 len floor32(mem[_5704 + _5833])] = mem[_5704 + _5833 + 32 len floor32(mem[_5704 + _5833])]
                                        mem[64] = (32 * _6024) + _5704 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5704 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5704 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0 / ext_call.return_data[32],
                                                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    if (arg3 * arg2) - (ext_call.return_data[32] * arg2) / arg3 - ext_call.return_data[32] != arg2:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3398 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3398] = 26
                                    mem[_3398 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[32]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _4364 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4500 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4542 = mem[_4500]
                                        require mem[_4500] <= 4294967296
                                        require mem[_4500] + 32 <= return_data.size
                                        require mem[_4500 + mem[_4500]] <= 4294967296 and mem[_4500] + (32 * mem[_4500 + mem[_4500]]) + 32 <= return_data.size
                                        mem[_4500 + ceil32(return_data.size)] = mem[_4500 + mem[_4500]]
                                        _4675 = mem[_4500 + _4542]
                                        mem[_4500 + ceil32(return_data.size) + 32 len floor32(mem[_4500 + _4542])] = mem[_4500 + _4542 + 32 len floor32(mem[_4500 + _4542])]
                                        mem[64] = (32 * _4675) + _4500 + ceil32(return_data.size) + 32
                                        if 0 < mem[_4500 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_4500 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _4364 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5703 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5831 = mem[_5703]
                                        require mem[_5703] <= 4294967296
                                        require mem[_5703] + 32 <= return_data.size
                                        require mem[_5703 + mem[_5703]] <= 4294967296 and mem[_5703] + (32 * mem[_5703 + mem[_5703]]) + 32 <= return_data.size
                                        mem[_5703 + ceil32(return_data.size)] = mem[_5703 + mem[_5703]]
                                        _6023 = mem[_5703 + _5831]
                                        mem[_5703 + ceil32(return_data.size) + 32 len floor32(mem[_5703 + _5831])] = mem[_5703 + _5831 + 32 len floor32(mem[_5703 + _5831])]
                                        mem[64] = (32 * _6023) + _5703 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5703 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + ((arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5703 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   (arg3 * arg2) - (ext_call.return_data[32] * arg2) / ext_call.return_data[32],
                                                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                            else:
                                if arg3 >= ext_call.return_data[32]:
                                    if arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6 < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _3231 = mem[64]
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = sub_c8c6f7a6.length
                                    if not sub_c8c6f7a6.length:
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                gas gas_remaining wei
                                               args (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3486 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3585 = mem[_3486]
                                        require mem[_3486] <= 4294967296
                                        require mem[_3486] + 32 <= return_data.size
                                        require mem[_3486 + mem[_3486]] <= 4294967296 and mem[_3486] + (32 * mem[_3486 + mem[_3486]]) + 32 <= return_data.size
                                        mem[_3486 + ceil32(return_data.size)] = mem[_3486 + mem[_3486]]
                                        _3853 = mem[_3486 + _3585]
                                        mem[_3486 + ceil32(return_data.size) + 32 len floor32(mem[_3486 + _3585])] = mem[_3486 + _3585 + 32 len floor32(mem[_3486 + _3585])]
                                        mem[64] = (32 * _3853) + _3486 + ceil32(return_data.size) + 32
                                        if 0 < mem[_3486 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_3486 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                    else:
                                        mem[0] = 9
                                        mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                        idx = mem[64] + 100
                                        s = 0
                                        while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                            mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(pangolinRouterAddress)
                                        staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _3231 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5699 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5823 = mem[_5699]
                                        require mem[_5699] <= 4294967296
                                        require mem[_5699] + 32 <= return_data.size
                                        require mem[_5699 + mem[_5699]] <= 4294967296 and mem[_5699] + (32 * mem[_5699 + mem[_5699]]) + 32 <= return_data.size
                                        mem[_5699 + ceil32(return_data.size)] = mem[_5699 + mem[_5699]]
                                        _6019 = mem[_5699 + _5823]
                                        mem[_5699 + ceil32(return_data.size) + 32 len floor32(mem[_5699 + _5823])] = mem[_5699 + _5823 + 32 len floor32(mem[_5699 + _5823])]
                                        mem[64] = (32 * _6019) + _5699 + ceil32(return_data.size) + 32
                                        if 0 < mem[_5699 + ceil32(return_data.size)]:
                                            return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                   mem[_5699 + ceil32(return_data.size) + 32],
                                                   arg2 / 100,
                                                   0,
                                                   arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                else:
                                    if arg4 <= 2:
                                        if arg4 != 2:
                                            if arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6 < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _3397 = mem[64]
                                            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                            mem[mem[64] + 36] = 64
                                            mem[mem[64] + 68] = sub_c8c6f7a6.length
                                            if not sub_c8c6f7a6.length:
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3676 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _3769 = mem[_3676]
                                                require mem[_3676] <= 4294967296
                                                require mem[_3676] + 32 <= return_data.size
                                                require mem[_3676 + mem[_3676]] <= 4294967296 and mem[_3676] + (32 * mem[_3676 + mem[_3676]]) + 32 <= return_data.size
                                                mem[_3676 + ceil32(return_data.size)] = mem[_3676 + mem[_3676]]
                                                _3993 = mem[_3676 + _3769]
                                                mem[_3676 + ceil32(return_data.size) + 32 len floor32(mem[_3676 + _3769])] = mem[_3676 + _3769 + 32 len floor32(mem[_3676 + _3769])]
                                                mem[64] = (32 * _3993) + _3676 + ceil32(return_data.size) + 32
                                                if 0 < mem[_3676 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                           mem[_3676 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0,
                                                           arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                            else:
                                                mem[0] = 9
                                                mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                idx = mem[64] + 100
                                                s = 0
                                                while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                    mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(pangolinRouterAddress)
                                                staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4 len _3397 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5700 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5825 = mem[_5700]
                                                require mem[_5700] <= 4294967296
                                                require mem[_5700] + 32 <= return_data.size
                                                require mem[_5700 + mem[_5700]] <= 4294967296 and mem[_5700] + (32 * mem[_5700 + mem[_5700]]) + 32 <= return_data.size
                                                mem[_5700 + ceil32(return_data.size)] = mem[_5700 + mem[_5700]]
                                                _6020 = mem[_5700 + _5825]
                                                mem[_5700 + ceil32(return_data.size) + 32 len floor32(mem[_5700 + _5825])] = mem[_5700 + _5825 + 32 len floor32(mem[_5700 + _5825])]
                                                mem[64] = (32 * _6020) + _5700 + ceil32(return_data.size) + 32
                                                if 0 < mem[_5700 + ceil32(return_data.size)]:
                                                    return (arg2 / 100) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                           mem[_5700 + ceil32(return_data.size) + 32],
                                                           arg2 / 100,
                                                           0,
                                                           arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                        else:
                                            _2853 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2853] = 30
                                            mem[_2853 + 32] = 'SafeMath: subtraction overflow'
                                            if arg3 > ext_call.return_data[32]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not ext_call.return_data[32] - arg3:
                                                _3587 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3587] = 26
                                                mem[_3587 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _4451 = mem[64]
                                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                                mem[mem[64] + 36] = 64
                                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                                if not sub_c8c6f7a6.length:
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4589 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4632 = mem[_4589]
                                                    require mem[_4589] <= 4294967296
                                                    require mem[_4589] + 32 <= return_data.size
                                                    require mem[_4589 + mem[_4589]] <= 4294967296 and mem[_4589] + (32 * mem[_4589 + mem[_4589]]) + 32 <= return_data.size
                                                    mem[_4589 + ceil32(return_data.size)] = mem[_4589 + mem[_4589]]
                                                    _4751 = mem[_4589 + _4632]
                                                    mem[_4589 + ceil32(return_data.size) + 32 len floor32(mem[_4589 + _4632])] = mem[_4589 + _4632 + 32 len floor32(mem[_4589 + _4632])]
                                                    mem[64] = (32 * _4751) + _4589 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_4589 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                               mem[_4589 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               0 / ext_call.return_data[32],
                                                               arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                                else:
                                                    mem[0] = 9
                                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                    idx = mem[64] + 100
                                                    s = 0
                                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _4451 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5702 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5829 = mem[_5702]
                                                    require mem[_5702] <= 4294967296
                                                    require mem[_5702] + 32 <= return_data.size
                                                    require mem[_5702 + mem[_5702]] <= 4294967296 and mem[_5702] + (32 * mem[_5702 + mem[_5702]]) + 32 <= return_data.size
                                                    mem[_5702 + ceil32(return_data.size)] = mem[_5702 + mem[_5702]]
                                                    _6022 = mem[_5702 + _5829]
                                                    mem[_5702 + ceil32(return_data.size) + 32 len floor32(mem[_5702 + _5829])] = mem[_5702 + _5829 + 32 len floor32(mem[_5702 + _5829])]
                                                    mem[64] = (32 * _6022) + _5702 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_5702 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + (0 / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                               mem[_5702 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               0 / ext_call.return_data[32],
                                                               arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                            else:
                                                if (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32] - arg3 != arg2:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3771 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3771] = 26
                                                mem[_3771 + 32] = 'SafeMath: division by zero'
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6) < arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _4541 = mem[64]
                                                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6)
                                                mem[mem[64] + 36] = 64
                                                mem[mem[64] + 68] = sub_c8c6f7a6.length
                                                if not sub_c8c6f7a6.length:
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 64, sub_c8c6f7a6.length
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4674 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4713 = mem[_4674]
                                                    require mem[_4674] <= 4294967296
                                                    require mem[_4674] + 32 <= return_data.size
                                                    require mem[_4674 + mem[_4674]] <= 4294967296 and mem[_4674] + (32 * mem[_4674 + mem[_4674]]) + 32 <= return_data.size
                                                    mem[_4674 + ceil32(return_data.size)] = mem[_4674 + mem[_4674]]
                                                    _4806 = mem[_4674 + _4713]
                                                    mem[_4674 + ceil32(return_data.size) + 32 len floor32(mem[_4674 + _4713])] = mem[_4674 + _4713 + 32 len floor32(mem[_4674 + _4713])]
                                                    mem[64] = (32 * _4806) + _4674 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_4674 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                               mem[_4674 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                               arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
                                                else:
                                                    mem[0] = 9
                                                    mem[mem[64] + 100] = address(sub_c8c6f7a6.field_0)
                                                    idx = mem[64] + 100
                                                    s = 0
                                                    while mem[64] + (32 * sub_c8c6f7a6.length) + 100 > idx + 32:
                                                        mem[idx + 32] = sub_c8c6f7a6[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    require ext_code.size(pangolinRouterAddress)
                                                    staticcall pangolinRouterAddress.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _4541 + (32 * sub_c8c6f7a6.length) + -mem[64] + 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5701 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5827 = mem[_5701]
                                                    require mem[_5701] <= 4294967296
                                                    require mem[_5701] + 32 <= return_data.size
                                                    require mem[_5701 + mem[_5701]] <= 4294967296 and mem[_5701] + (32 * mem[_5701 + mem[_5701]]) + 32 <= return_data.size
                                                    mem[_5701 + ceil32(return_data.size)] = mem[_5701 + mem[_5701]]
                                                    _6021 = mem[_5701 + _5827]
                                                    mem[_5701 + ceil32(return_data.size) + 32 len floor32(mem[_5701 + _5827])] = mem[_5701 + _5827 + 32 len floor32(mem[_5701 + _5827])]
                                                    mem[64] = (32 * _6021) + _5701 + ceil32(return_data.size) + 32
                                                    if 0 < mem[_5701 + ceil32(return_data.size)]:
                                                        return (arg2 / 100) + ((ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32]) + (arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6), 
                                                               mem[_5701 + ceil32(return_data.size) + 32],
                                                               arg2 / 100,
                                                               (ext_call.return_data[32] * arg2) - (arg3 * arg2) / ext_call.return_data[32],
                                                               arg3 * impliedVolRate * t * arg2 / ext_call.return_data[32] / 100 * 10^6
    revert
}



}
