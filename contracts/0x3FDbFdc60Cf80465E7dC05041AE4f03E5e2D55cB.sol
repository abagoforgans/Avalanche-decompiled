contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 chainId;
uint32 stor3;
address operatorAddress;
address tokenAddress;
mapping of uint256 transfers;

function operator() payable {
    return address(operatorAddress)
}

function owner() payable {
    return owner
}

function transfers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return transfers[arg1]
}

function chainId() payable {
    return chainId
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function construct(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require not chainId
    chainId = arg1
    address(operatorAddress) = arg2
    tokenAddress = arg3
}

function calcTransferId(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, uint256 arg7, uint256 arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 288
    return sha3(address(arg1), address(arg2), arg3, arg4, address(arg5), address(arg6), arg7, arg8, arg9)
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid bridge'
    address(operatorAddress) = arg1
    emit OperatorChange(address(operatorAddress), arg1);
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

function deposit(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    if msg.sender != tx.origin:
        revert with 0, 'not an externally owned account'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg3:
        revert with 0, 'invalid server'
    if not arg1:
        revert with 0, 'invalid bridge'
    if chainId == arg2:
        revert with 0, 'invalid chain'
    if transfers[arg7]:
        revert with 0, 'access denied'
    if arg4 < arg5:
        revert with 0, 'invalid amount'
    if block.timestamp - 900 > arg6:
        revert with 0, 'not available'
    if arg6 > block.timestamp + 900:
        revert with 0, 'not available'
    if arg7 != sha3(address(this.address), address(arg1), chainId, arg2, msg.sender, address(arg3), arg4, arg5, arg6):
        revert with 0, 'invalid transfer id'
    if not arg4:
        transfers[arg7] = block.timestamp
        emit Deposit(address(arg1), arg2, arg4, arg5, arg6, msg.sender, arg3, arg7);
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
        mem[736 len 4] = 0
        mem[708 len 0] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 480, mem[708 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with address(this.address), address(arg1), chainId, arg2, msg.sender, address(arg3), arg4, arg5, arg6
            if not this.address:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[722 len 14],
                            0,
                            mem[740 len 4]
            if not arg4:
                transfers[arg7] = block.timestamp
                emit Deposit(address rg1, uint256 rg2, address rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint256 rg8):
                             address(arg1),
                             arg2,
                             arg4,
                             0,
                             arg5,
                             arg6,
                             msg.sender,
                             arg3,
                             arg7,
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[882 len 26]
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[776 len 64] = 0, address(operatorAddress), Mask(224, 32, arg4) >> 32
                call tokenAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args arg4, mem[712 len 24], 0, mem[840 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with address(this.address), address(arg1), chainId, arg2, msg.sender, address(arg3), arg4, arg5, arg6
                    if not this.address:
                        revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[886 len 22]
                else:
                    mem[808 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[808]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 887 len 22]
                transfers[arg7] = block.timestamp
                emit Deposit(address(arg1), arg2, arg4, arg5, arg6, msg.sender, arg3, arg7);
        else:
            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[644]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 723 len 22]
            if arg4:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 883 len 26]
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 777 len 64] = 0, address(operatorAddress), Mask(224, 32, arg4) >> 32
                call tokenAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args arg4, mem[ceil32(return_data.size) + 713 len 28], mem[ceil32(return_data.size) + 841 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with address(this.address), address(arg1), chainId, arg2, msg.sender, address(arg3), arg4, arg5, arg6
                    if not this.address:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 887 len 22]
                else:
                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 809]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
            transfers[arg7] = block.timestamp
            emit Deposit(address(arg1), arg2, arg4, arg5, arg6, msg.sender, arg3, arg7);
    stor1 = 1
}

function withdraw(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg3:
        revert with 0, 'invalid client'
    if not arg1:
        revert with 0, 'invalid bridge'
    if arg2 == chainId:
        revert with 0, 'invalid chain'
    if transfers[arg7]:
        revert with 0, 'access denied'
    if arg4 < arg5:
        revert with 0, 'invalid amount'
    if block.timestamp < arg6 + 1800:
        revert with 0, 'not available'
    if arg7 != sha3(address(arg1), address(this.address), arg2, chainId, address(arg3), msg.sender, arg4, arg5, arg6):
        revert with 0, 'invalid transfer id'
    if not arg5:
        transfers[arg7] = block.timestamp
        emit Withdraw(address(arg1), arg2, arg4, arg5, arg6, arg3, msg.sender, arg7);
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[718 len 26]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg5) >> 32
        mem[736 len 4] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg5) << 480, mem[708 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with address(arg1), address(this.address), arg2, chainId, address(arg3), msg.sender, arg4, arg5, arg6
            if not arg1:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[722 len 14],
                            0,
                            mem[740 len 4]
            if arg5:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[882 len 26]
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[776 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg5) >> 32
                call tokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg5) << 224, mem[840 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with address(arg1), address(this.address), arg2, chainId, address(arg3), msg.sender, arg4, arg5, arg6
                    if not arg1:
                        revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[886 len 22]
                else:
                    mem[808 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[808]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 887 len 22]
            transfers[arg7] = block.timestamp
            emit Withdraw(address(arg1), arg2, arg4, arg5, arg6, arg3, msg.sender, arg7);
        else:
            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if not arg5:
                    transfers[arg7] = block.timestamp
                    emit Withdraw(address(arg1), arg2, arg4, arg5, arg6, arg3, msg.sender, arg7);
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 883 len 26]
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 777 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg5) >> 32
                    call tokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg5) << 224, mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with address(arg1), address(this.address), arg2, chainId, address(arg3), msg.sender, arg4, arg5, arg6
                        if not arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 887 len 22]
                        transfers[arg7] = block.timestamp
                        emit Withdraw(address(arg1), arg2, arg4, arg5, arg6, arg3, msg.sender, arg7);
                    else:
                        mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 809]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        transfers[arg7] = block.timestamp
                        emit Withdraw(address rg1, uint256 rg2, address rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint256 rg8):
                                      address(arg1),
                                      arg2,
                                      arg4,
                                      arg5,
                                      arg6,
                                      mem[(2 * ceil32(return_data.size)) + 938 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      arg3,
                                      msg.sender,
                                      arg7,
            else:
                require return_data.size >= 32
                if not mem[644]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 723 len 22]
                if not arg5:
                    transfers[arg7] = block.timestamp
                    emit Withdraw(address(arg1), arg2, arg4, arg5, arg6, arg3, msg.sender, arg7);
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 883 len 26]
                    if ext_code.size(tokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 777 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg5) >> 32
                    mem[ceil32(return_data.size) + 841 len 0] = 0
                    call tokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg5) << 224, mem[ceil32(return_data.size) + 841 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with address(arg1), address(this.address), arg2, chainId, address(arg3), msg.sender, arg4, arg5, arg6
                        if not arg1:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 887 len 22]
                        transfers[arg7] = block.timestamp
                        emit Withdraw(address rg1, uint256 rg2, address rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint256 rg8):
                                      address(arg1),
                                      arg2,
                                      0,
                                      arg4,
                                      arg5,
                                      arg6,
                                      arg3,
                                      msg.sender,
                                      arg7,
                    else:
                        mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 809]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 888 len 22]
                        transfers[arg7] = block.timestamp
                        emit Withdraw(address(arg1), arg2, arg4, arg5, arg6, arg3, msg.sender, arg7);
    stor1 = 1
}



}
