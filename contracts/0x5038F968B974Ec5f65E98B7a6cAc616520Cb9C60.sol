contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint128 storFAD9; offset 160
address underlyingAddress;
uint128 stor1B57; offset 160
address registryAddress;
uint32 stor32DA;
uint128 stor32DA; offset 160
address lendingPoolAddress;
uint256 stor32DA;
uint8 stor4FF4; offset 152
uint128 stor4FF4; offset 160
address derivativeAddress;
uint128 stor8354; offset 160
address incentivesControllerAddress;
uint128 storAEB8; offset 160
address rewardAddress;
uint128 storD2EF; offset 160
address bankAddress;

function derivative() payable {
    return derivativeAddress
}

function reward() payable {
    return rewardAddress
}

function underlying() payable {
    return underlyingAddress
}

function bank() payable {
    return bankAddress
}

function registry() payable {
    return registryAddress
}

function lendingPool() payable {
    return lendingPoolAddress
}

function incentivesController() payable {
    return incentivesControllerAddress
}

function _fallback() payable {
    revert
}

function manager() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function governance() payable {
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function underlyingBalance() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function rewardBalance() payable {
    if not rewardAddress:
        return 0
    require ext_code.size(rewardAddress)
    staticcall rewardAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function investedBalance() payable {
    if not derivativeAddress:
        return 0
    require ext_code.size(derivativeAddress)
    staticcall derivativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function derivativeBalance() payable {
    if not derivativeAddress:
        return 0
    require ext_code.size(derivativeAddress)
    staticcall derivativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Only Governance'
    registryAddress = arg1
    stor1B57 = 0
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Bad Governance'
}

function sweep(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Only Governance'
    if arg2:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] >= arg2:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
                if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    emit Sweep(arg2, arg3, arg1);
}

function initializeAaveV2Strategy(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
    if not ext_code.size(arg1):
        revert with 0, 'Subscriber: Invalid Registry'
    registryAddress = arg1
    stor1B57 = 0
    if uint8(stor0.field_8):
        bankAddress = arg2
        storD2EF = 0
        underlyingAddress = arg3
        storFAD9 = 0
        derivativeAddress = arg4
        Mask(96, 0, stor4FF4.field_160) = 0
        rewardAddress = arg5
        storAEB8 = 0
        lendingPoolAddress = arg6
        Mask(96, 0, stor32DA.field_160) = 0
        incentivesControllerAddress = arg7
        stor8354 = 0
    else:
        uint8(stor0.field_8) = 0
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            bankAddress = arg2
            storD2EF = 0
            underlyingAddress = arg3
            storFAD9 = 0
            derivativeAddress = arg4
            Mask(96, 0, stor4FF4.field_160) = 0
            rewardAddress = arg5
            storAEB8 = 0
            lendingPoolAddress = arg6
            Mask(96, 0, stor32DA.field_160) = 0
            incentivesControllerAddress = arg7
            stor8354 = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            bankAddress = arg2
            storD2EF = 0
            underlyingAddress = arg3
            storFAD9 = 0
            derivativeAddress = arg4
            Mask(96, 0, stor4FF4.field_160) = 0
            rewardAddress = arg5
            storAEB8 = 0
            uint8(stor0.field_8) = 0
            uint8(stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                lendingPoolAddress = arg6
                Mask(96, 0, stor32DA.field_160) = 0
                incentivesControllerAddress = arg7
                stor8354 = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                lendingPoolAddress = arg6
                Mask(96, 0, stor32DA.field_160) = 0
                incentivesControllerAddress = arg7
                stor8354 = 0
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bankAddress != msg.sender:
        revert with 0, 'Strategy: Only Bank'
    if not arg1:
        return 0
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), lendingPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0), uint32(stor32DA.field_0), Mask(224, 32, arg1 + ext_call.return_data[0]) >> 32
    mem[324 len 0] = 0
    call underlyingAddress with:
       funct uint32(stor32DA.field_0)
         gas gas_remaining wei
        args Mask(224, 32, arg1 + ext_call.return_data[0]) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 
                        Mask(224, 0, stor32DA.field_0),
                        uint32(stor32DA.field_0),
                        arg1 + ext_call.return_data[0]
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(lendingPoolAddress)
        call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args underlyingAddress, arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != arg1:
            if ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'AaveV2: Withdraw failed'
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
        call underlyingAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 
                            Mask(224, 0, stor32DA.field_0),
                            uint32(stor32DA.field_0),
                            arg1 + ext_call.return_data[0]
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args underlyingAddress, arg1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] == arg1:
                if not ext_call.return_data[0]:
                    return 0
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call underlyingAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 
                                    Mask(224, 0, stor32DA.field_0),
                                    uint32(stor32DA.field_0),
                                    arg1 + ext_call.return_data[0]
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
            else:
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'AaveV2: Withdraw failed'
                if not ext_call.return_data[0]:
                    return 0
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call underlyingAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 
                                        Mask(224, 0, stor32DA.field_0),
                                        uint32(stor32DA.field_0),
                                        arg1 + ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 
                                        Mask(224, 0, stor32DA.field_0),
                                        uint32(stor32DA.field_0),
                                        arg1 + ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args underlyingAddress, arg1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != arg1:
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'AaveV2: Withdraw failed'
            if not ext_call.return_data[0]:
                return 0
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call underlyingAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 
                                Mask(224, 0, stor32DA.field_0),
                                uint32(stor32DA.field_0),
                                arg1 + ext_call.return_data[0]
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    return ext_call.return_data[0]
}

function withdrawAll() payable {
    if bankAddress != msg.sender:
        revert with 0, 'Strategy: Only Bank'
    if derivativeAddress:
        require ext_code.size(derivativeAddress)
        staticcall derivativeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), lendingPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0), uint32(stor32DA.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[324 len 0] = 0
            call underlyingAddress with:
               funct uint32(stor32DA.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 
                                Mask(224, 0, stor32DA.field_0),
                                uint32(stor32DA.field_0),
                                2 * ext_call.return_data[0]
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args underlyingAddress, ext_call.return_data[0], this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    if ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'AaveV2: Withdraw failed'
                if ext_call.return_data[0]:
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 
                                        Mask(224, 0, stor32DA.field_0),
                                        uint32(stor32DA.field_0),
                                        2 * ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args underlyingAddress, ext_call.return_data[0], this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                            call underlyingAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), 
                                                Mask(224, 0, stor32DA.field_0),
                                                uint32(stor32DA.field_0),
                                                2 * ext_call.return_data[0]
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        if ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'AaveV2: Withdraw failed'
                        if ext_call.return_data[0]:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                            call underlyingAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address arg1, uint256 arg2), 
                                                    Mask(224, 0, stor32DA.field_0),
                                                    uint32(stor32DA.field_0),
                                                    2 * ext_call.return_data[0]
                                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            else:
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address arg1, uint256 arg2), 
                                                    Mask(224, 0, stor32DA.field_0),
                                                    uint32(stor32DA.field_0),
                                                    2 * ext_call.return_data[0]
                                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args underlyingAddress, ext_call.return_data[0], this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != ext_call.return_data[0]:
                        if ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'AaveV2: Withdraw failed'
                    if ext_call.return_data[0]:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                        call underlyingAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), 
                                            Mask(224, 0, stor32DA.field_0),
                                            uint32(stor32DA.field_0),
                                            2 * ext_call.return_data[0]
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function invest() payable {
    if bankAddress != msg.sender:
        revert with 0, 'Strategy: Only Bank'
    mem[260 len 0] = None
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.getRewardsBalance(address[] arg1, address arg2) with:
            gas gas_remaining wei
           args Array(len=1, data=mem[260]), address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not rewardAddress:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), lendingPoolAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0), uint32(stor32DA.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[388 len 0] = 0
                    call underlyingAddress with:
                       funct uint32(stor32DA.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint8(stor4FF4.field_152)
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args underlyingAddress, ext_call.return_data[0], this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(rewardAddress)
            staticcall rewardAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), lendingPoolAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0), uint32(stor32DA.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                        call underlyingAddress with:
                           funct uint32(stor32DA.field_0)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint8(stor4FF4.field_152)
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args underlyingAddress, ext_call.return_data[0], this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(registryAddress)
                staticcall registryAddress.0x481c6a75 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x921c86d2 with:
                        gas gas_remaining wei
                       args rewardAddress, underlyingAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6f70e66f with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), rewardAddress, underlyingAddress, 0, ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48930428 with:
                         gas gas_remaining wei
                        args bankAddress, underlyingAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), lendingPoolAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0), uint32(stor32DA.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[388 len 0] = 0
                            call underlyingAddress with:
                               funct uint32(stor32DA.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint8(stor4FF4.field_152)
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0], this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(rewardAddress)
                    staticcall rewardAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(rewardAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    mem[388 len 0] = 0
                    call rewardAddress with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint8(stor4FF4.field_152)
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6f70e66f with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), rewardAddress, underlyingAddress, ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48930428 with:
                         gas gas_remaining wei
                        args bankAddress, underlyingAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), lendingPoolAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 64] = 0, lendingPoolAddress, Mask(224, 31, ext_call.return_data[0]) >> 31
                            call underlyingAddress with:
                               funct uint32(stor32DA.field_0)
                                 gas gas_remaining wei
                                args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 425 len 28], mem[ceil32(return_data.size) + 553 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint8(stor4FF4.field_152)
                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 521]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0], this.address, 0, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[292 len 0] = None
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 96, ext_call.return_data[0], this.address, 0, 1, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not rewardAddress:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), lendingPoolAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0), uint32(stor32DA.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[388 len 0] = 0
                    call underlyingAddress with:
                       funct uint32(stor32DA.field_0)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint8(stor4FF4.field_152)
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args underlyingAddress, ext_call.return_data[0], this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(rewardAddress)
            staticcall rewardAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), lendingPoolAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0), uint32(stor32DA.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                        mem[388 len 0] = 0
                        call underlyingAddress with:
                           funct uint32(stor32DA.field_0)
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint8(stor4FF4.field_152)
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        require ext_code.size(lendingPoolAddress)
                        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args underlyingAddress, ext_call.return_data[0], this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(registryAddress)
                staticcall registryAddress.0x481c6a75 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x921c86d2 with:
                        gas gas_remaining wei
                       args rewardAddress, underlyingAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6f70e66f with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), rewardAddress, underlyingAddress, 0, ext_call.return_data[0], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48930428 with:
                         gas gas_remaining wei
                        args bankAddress, underlyingAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), lendingPoolAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor32DA.field_0), uint32(stor32DA.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                            mem[388 len 0] = 0
                            call underlyingAddress with:
                               funct uint32(stor32DA.field_0)
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[388 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with uint8(stor4FF4.field_152)
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 435 len 22]
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0], this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(rewardAddress)
                    staticcall rewardAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if not ext_code.size(rewardAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    mem[388 len 0] = 0
                    call rewardAddress with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint8(stor4FF4.field_152)
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        if not return_data.size:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6f70e66f with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), rewardAddress, underlyingAddress, ext_call.return_data[0], 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x48930428 with:
                                 gas gas_remaining wei
                                args bankAddress, underlyingAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0]:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), lendingPoolAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(underlyingAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 64] = 0, lendingPoolAddress, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call underlyingAddress with:
                                       funct uint32(stor32DA.field_0)
                                         gas gas_remaining wei
                                        args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 425 len 28], mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with uint8(stor4FF4.field_152)
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                    require ext_code.size(lendingPoolAddress)
                                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args underlyingAddress, ext_call.return_data[0], this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x6f70e66f with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), rewardAddress, underlyingAddress, ext_call.return_data[0], 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x48930428 with:
                                 gas gas_remaining wei
                                args bankAddress, underlyingAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0]:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args address(this.address), lendingPoolAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(underlyingAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 64] = 0, lendingPoolAddress, Mask(224, 31, ext_call.return_data[0]) >> 31
                                    call underlyingAddress with:
                                       funct uint32(stor32DA.field_0)
                                         gas gas_remaining wei
                                        args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 425 len 28], mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with uint8(stor4FF4.field_152)
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    require ext_code.size(lendingPoolAddress)
                                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args underlyingAddress, ext_call.return_data[0], this.address, 0, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x6f70e66f with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), rewardAddress, underlyingAddress, ext_call.return_data[0], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x48930428 with:
                             gas gas_remaining wei
                            args bankAddress, underlyingAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if ext_call.return_data[0]:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), lendingPoolAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if not ext_code.size(underlyingAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 64] = 0, lendingPoolAddress, Mask(224, 31, ext_call.return_data[0]) >> 31
                                call underlyingAddress with:
                                   funct uint32(stor32DA.field_0)
                                     gas gas_remaining wei
                                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 425 len 28], mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with uint8(stor4FF4.field_152)
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(lendingPoolAddress)
                                call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args underlyingAddress, ext_call.return_data[0], this.address, 0, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
