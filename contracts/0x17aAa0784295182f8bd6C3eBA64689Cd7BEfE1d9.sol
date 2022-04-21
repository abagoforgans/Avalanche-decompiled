contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 chainId;
uint32 stor3;
address bridgeAddress;
uint256 stor3;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address tokenAddress;
mapping of uint256 transactions;
array of address agents;

function agents(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < agents.length
    return agents[arg1]
}

function owner() payable {
    return owner
}

function chainId() payable {
    return chainId
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return transactions[arg1]
}

function bridge() payable {
    return address(bridgeAddress)
}

function vault() payable {
    return address(vaultAddress)
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function calcSignatureHash(uint256 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return sha3(arg1, arg2)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function construct(uint256 arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require not chainId
    chainId = arg1
    address(bridgeAddress) = arg2
    address(vaultAddress) = arg3
    tokenAddress = arg4
}

function addAgent(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid agent'
    agents.length++
    agents[agents.length] = arg1
    emit AddAgent(arg1);
}

function setBridge(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid bridge'
    address(bridgeAddress) = arg1
    emit BridgeChange(address(bridgeAddress), arg1);
}

function removeAgent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= agents.length:
        revert with 0, 'invalid index'
    require agents.length - 1 < agents.length
    require arg1 < agents.length
    agents[arg1] = agents[agents.length]
    require agents.length
    agents[agents.length] = 0
    agents.length--
    emit RemoveAgent(agents[arg1]);
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

function validateSignature(address arg1, uint256 arg2, bytes32 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg4.length) + 128] = 64
    if arg4.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x6f45434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg4.length) + 418 len 30]
    revert with 0, 
                32,
                34,
                0x6c45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg4.length) + 418 len 30]
}

function transferToVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
        mem[324 len 0] = 0
        call tokenAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    stor1 = 1
}

function processWithdraw(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes32 arg8, bytes arg9) payable {
    require calldata.size - 4 >= 288
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + arg9.length + 36 <= calldata.size
    mem[96] = arg9.length
    mem[128 len arg9.length] = arg9[all]
    mem[arg9.length + 128] = 0
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if agents.length < 2:
        revert with 0, 'invalid agents'
    if arg4 < arg5:
        revert with 0, 'invalid amount'
    if arg9.length != 65 * agents.length:
        revert with 0, 'invalid length'
    if 0 < agents.length:
        mem[ceil32(arg9.length) + 128] = 65
        mem[ceil32(arg9.length) + 160 len 65] = call.data[calldata.size len 65]
        idx = 0
        while idx < 65:
            require idx < arg9.length
            require idx < Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len -arg9.length + ceil32(arg9.length)]
            mem[idx + ceil32(arg9.length) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        if Mask(8 * -ceil32(arg9.length) + arg9.length + 32, 0, 0), mem[arg9.length + 160 len -arg9.length + ceil32(arg9.length)] != 65:
            revert with 0, 'ECDSA: invalid signature length'
        if mem[ceil32(arg9.length) + 192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 
                        32,
                        34,
                        0x6f45434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                        mem[ceil32(arg9.length) + 546 len 30]
        revert with 0, 
                    32,
                    34,
                    0x6c45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                    mem[ceil32(arg9.length) + 546 len 30]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(bridgeAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > arg5:
        mem[ceil32(arg9.length) + 128] = 41
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(bridgeAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - arg5 > ext_call.return_data[0]:
            revert with 0, 
                        32,
                        41,
                        0x735361666545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                        mem[ceil32(arg9.length) + 201 len 23],
                        mem[ceil32(arg9.length) + 247 len 9]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(arg9.length) + 494 len 26]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(arg9.length) + 388 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg5) >> 32
        mem[ceil32(arg9.length) + 452 len 0] = 0
        call tokenAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(224, 32, arg5) << 224, mem[ceil32(arg9.length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                if arg9.length > 0:
                    revert with arg9[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg9.length > 0:
                require arg9.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg9.length) + 498 len 22]
        else:
            mem[ceil32(arg9.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(arg9.length) + 420]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg9.length) + ceil32(return_data.size) + 499 len 22]
    else:
        if ext_call.return_data[0] < arg5:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(bridgeAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg5 < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(arg9.length) + 128] = 68
            mem[ceil32(arg9.length) + 160 len 4] = approve(address rg1, uint256 rg2)
            mem[64] = ceil32(arg9.length) + 292
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg9.length) + 398 len 26]
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg9.length) + 292 len floor32(0, 68)] = mem[ceil32(arg9.length) + 160 len floor32(0, 68)]
            mem[ceil32(arg9.length) + floor32(0, 68) + 320 len 4] = mem[ceil32(arg9.length) + floor32(0, 68) + 188 len 4]
            call tokenAddress.mem[ceil32(arg9.length) + 292 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg9.length) + 296 len 0, 68 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg9.length > 0:
                        revert with arg9[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg9.length > 0:
                    require arg9.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg9.length) + 402 len 22]
            else:
                mem[ceil32(arg9.length) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(arg9.length) + 324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg9.length) + ceil32(return_data.size) + 403 len 22]
    require ext_code.size(address(bridgeAddress))
    call address(bridgeAddress).withdraw(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
         gas gas_remaining wei
        args address(arg1), arg2, address(arg3), arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require not transactions[arg7]
    transactions[arg7] = arg8
    stor1 = 1
}



}
