contract main {




// =====================  Runtime code  =====================


const proxiableUUID = code.data[10198 len 32]


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of struct feeReceivers;
mapping of address stor152;
array of struct stor153;
mapping of address amms;
address tokenImplementationAddress;
address sub_39cfc386Address;
address ammImplementationAddress;

function feeReceivers(address arg1) payable {
    require calldata.size - 4 >= 32
    return address(feeReceivers[arg1].field_0), uint8(feeReceivers[arg1].field_0), bool(uint8(feeReceivers[arg1].field_168))
}

function tokenImplementation() payable {
    return tokenImplementationAddress
}

function sub_39cfc386(?) payable {
    return sub_39cfc386Address
}

function amms(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return amms[arg1]
}

function owner() payable {
    return owner
}

function getLogicAddress() payable {
    return address(stor[code.data[10198 len 32]].field_0)
}

function ammImplementation() payable {
    return ammImplementationAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateAmmImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg1:
        revert with 0, 'Invalid newAmmImplementation'
    ammImplementationAddress = arg1
    emit AmmImplementationUpdated(arg1);
}

function updateMarketImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg1:
        revert with 0, 'Invalid newMarketImplementation'
    sub_39cfc386Address = arg1
    emit MarketImplementationUpdated(arg1);
}

function updateTokenImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg1:
        revert with 0, 'Invalid newTokenImplementation'
    tokenImplementationAddress = arg1
    emit TokenImplementationUpdated(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[10120 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_efbda661(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor152[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_fb8a998a(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg2:
        revert with 0, 'Invalid refundAddress'
    require ext_code.size(arg1)
    call arg1.0xaaec7756 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MarketDestroyed(arg1);
}

function sub_0c307a65(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg2:
        revert with 0, 'Invalid newMarketImplementation'
    require ext_code.size(arg1)
    call arg1.updateImplementation(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addFeeReceiver(address arg1, address arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg1:
        revert with 0, 'Invalid fee receiver address'
    if not arg2:
        revert with 0, 'Invalid secondary address'
    if arg3 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[10341 len 38], mem[202 len 26]
    address(feeReceivers[address(arg1)].field_0) = arg2
    uint8(feeReceivers[address(arg1)].field_160) = arg3
    Mask(88, 0, feeReceivers[address(arg1)].field_168) = 1
}

function updateMarketsRegistryImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[10158 len 40], mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.0x52d1902d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if code.data[10198 len 32] != ext_call.return_data[0]:
        revert with 0, 'Not compatible'
    address(stor[code.data[10198 len 32]].field_0) = arg1
    Mask(96, 0, stor[code.data[10198 len 32]].field_160) = 0
    emit CodeAddressUpdated(arg1);
}

function getMarketsByAssetPair(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint256(stor153[arg1].field_0):
        mem[(32 * uint256(stor153[arg1].field_0)) + 128] = 32
        mem[(32 * uint256(stor153[arg1].field_0)) + 160] = uint256(stor153[arg1].field_0)
        mem[(32 * uint256(stor153[arg1].field_0)) + 192 len floor32(uint256(stor153[arg1].field_0))] = mem[128 len floor32(uint256(stor153[arg1].field_0))]
        return memory
          from (32 * uint256(stor153[arg1].field_0)) + 128
           len (96 * uint256(stor153[arg1].field_0)) + 64
    mem[128] = address(stor153[arg1].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor153[arg1].field_0)) + 96 > idx:
        mem[idx + 32] = address(stor153[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor153[arg1].field_0)) + 192 len floor32(uint256(stor153[arg1].field_0))] = mem[128 len floor32(uint256(stor153[arg1].field_0))]
    return Array(len=uint256(stor153[arg1].field_0), data=mem[128 len floor32(uint256(stor153[arg1].field_0))], mem[(32 * uint256(stor153[arg1].field_0)) + floor32(uint256(stor153[arg1].field_0)) + 192 len (32 * uint256(stor153[arg1].field_0)) - floor32(uint256(stor153[arg1].field_0))]), 
}

function sub_1f4bce20(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg1:
        revert with 0, 'Invalid _priceOracle'
    if not arg2:
        revert with 0, 'Invalid _paymentToken'
    if not arg3:
        revert with 0, 'Invalid _collateralToken'
    if amms[address(arg3)][arg2]:
        revert with 0, 'AMM name already registered'
    create contract with 0 wei
                    code: code.data[9798 len 322], ammImplementationAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf368fa78 with:
         gas gas_remaining wei
        args this.address, address(arg1), address(arg2), address(arg3), tokenImplementationAddress, arg4 << 240, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    amms[address(arg3)][arg2] = address(create.new_address)
    emit AmmCreated(address(create.new_address));
    return address(create.new_address)
}

function sub_eb9d6b2a(?) payable {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10263 len 32]
    if not arg2:
        revert with 0, 'Invalid _collateralToken'
    if not arg3:
        revert with 0, 'Invalid _paymentToken'
    if stor152[arg1[all]]:
        revert with 0, 'Market name already registered'
    create contract with 0 wei
                    code: code.data[9798 len 322], sub_39cfc386Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require arg4 <= 1
    mem[452 len arg1.length] = arg1[all]
    mem[arg1.length + 452] = 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x900dd17c with:
         gas gas_remaining wei
        args 0, 320, address(arg2), address(arg3), arg4, arg5, arg6, arg7 << 240, arg8 << 240, arg9 << 240, tokenImplementationAddress, arg1.length, arg1[all], mem[arg1.length + 452 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x906e93f6 with:
         gas gas_remaining wei
        args arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor152[arg1[all]] = address(create.new_address)
    uint256(stor153[address(arg2)][arg3].field_0)++
    address(stor153[address(arg2)][arg3][uint256(stor153[address(arg2)][arg3].field_0)].field_0) = address(create.new_address)
    emit MarketCreated(Array(len=arg1.length, data=arg1[all]), address(create.new_address), uint256(stor153[address(arg2)][arg3].field_0) - 1);
    return address(create.new_address)
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[10295 len 46], mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0, 'Invalid _tokenImplementation'
    if not arg2:
        revert with 0, 'Invalid _marketImplementation'
    if not arg3:
        revert with 0, 'Invalid _ammImplementation'
    tokenImplementationAddress = arg1
    sub_39cfc386Address = arg2
    ammImplementationAddress = arg3
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[10295 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[10295 len 46], mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[10295 len 46], mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
}

function recoverTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'Invalid destination'
    if not uint8(feeReceivers[msg.sender].field_168):
        if owner != msg.sender:
            revert with 0, 32, 57, code.data[10379 len 57], mem[413 len 7]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == owner:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[388 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 32, 42, code.data[10436 len 42], mem[ceil32(return_data.size) + 499 len 22]
        emit TokensRecovered(ext_call.return_data[0], arg1, arg2);
    else:
        if uint8(feeReceivers[msg.sender].field_160) <= 0:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, feeReceivers[msg.sender].field_0), uint32(feeReceivers[msg.sender].field_0), ext_call.return_data[0 len 28]
                call arg1 with:
                   funct uint32(feeReceivers[msg.sender].field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 32, 42, code.data[10436 len 42], mem[ceil32(return_data.size) + 563 len 22]
                emit TokensRecovered(ext_call.return_data[0], arg1, address(feeReceivers[msg.sender].field_0));
        else:
            if not ext_call.return_data[0]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, 0
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, 0) << 256, mem[516 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    emit TokensRecovered(0, arg1, arg2);
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[616 len 64] = 0, address(feeReceivers[msg.sender].field_0), ext_call.return_data[0 len 28]
                        call arg1 with:
                           funct uint32(feeReceivers[msg.sender].field_0)
                             gas gas_remaining wei
                            args ext_call.return_data[0], Mask(224, 32, address(feeReceivers[msg.sender].field_0), ext_call.return_data[0 len 28]) >> 32, mem[680 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[648]:
                                    revert with 0, 32, 42, code.data[10436 len 42], mem[ceil32(return_data.size) + 727 len 22]
                        emit TokensRecovered(ext_call.return_data[0], arg1, address(feeReceivers[msg.sender].field_0));
                else:
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 32, 42, code.data[10436 len 42], mem[ceil32(return_data.size) + 563 len 22]
                    emit TokensRecovered(0, arg1, arg2);
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(feeReceivers[msg.sender].field_0), ext_call.return_data[0 len 28]
                        call arg1 with:
                           funct uint32(feeReceivers[msg.sender].field_0)
                             gas gas_remaining wei
                            args ext_call.return_data[0], Mask(224, 32, address(feeReceivers[msg.sender].field_0), ext_call.return_data[0 len 28]) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 32, 42, code.data[10436 len 42], mem[(2 * ceil32(return_data.size)) + 728 len 22]
                        emit TokensRecovered(ext_call.return_data[0], arg1, address(feeReceivers[msg.sender].field_0));
            else:
                if uint8(feeReceivers[msg.sender].field_0) * ext_call.return_data[0] / ext_call.return_data[0] != uint8(feeReceivers[msg.sender].field_0):
                    revert with 0, 32, 33, code.data[10230 len 33], mem[389 len 31]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100) >> 32
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100) << 224, mem[516 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    emit TokensRecovered((uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100), arg1, arg2);
                    if uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100):
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[616 len 64] = 0, address(feeReceivers[msg.sender].field_0), Mask(224, 32, ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100)) >> 32
                        call arg1 with:
                           funct uint32(feeReceivers[msg.sender].field_0)
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100), Mask(224, 32, address(feeReceivers[msg.sender].field_0), Mask(224, 32, ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100)) >> 32) >> 32, mem[680 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[648 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[648]:
                                    revert with 0, 32, 42, code.data[10436 len 42], mem[ceil32(return_data.size) + 727 len 22]
                        emit TokensRecovered((ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100)), arg1, address(feeReceivers[msg.sender].field_0));
                else:
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 32, 42, code.data[10436 len 42], mem[ceil32(return_data.size) + 563 len 22]
                    emit TokensRecovered((uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100), arg1, arg2);
                    if uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100):
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(feeReceivers[msg.sender].field_0), Mask(224, 32, ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100)) >> 32
                        call arg1 with:
                           funct uint32(feeReceivers[msg.sender].field_0)
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100), Mask(224, 32, address(feeReceivers[msg.sender].field_0), Mask(224, 32, ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 32, 42, code.data[10436 len 42], mem[(2 * ceil32(return_data.size)) + 728 len 22]
                        emit TokensRecovered((ext_call.return_data[0] - (uint8(feeReceivers[msg.sender].field_160) * ext_call.return_data[0] / 100)), arg1, address(feeReceivers[msg.sender].field_0));
}



}
