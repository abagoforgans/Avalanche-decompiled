contract main {




// =====================  Runtime code  =====================


address registryAddress;
array of struct swapRoutes;
mapping of uint32 tokenSwapRouter;
address wethAddress;

function weth() payable {
    return wethAddress
}

function registry() payable {
    return registryAddress
}

function tokenSwapRouter(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return address(tokenSwapRouter[arg1][arg2])
}

function swapRoutes(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 < swapRoutes[arg1][arg2][arg3].field_0
    return swapRoutes[arg1][arg2][arg3][arg4].field_0
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
    if not ext_code.size(arg1):
        revert with 0, 'Subscriber: Invalid Registry'
    registryAddress = arg1
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Bad Governance'
}

function getSwapInfo(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0:
        mem[128] = swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0
        idx = 128
        s = 0
        while (32 * swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0) + 96 > idx:
            mem[idx + 32] = swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0) + 224 len floor32(swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0)]
    return address(tokenSwapRouter[address(arg1)][address(arg2)]), 
           Array(len=swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0) + floor32(swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0) + 224 len (32 * swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0) - floor32(swapRoutes[address(stor2[address(arg1)][address(arg2)])][address(arg1)][address(arg2)].field_0)])
}

function setSwapRoutes(address arg1, address arg2, address arg3, address[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Subscriber: Only Governance'
    require arg4.length
    if arg2 != mem[140 len 20]:
        revert with 0, 'Liquidator: Invalid From'
    require arg4.length - 1 < arg4.length
    if arg3 != mem[(32 * arg4.length - 1) + 140 len 20]:
        revert with 0, 'Liquidator: Invalid To'
    address(tokenSwapRouter[address(arg2)][address(arg3)]) = arg1
    swapRoutes[address(arg1)][address(arg2)][address(arg3)].field_0 = arg4.length
    if not arg4.length:
        idx = 0
        while swapRoutes[address(arg1)][address(arg2)][address(arg3)].field_0 > idx:
            swapRoutes[address(arg1)][address(arg2)][address(arg3)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            swapRoutes[address(arg1)][address(arg2)][address(arg3)][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while swapRoutes[address(arg1)][address(arg2)][address(arg3)].field_0 > idx:
            swapRoutes[address(arg1)][address(arg2)][address(arg3)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function liquidate(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0:
        require ext_code.size(arg2)
        staticcall arg2.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(tokenSwapRouter[address(arg2)][address(arg3)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 164] = address(tokenSwapRouter[address(arg2)][address(arg3)])
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 196] = arg4 + ext_call.return_data[0]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 128] = 68
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 164 len 28] = Mask(224, 0, tokenSwapRouter[address(arg2)][address(arg3)])
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 228] = 32
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 398 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, tokenSwapRouter[address(arg2)][address(arg3)]), uint32(tokenSwapRouter[address(arg2)][address(arg3)]), Mask(224, 32, arg4 + ext_call.return_data[0]) >> 32
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 384 len 4] = 0
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 356 len 0] = 0
        call arg2 with:
           funct uint32(tokenSwapRouter[address(arg2)][address(arg3)])
             gas gas_remaining wei
            args Mask(224, 32, arg4 + ext_call.return_data[0]) << 224, mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                if swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0:
                    revert with memory
                      from 128
                       len swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if not swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0:
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 296] = arg4
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 328] = arg5
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 392] = arg1
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 424] = block.timestamp
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 360] = 160
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 456] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 488 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]
                require ext_code.size(address(tokenSwapRouter[address(arg2)][address(arg3)]))
                call address(tokenSwapRouter[address(arg2)][address(arg3)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 488 len (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) - floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]), address(arg1), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292
                require return_data.size >= 32
                _241 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32
                require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292] <= 4294967296 and mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292]) + 32 <= return_data.size
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292]
                _256 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _241 + 292]
                mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _241 + 292])] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _241 + 324 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _241 + 292])]
                require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1 < mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292]
                mem[(32 * _256) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324]
                return memory
                  from (32 * _256) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324
                   len 32
            require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 402 len 22]
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 296] = arg4
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 328] = arg5
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 392] = arg1
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 424] = block.timestamp
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 360] = 160
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 456] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 488 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]
            require ext_code.size(address(tokenSwapRouter[address(arg2)][address(arg3)]))
            call address(tokenSwapRouter[address(arg2)][address(arg3)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg4, arg5, Array(len=swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 488 len (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) - floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]), address(arg1), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292
            require return_data.size >= 32
            _243 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292] <= 4294967296 and mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292]) + 32 <= return_data.size
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292]
            _257 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _243 + 292]
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _243 + 292])] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _243 + 324 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _243 + 292])]
            require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1 < mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292]
            mem[(32 * _257) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324]
            return memory
              from (32 * _257) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324
               len 32
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292] = return_data.size
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 297] = arg4
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 329] = arg5
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 393] = arg1
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 425] = block.timestamp
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 361] = 160
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 457] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 489 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]
            require ext_code.size(address(tokenSwapRouter[address(arg2)][address(arg3)]))
            call address(tokenSwapRouter[address(arg2)][address(arg3)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg4, arg5, Array(len=swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 489 len (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) - floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]), address(arg1), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293
            require return_data.size >= 32
            _245 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293] <= 4294967296 and mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293]) + 32 <= return_data.size
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293]
            _258 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _245 + 293]
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _245 + 293])] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _245 + 325 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _245 + 293])]
            require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1 < mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293]
            mem[(32 * _258) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325]
            return memory
              from (32 * _258) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325
               len 32
        require return_data.size >= 32
        if not mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 324]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 403 len 22]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 297] = arg4
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 329] = arg5
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 393] = arg1
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 425] = block.timestamp
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 361] = 160
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 457] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 489 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]
        require ext_code.size(address(tokenSwapRouter[address(arg2)][address(arg3)]))
        call address(tokenSwapRouter[address(arg2)][address(arg3)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg5, Array(len=swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 489 len (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) - floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]), address(arg1), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293
        require return_data.size >= 32
        _247 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293] <= 4294967296 and mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293]) + 32 <= return_data.size
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293]
        _259 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _247 + 293]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _247 + 293])] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _247 + 325 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _247 + 293])]
        require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1 < mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293]
        mem[(32 * _259) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325]
        return memory
          from (32 * _259) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325
           len 32
    mem[128] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
    idx = 128
    s = 0
    while (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 96 > idx:
        mem[idx + 32] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(arg2)
    staticcall arg2.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(tokenSwapRouter[address(arg2)][address(arg3)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 164] = address(tokenSwapRouter[address(arg2)][address(arg3)])
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 196] = arg4 + ext_call.return_data[0]
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 128] = 68
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 160 len 4] = approve(address arg1, uint256 arg2)
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 228] = 32
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 398 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 64] = 0, address(tokenSwapRouter[address(arg2)][address(arg3)]), Mask(224, 32, arg4 + ext_call.return_data[0]) >> 32
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 384 len 4] = 0
    call arg2 with:
       funct uint32(tokenSwapRouter[address(arg2)][address(arg3)])
         gas gas_remaining wei
        args arg4 + ext_call.return_data[0], 0, mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 356 len 4]
    if not return_data.size:
        if not ext_call.success:
            if swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0:
                revert with memory
                  from 128
                   len swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if not swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0:
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 296] = arg4
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 328] = arg5
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 392] = arg1
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 424] = block.timestamp
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 360] = 160
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 456] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 488 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]
            require ext_code.size(address(tokenSwapRouter[address(arg2)][address(arg3)]))
            call address(tokenSwapRouter[address(arg2)][address(arg3)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg4, arg5, Array(len=swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 488 len (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) - floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]), address(arg1), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292
            require return_data.size >= 32
            _532 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292] <= 4294967296 and mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292]) + 32 <= return_data.size
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292]
            _544 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _532 + 292]
            mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _532 + 292])] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _532 + 324 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _532 + 292])]
            require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1 < mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292]
            mem[(32 * _544) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324]
            return memory
              from (32 * _544) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324
               len 32
        require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 >= 32
        if not mem[128]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 402 len 22]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 296] = arg4
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 328] = arg5
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 392] = arg1
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 424] = block.timestamp
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 360] = 160
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 456] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 488 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]
        require ext_code.size(address(tokenSwapRouter[address(arg2)][address(arg3)]))
        call address(tokenSwapRouter[address(arg2)][address(arg3)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg5, Array(len=swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 488 len (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) - floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]), address(arg1), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292
        require return_data.size >= 32
        _534 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292] <= 4294967296 and mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292]) + 32 <= return_data.size
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292 len 4], Mask(224, 32, arg4) >> 32 + 292]
        _545 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _534 + 292]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _534 + 292])] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _534 + 324 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + _534 + 292])]
        require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1 < mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 292]
        mem[(32 * _545) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324]
        return memory
          from (32 * _545) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 324
           len 32
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 292] = return_data.size
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 297] = arg4
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 329] = arg5
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 393] = arg1
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 425] = block.timestamp
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 361] = 160
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 457] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 489 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]
        require ext_code.size(address(tokenSwapRouter[address(arg2)][address(arg3)]))
        call address(tokenSwapRouter[address(arg2)][address(arg3)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg5, Array(len=swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 489 len (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) - floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]), address(arg1), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293
        require return_data.size >= 32
        _536 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293] <= 4294967296 and mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293]) + 32 <= return_data.size
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293]
        _546 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _536 + 293]
        mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _536 + 293])] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _536 + 325 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _536 + 293])]
        require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1 < mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293]
        mem[(32 * _546) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325]
        return memory
          from (32 * _546) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325
           len 32
    require return_data.size >= 32
    if not mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 324]:
        revert with 0, 
                    32,
                    42,
                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 403 len 22]
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 297] = arg4
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 329] = arg5
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 393] = arg1
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 425] = block.timestamp
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 361] = 160
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 457] = swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 489 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)] = mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]
    require ext_code.size(address(tokenSwapRouter[address(arg2)][address(arg3)]))
    call address(tokenSwapRouter[address(arg2)][address(arg3)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, arg5, Array(len=swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0, data=mem[128 len floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)], mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + 489 len (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) - floor32(swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0)]), address(arg1), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293
    require return_data.size >= 32
    _538 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32
    require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293] <= 4294967296 and mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293]) + 32 <= return_data.size
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg4) >> 32 + 293]
    _547 = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _538 + 293]
    mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _538 + 293])] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _538 + 325 len floor32(mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + _538 + 293])]
    require swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1 < mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 293]
    mem[(32 * _547) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[(32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0 - 1) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325]
    return memory
      from (32 * _547) + (32 * swapRoutes[address(stor2[address(arg2)][address(arg3)])][address(arg2)][address(arg3)].field_0) + ceil32(return_data.size) + ceil32(return_data.size) + 325
       len 32
}



}
