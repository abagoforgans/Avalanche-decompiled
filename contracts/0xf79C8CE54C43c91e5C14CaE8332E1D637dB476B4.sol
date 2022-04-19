contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint32 stor1;
address owner;
uint256 stor1;
address fromTokenAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address toTokenAddress;
mapping of uint128 stor4;

function fromToken() payable {
    return fromTokenAddress
}

function toToken() payable {
    return toTokenAddress
}

function owner() payable {
    return address(owner)
}

function upgradeStatus() payable {
    return bool(uint8(stor3.field_160))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function setSwapStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if arg1 != bool(uint8(stor3.field_160)):
        Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
        emit 0x160cf140: bool(0 or uint8(arg1))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 == -1:
        stor4[msg.sender][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        37,
                        0x21544553543a3a617070726f76653a20616d6f756e74206578636565647320393620626974,
                        mem[165 len 27],
                        mem[219 len 5]
        stor4[msg.sender][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function recover(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Recovered(address(arg1), arg2);
}

function upgrade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x2153544e4b45557067726164653a3a757067726164653a2063616e6e6f7420757067726164652030,
                    mem[204 len 24]
    if not uint8(stor3.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x2153544e4b45557067726164653a3a757067726164653a2063757272656e746c79206e6f7420616363657074696e67207570677261646573,
                    mem[220 len 8]
    require ext_code.size(fromTokenAddress)
    staticcall fromTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x6453544e4b45557067726164653a3a757067726164653a206e6f7420656e6f7567682062616c616e636520696e2073656e64657227732077616c6c6574,
                    mem[225 len 3]
    require ext_code.size(toTokenAddress)
    staticcall toTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x7253544e4b45557067726164653a3a757067726164653a206e6f7420656e6f7567682062616c616e636520696e207570677261646520636f6e74726163742077616c6c6574,
                    mem[233 len 27]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(fromTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call fromTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if not ext_code.size(toTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        mem[520 len 0] = 0
        call toTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        emit Upgraded(arg1, msg.sender);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(toTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[ceil32(return_data.size) + 521 len 0] = 0
            call toTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
            emit Upgraded(arg1, msg.sender);
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(toTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[ceil32(return_data.size) + 549 len 4] = 0
            call toTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                emit Upgraded(arg1, msg.sender);
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                emit Upgraded(address rg1, uint256 rg2):
                              arg1,
                              mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                              msg.sender,
    stor0 = 1
}



}
