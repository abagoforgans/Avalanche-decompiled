contract main {




// =====================  Runtime code  =====================


#
#  - removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6)
#  - swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, bool arg7, uint8 arg8, bytes32 arg9, bytes32 arg10)
#  - swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#  - swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6)
#  - swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#  - removeLiquidityETHWithPermit(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, bool arg7, uint8 arg8, bytes32 arg9, bytes32 arg10)
#  - addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8)
#  - addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6)
#  - swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#  - _fallback()
#
address factoryAddress;
address WETHAddress;

function WETH() {
    return WETHAddress
}

function factory() {
    return factoryAddress
}

function quote(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if not arg3:
        if not arg2:
            revert with 0, 18
        return (0 / arg2)
    if arg1 and arg3 > -1 / arg1:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    if arg1 * arg3 / arg3 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not arg2:
        revert with 0, 18
    return (arg1 * arg3 / arg2)
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if arg1 and 998 > -1 / arg1:
        revert with 0, 17
    if 998 * arg1 / 998 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not arg3:
        if arg2 and 1000 > -1 / arg2:
            revert with 0, 17
        if 1000 * arg2 / 1000 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * arg2 > !(998 * arg1):
            revert with 0, 17
        if (1000 * arg2) + (998 * arg1) < 1000 * arg2:
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * arg2) + (998 * arg1):
            revert with 0, 18
        return (0 / (1000 * arg2) + (998 * arg1))
    if 998 * arg1 and arg3 > -1 / 998 * arg1:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    if 998 * arg1 * arg3 / arg3 != 998 * arg1:
        revert with 0, 'ds-math-mul-overflow'
    if arg2 and 1000 > -1 / arg2:
        revert with 0, 17
    if 1000 * arg2 / 1000 != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * arg2 > !(998 * arg1):
        revert with 0, 17
    if (1000 * arg2) + (998 * arg1) < 1000 * arg2:
        revert with 0, 'ds-math-add-overflow'
    if not (1000 * arg2) + (998 * arg1):
        revert with 0, 18
    return (998 * arg1 * arg3 / (1000 * arg2) + (998 * arg1))
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if not arg1:
        if arg3 < arg1:
            revert with 0, 17
        if arg3 - arg1 > arg3:
            revert with 0, 'ds-math-sub-underflow'
        if arg3 - arg1 and 998 > -1 / arg3 - arg1:
            revert with 0, 17
        if (998 * arg3) - (998 * arg1) / 998 != arg3 - arg1:
            revert with 0, 'ds-math-mul-overflow'
        if not (998 * arg3) - (998 * arg1):
            revert with 0, 18
        if 0 / (998 * arg3) - (998 * arg1) > -2:
            revert with 0, 17
        if (0 / (998 * arg3) - (998 * arg1)) + 1 < 0 / (998 * arg3) - (998 * arg1):
            revert with 0, 'ds-math-add-overflow'
        return ((0 / (998 * arg3) - (998 * arg1)) + 1)
    if arg2 and arg1 > -1 / arg2:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg2 * arg1 / arg1 != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if arg2 * arg1 and 1000 > -1 / arg2 * arg1:
        revert with 0, 17
    if 1000 * arg2 * arg1 / 1000 != arg2 * arg1:
        revert with 0, 'ds-math-mul-overflow'
    if arg3 < arg1:
        revert with 0, 17
    if arg3 - arg1 > arg3:
        revert with 0, 'ds-math-sub-underflow'
    if arg3 - arg1 and 998 > -1 / arg3 - arg1:
        revert with 0, 17
    if (998 * arg3) - (998 * arg1) / 998 != arg3 - arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not (998 * arg3) - (998 * arg1):
        revert with 0, 18
    if 1000 * arg2 * arg1 / (998 * arg3) - (998 * arg1) > -2:
        revert with 0, 17
    if (1000 * arg2 * arg1 / (998 * arg3) - (998 * arg1)) + 1 < 1000 * arg2 * arg1 / (998 * arg3) - (998 * arg1):
        revert with 0, 'ds-math-add-overflow'
    return ((1000 * arg2 * arg1 / (998 * arg3) - (998 * arg1)) + 1)
}

function removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg6 == arg6
    if arg7 < block.timestamp:
        revert with 0, 'PancakeRouter: EXPIRED'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).burn(address arg1) with:
             gas gas_remaining wei
            args arg6
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).burn(address arg1) with:
             gas gas_remaining wei
            args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg1 == arg2:
        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if arg1 == arg1:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'PancakeRouter: INSUFFICIENT_A_AMOUNT'
            if ext_call.return_data[32] < arg5:
                revert with 0, 'PancakeRouter: INSUFFICIENT_B_AMOUNT'
            return ext_call.return_data[0], ext_call.return_data[32]
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'PancakeRouter: INSUFFICIENT_A_AMOUNT'
            if ext_call.return_data[32] < arg5:
                revert with 0, 'PancakeRouter: INSUFFICIENT_B_AMOUNT'
            return ext_call.return_data[0], ext_call.return_data[32]
    if ext_call.return_data[32] < arg4:
        revert with 0, 'PancakeRouter: INSUFFICIENT_A_AMOUNT'
    if ext_call.return_data[0] < arg5:
        revert with 0, 'PancakeRouter: INSUFFICIENT_B_AMOUNT'
    return ext_call.return_data[32], ext_call.return_data[0]
}

function removeLiquidityWithPermit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, bool arg8, uint8 arg9, bytes32 arg10, bytes32 arg11) {
    require calldata.size - 4 >= 352
    require arg1 == arg1
    require arg2 == arg2
    require arg6 == arg6
    require arg8 == arg8
    require arg9 == arg9
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        if arg8:
            call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).0xd505accf with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), -1, arg7, arg9 << 248, arg10, arg11
        else:
            call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).0xd505accf with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3, arg7, arg9 << 248, arg10, arg11
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        if arg8:
            call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).0xd505accf with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), -1, arg7, arg9 << 248, arg10, arg11
        else:
            call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).0xd505accf with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3, arg7, arg9 << 248, arg10, arg11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg7 < block.timestamp:
        revert with 0, 'PancakeRouter: EXPIRED'
    if arg1 == arg2:
        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).burn(address arg1) with:
             gas gas_remaining wei
            args arg6
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
        call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).burn(address arg1) with:
             gas gas_remaining wei
            args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg1 == arg2:
        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if arg1 == arg1:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'PancakeRouter: INSUFFICIENT_A_AMOUNT'
            if ext_call.return_data[32] < arg5:
                revert with 0, 'PancakeRouter: INSUFFICIENT_B_AMOUNT'
            return ext_call.return_data[0], ext_call.return_data[32]
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'PancakeRouter: INSUFFICIENT_A_AMOUNT'
            if ext_call.return_data[32] < arg5:
                revert with 0, 'PancakeRouter: INSUFFICIENT_B_AMOUNT'
            return ext_call.return_data[0], ext_call.return_data[32]
    if ext_call.return_data[32] < arg4:
        revert with 0, 'PancakeRouter: INSUFFICIENT_A_AMOUNT'
    if ext_call.return_data[0] < arg5:
        revert with 0, 'PancakeRouter: INSUFFICIENT_B_AMOUNT'
    return ext_call.return_data[32], ext_call.return_data[0]
}

function getAmountsIn(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if arg2.length < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    if arg2.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg2.length
    mem[64] = ceil32(32 * arg2.length) + (32 * arg2.length) + 129
    if not arg2.length:
        if arg2.length < 1:
            revert with 0, 17
        if arg2.length - 1 >= arg2.length:
            revert with 0, 50
        mem[(32 * arg2.length - 1) + ceil32(32 * arg2.length) + 129] = arg1
        if arg2.length < 1:
            revert with 0, 17
        idx = mem[96] - 1
        while idx:
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[96]:
                revert with 0, 50
            _2469 = mem[(32 * idx - 1) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            _2474 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _2508 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_2474)
                    _2509 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2511 = sha3(mem[_2509 + 32 len mem[_2509]])
                    mem[_2508 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2508 + 105] = Mask(160, 96, factoryAddress)
                    mem[_2508 + 125] = _2511
                    mem[_2508 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2508 + 72] = 85
                    if address(_2469) == address(_2474):
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(_2469) < address(_2474):
                        if not address(_2469):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_2508 + 221] = address(_2469)
                        mem[_2508 + 241] = address(_2474)
                        mem[_2508 + 189] = 40
                        mem[_2508 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2508 + 294] = Mask(160, 96, factoryAddress)
                        mem[_2508 + 314] = sha3(address(_2469), address(_2474))
                        mem[_2508 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_2508 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2469), address(_2474)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_2469), address(_2474)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_2474):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_2508 + 221] = address(_2474)
                        mem[_2508 + 241] = address(_2469)
                        mem[_2508 + 189] = 40
                        mem[_2508 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2508 + 294] = Mask(160, 96, factoryAddress)
                        mem[_2508 + 314] = sha3(address(_2474), address(_2469))
                        mem[_2508 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_2508 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2474), address(_2469)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_2474), address(_2469)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                    mem[_2508 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2508 + ceil32(return_data.size) + 378
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _2514 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _2515 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2517 = sha3(mem[_2515 + 32 len mem[_2515]])
                    mem[_2514 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2514 + 105] = Mask(160, 96, factoryAddress)
                    mem[_2514 + 125] = _2517
                    mem[_2514 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2514 + 72] = 85
                    if address(_2469) == address(_2474):
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(_2469) < address(_2474):
                        if not address(_2469):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_2514 + 221] = address(_2469)
                        mem[_2514 + 241] = address(_2474)
                        mem[_2514 + 189] = 40
                        mem[_2514 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2514 + 294] = Mask(160, 96, factoryAddress)
                        mem[_2514 + 314] = sha3(address(_2469), address(_2474))
                        mem[_2514 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_2514 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2469), address(_2474)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_2469), address(_2474)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_2474):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_2514 + 221] = address(_2474)
                        mem[_2514 + 241] = address(_2469)
                        mem[_2514 + 189] = 40
                        mem[_2514 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2514 + 294] = Mask(160, 96, factoryAddress)
                        mem[_2514 + 314] = sha3(address(_2474), address(_2469))
                        mem[_2514 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_2514 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2474), address(_2469)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_2474), address(_2469)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                    mem[_2514 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2514 + ceil32(return_data.size) + 378
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if idx >= mem[ceil32(32 * arg2.length) + 97]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if address(_2469) == address(_2469):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        if ext_call.return_data[50 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                            revert with 0, 17
                        if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                    else:
                        if ext_call.return_data[18 len 14] and mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / mem[(32 * idx) + ceil32(32 * arg2.length) + 129] != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1000 > -1 / ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        if ext_call.return_data[18 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                            revert with 0, 17
                        if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                    else:
                        if ext_call.return_data[50 len 14] and mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / mem[(32 * idx) + ceil32(32 * arg2.length) + 129] != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1000 > -1 / ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _2520 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_2474)
                    _2521 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2523 = sha3(mem[_2521 + 32 len mem[_2521]])
                    mem[_2520 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2520 + 105] = Mask(160, 96, factoryAddress)
                    mem[_2520 + 125] = _2523
                    mem[_2520 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2520 + 72] = 85
                    if address(_2469) == address(_2474):
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(_2469) < address(_2474):
                        if not address(_2469):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_2520 + 221] = address(_2469)
                        mem[_2520 + 241] = address(_2474)
                        mem[_2520 + 189] = 40
                        mem[_2520 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2520 + 294] = Mask(160, 96, factoryAddress)
                        mem[_2520 + 314] = sha3(address(_2469), address(_2474))
                        mem[_2520 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_2520 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2469), address(_2474)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_2469), address(_2474)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_2474):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_2520 + 221] = address(_2474)
                        mem[_2520 + 241] = address(_2469)
                        mem[_2520 + 189] = 40
                        mem[_2520 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2520 + 294] = Mask(160, 96, factoryAddress)
                        mem[_2520 + 314] = sha3(address(_2474), address(_2469))
                        mem[_2520 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_2520 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2474), address(_2469)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_2474), address(_2469)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                    mem[_2520 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2520 + ceil32(return_data.size) + 378
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _2526 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _2527 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2529 = sha3(mem[_2527 + 32 len mem[_2527]])
                    mem[_2526 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2526 + 105] = Mask(160, 96, factoryAddress)
                    mem[_2526 + 125] = _2529
                    mem[_2526 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2526 + 72] = 85
                    if address(_2469) == address(_2474):
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(_2469) < address(_2474):
                        if not address(_2469):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_2526 + 221] = address(_2469)
                        mem[_2526 + 241] = address(_2474)
                        mem[_2526 + 189] = 40
                        mem[_2526 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2526 + 294] = Mask(160, 96, factoryAddress)
                        mem[_2526 + 314] = sha3(address(_2469), address(_2474))
                        mem[_2526 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_2526 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2469), address(_2474)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_2469), address(_2474)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_2474):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_2526 + 221] = address(_2474)
                        mem[_2526 + 241] = address(_2469)
                        mem[_2526 + 189] = 40
                        mem[_2526 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2526 + 294] = Mask(160, 96, factoryAddress)
                        mem[_2526 + 314] = sha3(address(_2474), address(_2469))
                        mem[_2526 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_2526 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2474), address(_2469)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_2474), address(_2469)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                    mem[_2526 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2526 + ceil32(return_data.size) + 378
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if idx >= mem[ceil32(32 * arg2.length) + 97]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if address(_2469) == address(_2474):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        if ext_call.return_data[50 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                            revert with 0, 17
                        if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                    else:
                        if ext_call.return_data[18 len 14] and mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 18
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / mem[(32 * idx) + ceil32(32 * arg2.length) + 129] != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1000 > -1 / ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        if ext_call.return_data[18 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                            revert with 0, 17
                        if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                    else:
                        if ext_call.return_data[50 len 14] and mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 18
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / mem[(32 * idx) + ceil32(32 * arg2.length) + 129] != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1000 > -1 / ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 'ds-math-add-overflow'
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        mem[mem[64]] = 32
        _2468 = mem[ceil32(32 * arg2.length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * arg2.length) + 97]
        mem[mem[64] + 64 len 32 * _2468] = mem[ceil32(32 * arg2.length) + 129 len 32 * _2468]
        return 32, mem[mem[64] + 32 len (32 * _2468) + 32]
    mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    if arg2.length < 1:
        revert with 0, 17
    if arg2.length - 1 >= arg2.length:
        revert with 0, 50
    mem[(32 * arg2.length - 1) + ceil32(32 * arg2.length) + 129] = arg1
    if arg2.length < 1:
        revert with 0, 17
    idx = mem[96] - 1
    while idx:
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= mem[96]:
            revert with 0, 50
        _2472 = mem[(32 * idx - 1) + 128]
        if idx >= mem[96]:
            revert with 0, 50
        _2475 = mem[(32 * idx) + 128]
        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
            if not mem[(32 * idx - 1) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                _2532 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_2475)
                _2533 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2535 = sha3(mem[_2533 + 32 len mem[_2533]])
                mem[_2532 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2532 + 105] = Mask(160, 96, factoryAddress)
                mem[_2532 + 125] = _2535
                mem[_2532 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                mem[_2532 + 72] = 85
                if address(_2472) == address(_2475):
                    revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                if address(_2472) < address(_2475):
                    if not address(_2472):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_2532 + 221] = address(_2472)
                    mem[_2532 + 241] = address(_2475)
                    mem[_2532 + 189] = 40
                    mem[_2532 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2532 + 294] = Mask(160, 96, factoryAddress)
                    mem[_2532 + 314] = sha3(address(_2472), address(_2475))
                    mem[_2532 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2532 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2472), address(_2475)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_2472), address(_2475)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not address(_2475):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_2532 + 221] = address(_2475)
                    mem[_2532 + 241] = address(_2472)
                    mem[_2532 + 189] = 40
                    mem[_2532 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2532 + 294] = Mask(160, 96, factoryAddress)
                    mem[_2532 + 314] = sha3(address(_2475), address(_2472))
                    mem[_2532 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2532 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2475), address(_2472)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_2475), address(_2472)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                mem[_2532 + 378 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2532 + ceil32(return_data.size) + 378
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                _2538 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _2539 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2541 = sha3(mem[_2539 + 32 len mem[_2539]])
                mem[_2538 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2538 + 105] = Mask(160, 96, factoryAddress)
                mem[_2538 + 125] = _2541
                mem[_2538 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                mem[_2538 + 72] = 85
                if address(_2472) == address(_2475):
                    revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                if address(_2472) < address(_2475):
                    if not address(_2472):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_2538 + 221] = address(_2472)
                    mem[_2538 + 241] = address(_2475)
                    mem[_2538 + 189] = 40
                    mem[_2538 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2538 + 294] = Mask(160, 96, factoryAddress)
                    mem[_2538 + 314] = sha3(address(_2472), address(_2475))
                    mem[_2538 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2538 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2472), address(_2475)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_2472), address(_2475)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not address(_2475):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_2538 + 221] = address(_2475)
                    mem[_2538 + 241] = address(_2472)
                    mem[_2538 + 189] = 40
                    mem[_2538 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2538 + 294] = Mask(160, 96, factoryAddress)
                    mem[_2538 + 314] = sha3(address(_2475), address(_2472))
                    mem[_2538 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2538 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2475), address(_2472)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_2475), address(_2472)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                mem[_2538 + 378 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2538 + ceil32(return_data.size) + 378
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if idx >= mem[ceil32(32 * arg2.length) + 97]:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] <= 0:
                revert with 0, 'PancakeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
            if address(_2472) == address(_2472):
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    if ext_call.return_data[50 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                        revert with 0, 17
                    if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                else:
                    if ext_call.return_data[18 len 14] and mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 18
                    if ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / mem[(32 * idx) + ceil32(32 * arg2.length) + 129] != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1000 > -1 / ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    if ext_call.return_data[18 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                        revert with 0, 17
                    if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                else:
                    if ext_call.return_data[50 len 14] and mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 18
                    if ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / mem[(32 * idx) + ceil32(32 * arg2.length) + 129] != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1000 > -1 / ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
        else:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                _2544 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_2475)
                _2545 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2547 = sha3(mem[_2545 + 32 len mem[_2545]])
                mem[_2544 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2544 + 105] = Mask(160, 96, factoryAddress)
                mem[_2544 + 125] = _2547
                mem[_2544 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                mem[_2544 + 72] = 85
                if address(_2472) == address(_2475):
                    revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                if address(_2472) < address(_2475):
                    if not address(_2472):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_2544 + 221] = address(_2472)
                    mem[_2544 + 241] = address(_2475)
                    mem[_2544 + 189] = 40
                    mem[_2544 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2544 + 294] = Mask(160, 96, factoryAddress)
                    mem[_2544 + 314] = sha3(address(_2472), address(_2475))
                    mem[_2544 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2544 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2472), address(_2475)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_2472), address(_2475)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not address(_2475):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_2544 + 221] = address(_2475)
                    mem[_2544 + 241] = address(_2472)
                    mem[_2544 + 189] = 40
                    mem[_2544 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2544 + 294] = Mask(160, 96, factoryAddress)
                    mem[_2544 + 314] = sha3(address(_2475), address(_2472))
                    mem[_2544 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2544 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2475), address(_2472)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_2475), address(_2472)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                mem[_2544 + 378 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2544 + ceil32(return_data.size) + 378
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                _2550 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _2551 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2553 = sha3(mem[_2551 + 32 len mem[_2551]])
                mem[_2550 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2550 + 105] = Mask(160, 96, factoryAddress)
                mem[_2550 + 125] = _2553
                mem[_2550 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                mem[_2550 + 72] = 85
                if address(_2472) == address(_2475):
                    revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                if address(_2472) < address(_2475):
                    if not address(_2472):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_2550 + 221] = address(_2472)
                    mem[_2550 + 241] = address(_2475)
                    mem[_2550 + 189] = 40
                    mem[_2550 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2550 + 294] = Mask(160, 96, factoryAddress)
                    mem[_2550 + 314] = sha3(address(_2472), address(_2475))
                    mem[_2550 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2550 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2472), address(_2475)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_2472), address(_2475)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not address(_2475):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_2550 + 221] = address(_2475)
                    mem[_2550 + 241] = address(_2472)
                    mem[_2550 + 189] = 40
                    mem[_2550 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2550 + 294] = Mask(160, 96, factoryAddress)
                    mem[_2550 + 314] = sha3(address(_2475), address(_2472))
                    mem[_2550 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_2550 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_2475), address(_2472)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_2475), address(_2472)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                mem[_2550 + 378 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2550 + ceil32(return_data.size) + 378
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if idx >= mem[ceil32(32 * arg2.length) + 97]:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] <= 0:
                revert with 0, 'PancakeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
            if address(_2472) == address(_2475):
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    if ext_call.return_data[50 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                        revert with 0, 17
                    if (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (0 / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                else:
                    if ext_call.return_data[18 len 14] and mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > -1 / ext_call.return_data[18 len 14]:
                        revert with 0, 17
                    if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 18
                    if ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / mem[(32 * idx) + ceil32(32 * arg2.length) + 129] != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1000 > -1 / ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[50 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                        revert with 0, 17
                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[50 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    if ext_call.return_data[18 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                        revert with 0, 17
                    if (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (0 / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
                else:
                    if ext_call.return_data[50 len 14] and mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if not mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 18
                    if ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / mem[(32 * idx) + ceil32(32 * arg2.length) + 129] != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1000 > -1 / ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 998 > -1 / ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) / 998 != ext_call.return_data[18 len 14] - mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]) > -2:
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 'ds-math-add-overflow'
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + ceil32(32 * arg2.length) + 129] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + ceil32(32 * arg2.length) + 129] / (998 * ext_call.return_data[18 len 14]) - (998 * mem[(32 * idx) + ceil32(32 * arg2.length) + 129])) + 1
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    mem[mem[64]] = 32
    _2471 = mem[ceil32(32 * arg2.length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * arg2.length) + 97]
    mem[mem[64] + 64 len 32 * _2471] = mem[ceil32(32 * arg2.length) + 129 len 32 * _2471]
    return 32, mem[mem[64] + 32 len (32 * _2471) + 32]
}

function getAmountsOut(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if arg2.length < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    if arg2.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg2.length
    mem[64] = ceil32(32 * arg2.length) + (32 * arg2.length) + 129
    if not arg2.length:
        if 0 < arg2.length:
            mem[ceil32(32 * arg2.length) + 129] = arg1
            if var128001 < 1:
                revert with 0, 17
            if var132002 >= var132001:
                return Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length])
            if var134001 < arg2.length:
                if 1 > !var138002:
                    revert with 0, 17
                idx = var140003 + 1
                s = var140006
                t = var140011
                while idx < arg2.length:
                    _13146 = mem[(32 * idx) + 128]
                    if address(s) == mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < mem[(32 * idx) + 140 len 20]:
                        if not address(s):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            _13176 = mem[64]
                            mem[mem[64] + 32] = address(s)
                            mem[mem[64] + 52] = address(_13146)
                            _13177 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _13179 = sha3(mem[_13177 + 32 len mem[_13177]])
                            mem[_13176 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_13176 + 105] = Mask(160, 96, factoryAddress)
                            mem[_13176 + 125] = _13179
                            mem[_13176 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                            mem[_13176 + 72] = 85
                            if address(s) == address(_13146):
                                revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                            if address(s) < address(_13146):
                                if not address(s):
                                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                mem[_13176 + 221] = address(s)
                                mem[_13176 + 241] = address(_13146)
                                mem[_13176 + 189] = 40
                                mem[_13176 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_13176 + 294] = Mask(160, 96, factoryAddress)
                                mem[_13176 + 314] = sha3(address(s), address(_13146))
                                mem[_13176 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                                mem[_13176 + 261] = 85
                                require ext_code.size(address(sha3(0, factoryAddress, sha3(address(s), address(_13146)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                                staticcall address(sha3(0, factoryAddress, sha3(address(s), address(_13146)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_13176 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _13176 + ceil32(return_data.size) + 378
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                        revert with 0, 17
                                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                            revert with 0, 17
                                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                            revert with 0, 17
                                        if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                            revert with 0, 18
                                        if 1 > !t:
                                            revert with 0, 17
                                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                            revert with 0, 50
                                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[96] - 1:
                                            if t + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + 128]
                                            t = t + 1
                                            continue 
                                        mem[_13176 + ceil32(return_data.size) + 378] = 32
                                        _14384 = mem[ceil32(32 * arg2.length) + 97]
                                        mem[_13176 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                        idx = 0
                                        s = _13176 + ceil32(return_data.size) + 442
                                        t = ceil32(32 * arg2.length) + 129
                                        while idx < _14384:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return 32, mem[_13176 + ceil32(return_data.size) + 410 len (32 * _14384) + 32]
                                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14]:
                                        revert with 0, 18
                                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13176 + ceil32(return_data.size) + 378] = 32
                                    _14576 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13176 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13176 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14576:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13176 + ceil32(return_data.size) + 410 len (32 * _14576) + 32]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13176 + ceil32(return_data.size) + 378] = 32
                                    _14385 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13176 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13176 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14385:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13176 + ceil32(return_data.size) + 410 len (32 * _14385) + 32]
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13176 + ceil32(return_data.size) + 378] = 32
                                _14577 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13176 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13176 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14577:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13176 + ceil32(return_data.size) + 410 len (32 * _14577) + 32]
                            if not address(_13146):
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[_13176 + 221] = address(_13146)
                            mem[_13176 + 241] = address(s)
                            mem[_13176 + 189] = 40
                            mem[_13176 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_13176 + 294] = Mask(160, 96, factoryAddress)
                            mem[_13176 + 314] = sha3(address(_13146), address(s))
                            mem[_13176 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                            mem[_13176 + 261] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_13146), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(_13146), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_13176 + 378 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13176 + ceil32(return_data.size) + 378
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if t >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13176 + ceil32(return_data.size) + 378] = 32
                                    _14386 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13176 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13176 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14386:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13176 + ceil32(return_data.size) + 410 len (32 * _14386) + 32]
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13176 + ceil32(return_data.size) + 378] = 32
                                _14578 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13176 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13176 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14578:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13176 + ceil32(return_data.size) + 410 len (32 * _14578) + 32]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13176 + ceil32(return_data.size) + 378] = 32
                                _14387 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13176 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13176 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14387:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13176 + ceil32(return_data.size) + 410 len (32 * _14387) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13176 + ceil32(return_data.size) + 378] = 32
                            _14579 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13176 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13176 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14579:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13176 + ceil32(return_data.size) + 410 len (32 * _14579) + 32]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        _13182 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(s)
                        _13183 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _13185 = sha3(mem[_13183 + 32 len mem[_13183]])
                        mem[_13182 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13182 + 105] = Mask(160, 96, factoryAddress)
                        mem[_13182 + 125] = _13185
                        mem[_13182 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13182 + 72] = 85
                        if address(s) == address(_13146):
                            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                        if address(s) < address(_13146):
                            if not address(s):
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[_13182 + 221] = address(s)
                            mem[_13182 + 241] = address(_13146)
                            mem[_13182 + 189] = 40
                            mem[_13182 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_13182 + 294] = Mask(160, 96, factoryAddress)
                            mem[_13182 + 314] = sha3(address(s), address(_13146))
                            mem[_13182 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                            mem[_13182 + 261] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(s), address(_13146)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(s), address(_13146)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_13182 + 378 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13182 + ceil32(return_data.size) + 378
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if t >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13182 + ceil32(return_data.size) + 378] = 32
                                    _14388 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13182 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13182 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14388:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13182 + ceil32(return_data.size) + 410 len (32 * _14388) + 32]
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13182 + ceil32(return_data.size) + 378] = 32
                                _14580 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13182 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13182 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14580:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13182 + ceil32(return_data.size) + 410 len (32 * _14580) + 32]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13182 + ceil32(return_data.size) + 378] = 32
                                _14389 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13182 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13182 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14389:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13182 + ceil32(return_data.size) + 410 len (32 * _14389) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13182 + ceil32(return_data.size) + 378] = 32
                            _14581 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13182 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13182 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14581:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13182 + ceil32(return_data.size) + 410 len (32 * _14581) + 32]
                        if not address(_13146):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_13182 + 221] = address(_13146)
                        mem[_13182 + 241] = address(s)
                        mem[_13182 + 189] = 40
                        mem[_13182 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13182 + 294] = Mask(160, 96, factoryAddress)
                        mem[_13182 + 314] = sha3(address(_13146), address(s))
                        mem[_13182 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13182 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_13146), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_13146), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                        mem[_13182 + 378 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13182 + ceil32(return_data.size) + 378
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if t >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(s):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13182 + ceil32(return_data.size) + 378] = 32
                                _14390 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13182 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13182 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14390:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13182 + ceil32(return_data.size) + 410 len (32 * _14390) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13182 + ceil32(return_data.size) + 378] = 32
                            _14582 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13182 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13182 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14582:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13182 + ceil32(return_data.size) + 410 len (32 * _14582) + 32]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13182 + ceil32(return_data.size) + 378] = 32
                            _14391 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13182 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13182 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14391:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13182 + ceil32(return_data.size) + 410 len (32 * _14391) + 32]
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13182 + ceil32(return_data.size) + 378] = 32
                        _14583 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13182 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13182 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14583:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13182 + ceil32(return_data.size) + 410 len (32 * _14583) + 32]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    if address(s) == mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < mem[(32 * idx) + 140 len 20]:
                        if not address(s):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        _13188 = mem[64]
                        mem[mem[64] + 32] = address(s)
                        mem[mem[64] + 52] = address(_13146)
                        _13189 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _13191 = sha3(mem[_13189 + 32 len mem[_13189]])
                        mem[_13188 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13188 + 105] = Mask(160, 96, factoryAddress)
                        mem[_13188 + 125] = _13191
                        mem[_13188 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13188 + 72] = 85
                        if address(s) == address(_13146):
                            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                        if address(s) < address(_13146):
                            if not address(s):
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[_13188 + 221] = address(s)
                            mem[_13188 + 241] = address(_13146)
                            mem[_13188 + 189] = 40
                            mem[_13188 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_13188 + 294] = Mask(160, 96, factoryAddress)
                            mem[_13188 + 314] = sha3(address(s), address(_13146))
                            mem[_13188 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                            mem[_13188 + 261] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(s), address(_13146)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(s), address(_13146)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_13188 + 378 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13188 + ceil32(return_data.size) + 378
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if t >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(_13146):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13188 + ceil32(return_data.size) + 378] = 32
                                    _14392 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13188 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13188 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14392:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13188 + ceil32(return_data.size) + 410 len (32 * _14392) + 32]
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13188 + ceil32(return_data.size) + 378] = 32
                                _14584 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13188 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13188 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14584:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13188 + ceil32(return_data.size) + 410 len (32 * _14584) + 32]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13188 + ceil32(return_data.size) + 378] = 32
                                _14393 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13188 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13188 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14393:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13188 + ceil32(return_data.size) + 410 len (32 * _14393) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13188 + ceil32(return_data.size) + 378] = 32
                            _14585 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13188 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13188 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14585:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13188 + ceil32(return_data.size) + 410 len (32 * _14585) + 32]
                        if not address(_13146):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_13188 + 221] = address(_13146)
                        mem[_13188 + 241] = address(s)
                        mem[_13188 + 189] = 40
                        mem[_13188 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13188 + 294] = Mask(160, 96, factoryAddress)
                        mem[_13188 + 314] = sha3(address(_13146), address(s))
                        mem[_13188 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13188 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_13146), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_13146), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                        mem[_13188 + 378 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13188 + ceil32(return_data.size) + 378
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if t >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(_13146):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13188 + ceil32(return_data.size) + 378] = 32
                                _14394 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13188 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13188 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14394:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13188 + ceil32(return_data.size) + 410 len (32 * _14394) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13188 + ceil32(return_data.size) + 378] = 32
                            _14586 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13188 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13188 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14586:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13188 + ceil32(return_data.size) + 410 len (32 * _14586) + 32]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13188 + ceil32(return_data.size) + 378] = 32
                            _14395 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13188 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13188 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14395:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13188 + ceil32(return_data.size) + 410 len (32 * _14395) + 32]
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13188 + ceil32(return_data.size) + 378] = 32
                        _14587 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13188 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13188 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14587:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13188 + ceil32(return_data.size) + 410 len (32 * _14587) + 32]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _13194 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(s)
                    _13195 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _13197 = sha3(mem[_13195 + 32 len mem[_13195]])
                    mem[_13194 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_13194 + 105] = Mask(160, 96, factoryAddress)
                    mem[_13194 + 125] = _13197
                    mem[_13194 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_13194 + 72] = 85
                    if address(s) == address(_13146):
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < address(_13146):
                        if not address(s):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_13194 + 221] = address(s)
                        mem[_13194 + 241] = address(_13146)
                        mem[_13194 + 189] = 40
                        mem[_13194 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13194 + 294] = Mask(160, 96, factoryAddress)
                        mem[_13194 + 314] = sha3(address(s), address(_13146))
                        mem[_13194 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13194 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(s), address(_13146)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(s), address(_13146)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                        mem[_13194 + 378 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13194 + ceil32(return_data.size) + 378
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if t >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(_13146):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13194 + ceil32(return_data.size) + 378] = 32
                                _14396 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13194 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13194 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14396:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13194 + ceil32(return_data.size) + 410 len (32 * _14396) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13194 + ceil32(return_data.size) + 378] = 32
                            _14588 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13194 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13194 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14588:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13194 + ceil32(return_data.size) + 410 len (32 * _14588) + 32]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13194 + ceil32(return_data.size) + 378] = 32
                            _14397 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13194 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13194 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14397:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13194 + ceil32(return_data.size) + 410 len (32 * _14397) + 32]
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13194 + ceil32(return_data.size) + 378] = 32
                        _14589 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13194 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13194 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14589:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13194 + ceil32(return_data.size) + 410 len (32 * _14589) + 32]
                    if not address(_13146):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_13194 + 221] = address(_13146)
                    mem[_13194 + 241] = address(s)
                    mem[_13194 + 189] = 40
                    mem[_13194 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_13194 + 294] = Mask(160, 96, factoryAddress)
                    mem[_13194 + 314] = sha3(address(_13146), address(s))
                    mem[_13194 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_13194 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_13146), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_13146), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                    mem[_13194 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _13194 + ceil32(return_data.size) + 378
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if t >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_13146):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13194 + ceil32(return_data.size) + 378] = 32
                            _14398 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13194 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13194 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14398:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13194 + ceil32(return_data.size) + 410 len (32 * _14398) + 32]
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13194 + ceil32(return_data.size) + 378] = 32
                        _14590 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13194 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13194 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14590:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13194 + ceil32(return_data.size) + 410 len (32 * _14590) + 32]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13194 + ceil32(return_data.size) + 378] = 32
                        _14399 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13194 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13194 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14399:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13194 + ceil32(return_data.size) + 410 len (32 * _14399) + 32]
                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 1 > !t:
                        revert with 0, 17
                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 < mem[96] - 1:
                        if t + 1 >= mem[96]:
                            revert with 0, 50
                        if 1 > !(t + 1):
                            revert with 0, 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        continue 
                    mem[_13194 + ceil32(return_data.size) + 378] = 32
                    _14591 = mem[ceil32(32 * arg2.length) + 97]
                    mem[_13194 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                    idx = 0
                    s = _13194 + ceil32(return_data.size) + 442
                    t = ceil32(32 * arg2.length) + 129
                    while idx < _14591:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return 32, mem[_13194 + ceil32(return_data.size) + 410 len (32 * _14591) + 32]
    else:
        mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        if 0 < arg2.length:
            mem[ceil32(32 * arg2.length) + 129] = arg1
            if var129001 < 1:
                revert with 0, 17
            if var133002 >= var133001:
                return Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + 129 len 32 * arg2.length])
            if var135001 < arg2.length:
                if 1 > !var139002:
                    revert with 0, 17
                idx = var141003 + 1
                s = var141006
                t = var141011
                while idx < arg2.length:
                    _13147 = mem[(32 * idx) + 128]
                    if address(s) == mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < mem[(32 * idx) + 140 len 20]:
                        if not address(s):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            _13200 = mem[64]
                            mem[mem[64] + 32] = address(s)
                            mem[mem[64] + 52] = address(_13147)
                            _13201 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _13203 = sha3(mem[_13201 + 32 len mem[_13201]])
                            mem[_13200 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_13200 + 105] = Mask(160, 96, factoryAddress)
                            mem[_13200 + 125] = _13203
                            mem[_13200 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                            mem[_13200 + 72] = 85
                            if address(s) == address(_13147):
                                revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                            if address(s) < address(_13147):
                                if not address(s):
                                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                mem[_13200 + 221] = address(s)
                                mem[_13200 + 241] = address(_13147)
                                mem[_13200 + 189] = 40
                                mem[_13200 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_13200 + 294] = Mask(160, 96, factoryAddress)
                                mem[_13200 + 314] = sha3(address(s), address(_13147))
                                mem[_13200 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                                mem[_13200 + 261] = 85
                                require ext_code.size(address(sha3(0, factoryAddress, sha3(address(s), address(_13147)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                                staticcall address(sha3(0, factoryAddress, sha3(address(s), address(_13147)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                        gas gas_remaining wei
                                mem[_13200 + 378 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _13200 + ceil32(return_data.size) + 378
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                        revert with 0, 17
                                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                            revert with 0, 17
                                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                            revert with 0, 17
                                        if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                            revert with 0, 18
                                        if 1 > !t:
                                            revert with 0, 17
                                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                            revert with 0, 50
                                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[96] - 1:
                                            if t + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + 128]
                                            t = t + 1
                                            continue 
                                        mem[_13200 + ceil32(return_data.size) + 378] = 32
                                        _14400 = mem[ceil32(32 * arg2.length) + 97]
                                        mem[_13200 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                        idx = 0
                                        s = _13200 + ceil32(return_data.size) + 442
                                        t = ceil32(32 * arg2.length) + 129
                                        while idx < _14400:
                                            mem[s] = mem[t]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return 32, mem[_13200 + ceil32(return_data.size) + 410 len (32 * _14400) + 32]
                                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                        revert with 0, 17
                                    if not ext_call.return_data[50 len 14]:
                                        revert with 0, 18
                                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13200 + ceil32(return_data.size) + 378] = 32
                                    _14592 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13200 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13200 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14592:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13200 + ceil32(return_data.size) + 410 len (32 * _14592) + 32]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13200 + ceil32(return_data.size) + 378] = 32
                                    _14401 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13200 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13200 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14401:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13200 + ceil32(return_data.size) + 410 len (32 * _14401) + 32]
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13200 + ceil32(return_data.size) + 378] = 32
                                _14593 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13200 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13200 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14593:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13200 + ceil32(return_data.size) + 410 len (32 * _14593) + 32]
                            if not address(_13147):
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[_13200 + 221] = address(_13147)
                            mem[_13200 + 241] = address(s)
                            mem[_13200 + 189] = 40
                            mem[_13200 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_13200 + 294] = Mask(160, 96, factoryAddress)
                            mem[_13200 + 314] = sha3(address(_13147), address(s))
                            mem[_13200 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                            mem[_13200 + 261] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_13147), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(_13147), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_13200 + 378 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13200 + ceil32(return_data.size) + 378
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if t >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13200 + ceil32(return_data.size) + 378] = 32
                                    _14402 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13200 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13200 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14402:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13200 + ceil32(return_data.size) + 410 len (32 * _14402) + 32]
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13200 + ceil32(return_data.size) + 378] = 32
                                _14594 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13200 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13200 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14594:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13200 + ceil32(return_data.size) + 410 len (32 * _14594) + 32]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13200 + ceil32(return_data.size) + 378] = 32
                                _14403 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13200 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13200 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14403:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13200 + ceil32(return_data.size) + 410 len (32 * _14403) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13200 + ceil32(return_data.size) + 378] = 32
                            _14595 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13200 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13200 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14595:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13200 + ceil32(return_data.size) + 410 len (32 * _14595) + 32]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        _13206 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(s)
                        _13207 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _13209 = sha3(mem[_13207 + 32 len mem[_13207]])
                        mem[_13206 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13206 + 105] = Mask(160, 96, factoryAddress)
                        mem[_13206 + 125] = _13209
                        mem[_13206 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13206 + 72] = 85
                        if address(s) == address(_13147):
                            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                        if address(s) < address(_13147):
                            if not address(s):
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[_13206 + 221] = address(s)
                            mem[_13206 + 241] = address(_13147)
                            mem[_13206 + 189] = 40
                            mem[_13206 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_13206 + 294] = Mask(160, 96, factoryAddress)
                            mem[_13206 + 314] = sha3(address(s), address(_13147))
                            mem[_13206 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                            mem[_13206 + 261] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(s), address(_13147)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(s), address(_13147)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_13206 + 378 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13206 + ceil32(return_data.size) + 378
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if t >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(s):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13206 + ceil32(return_data.size) + 378] = 32
                                    _14404 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13206 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13206 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14404:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13206 + ceil32(return_data.size) + 410 len (32 * _14404) + 32]
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13206 + ceil32(return_data.size) + 378] = 32
                                _14596 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13206 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13206 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14596:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13206 + ceil32(return_data.size) + 410 len (32 * _14596) + 32]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13206 + ceil32(return_data.size) + 378] = 32
                                _14405 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13206 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13206 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14405:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13206 + ceil32(return_data.size) + 410 len (32 * _14405) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13206 + ceil32(return_data.size) + 378] = 32
                            _14597 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13206 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13206 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14597:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13206 + ceil32(return_data.size) + 410 len (32 * _14597) + 32]
                        if not address(_13147):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_13206 + 221] = address(_13147)
                        mem[_13206 + 241] = address(s)
                        mem[_13206 + 189] = 40
                        mem[_13206 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13206 + 294] = Mask(160, 96, factoryAddress)
                        mem[_13206 + 314] = sha3(address(_13147), address(s))
                        mem[_13206 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13206 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_13147), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_13147), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                        mem[_13206 + 378 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13206 + ceil32(return_data.size) + 378
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if t >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(s):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13206 + ceil32(return_data.size) + 378] = 32
                                _14406 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13206 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13206 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14406:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13206 + ceil32(return_data.size) + 410 len (32 * _14406) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13206 + ceil32(return_data.size) + 378] = 32
                            _14598 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13206 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13206 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14598:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13206 + ceil32(return_data.size) + 410 len (32 * _14598) + 32]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13206 + ceil32(return_data.size) + 378] = 32
                            _14407 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13206 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13206 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14407:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13206 + ceil32(return_data.size) + 410 len (32 * _14407) + 32]
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13206 + ceil32(return_data.size) + 378] = 32
                        _14599 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13206 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13206 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14599:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13206 + ceil32(return_data.size) + 410 len (32 * _14599) + 32]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    if address(s) == mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < mem[(32 * idx) + 140 len 20]:
                        if not address(s):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        _13212 = mem[64]
                        mem[mem[64] + 32] = address(s)
                        mem[mem[64] + 52] = address(_13147)
                        _13213 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _13215 = sha3(mem[_13213 + 32 len mem[_13213]])
                        mem[_13212 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13212 + 105] = Mask(160, 96, factoryAddress)
                        mem[_13212 + 125] = _13215
                        mem[_13212 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13212 + 72] = 85
                        if address(s) == address(_13147):
                            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                        if address(s) < address(_13147):
                            if not address(s):
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[_13212 + 221] = address(s)
                            mem[_13212 + 241] = address(_13147)
                            mem[_13212 + 189] = 40
                            mem[_13212 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_13212 + 294] = Mask(160, 96, factoryAddress)
                            mem[_13212 + 314] = sha3(address(s), address(_13147))
                            mem[_13212 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                            mem[_13212 + 261] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, sha3(address(s), address(_13147)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                            staticcall address(sha3(0, factoryAddress, sha3(address(s), address(_13147)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_13212 + 378 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13212 + ceil32(return_data.size) + 378
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if t >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(s) == address(_13147):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                                if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 0, 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                        revert with 0, 18
                                    if 1 > !t:
                                        revert with 0, 17
                                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                        revert with 0, 50
                                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    mem[_13212 + ceil32(return_data.size) + 378] = 32
                                    _14408 = mem[ceil32(32 * arg2.length) + 97]
                                    mem[_13212 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                    idx = 0
                                    s = _13212 + ceil32(return_data.size) + 442
                                    t = ceil32(32 * arg2.length) + 129
                                    while idx < _14408:
                                        mem[s] = mem[t]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return 32, mem[_13212 + ceil32(return_data.size) + 410 len (32 * _14408) + 32]
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 0, 18
                                if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13212 + ceil32(return_data.size) + 378] = 32
                                _14600 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13212 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13212 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14600:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13212 + ceil32(return_data.size) + 410 len (32 * _14600) + 32]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13212 + ceil32(return_data.size) + 378] = 32
                                _14409 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13212 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13212 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14409:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13212 + ceil32(return_data.size) + 410 len (32 * _14409) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13212 + ceil32(return_data.size) + 378] = 32
                            _14601 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13212 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13212 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14601:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13212 + ceil32(return_data.size) + 410 len (32 * _14601) + 32]
                        if not address(_13147):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_13212 + 221] = address(_13147)
                        mem[_13212 + 241] = address(s)
                        mem[_13212 + 189] = 40
                        mem[_13212 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13212 + 294] = Mask(160, 96, factoryAddress)
                        mem[_13212 + 314] = sha3(address(_13147), address(s))
                        mem[_13212 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13212 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_13147), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(_13147), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                        mem[_13212 + 378 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13212 + ceil32(return_data.size) + 378
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if t >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(_13147):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13212 + ceil32(return_data.size) + 378] = 32
                                _14410 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13212 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13212 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14410:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13212 + ceil32(return_data.size) + 410 len (32 * _14410) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13212 + ceil32(return_data.size) + 378] = 32
                            _14602 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13212 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13212 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14602:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13212 + ceil32(return_data.size) + 410 len (32 * _14602) + 32]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13212 + ceil32(return_data.size) + 378] = 32
                            _14411 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13212 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13212 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14411:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13212 + ceil32(return_data.size) + 410 len (32 * _14411) + 32]
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13212 + ceil32(return_data.size) + 378] = 32
                        _14603 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13212 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13212 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14603:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13212 + ceil32(return_data.size) + 410 len (32 * _14603) + 32]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _13218 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(s)
                    _13219 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _13221 = sha3(mem[_13219 + 32 len mem[_13219]])
                    mem[_13218 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_13218 + 105] = Mask(160, 96, factoryAddress)
                    mem[_13218 + 125] = _13221
                    mem[_13218 + 157] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_13218 + 72] = 85
                    if address(s) == address(_13147):
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < address(_13147):
                        if not address(s):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_13218 + 221] = address(s)
                        mem[_13218 + 241] = address(_13147)
                        mem[_13218 + 189] = 40
                        mem[_13218 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_13218 + 294] = Mask(160, 96, factoryAddress)
                        mem[_13218 + 314] = sha3(address(s), address(_13147))
                        mem[_13218 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                        mem[_13218 + 261] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, sha3(address(s), address(_13147)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                        staticcall address(sha3(0, factoryAddress, sha3(address(s), address(_13147)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                                gas gas_remaining wei
                        mem[_13218 + 378 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13218 + ceil32(return_data.size) + 378
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if t >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(_13147):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 0, 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 17
                                if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                    revert with 0, 18
                                if 1 > !t:
                                    revert with 0, 17
                                if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                    revert with 0, 50
                                mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                mem[_13218 + ceil32(return_data.size) + 378] = 32
                                _14412 = mem[ceil32(32 * arg2.length) + 97]
                                mem[_13218 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                                idx = 0
                                s = _13218 + ceil32(return_data.size) + 442
                                t = ceil32(32 * arg2.length) + 129
                                while idx < _14412:
                                    mem[s] = mem[t]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return 32, mem[_13218 + ceil32(return_data.size) + 410 len (32 * _14412) + 32]
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 0, 18
                            if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13218 + ceil32(return_data.size) + 378] = 32
                            _14604 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13218 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13218 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14604:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13218 + ceil32(return_data.size) + 410 len (32 * _14604) + 32]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13218 + ceil32(return_data.size) + 378] = 32
                            _14413 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13218 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13218 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14413:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13218 + ceil32(return_data.size) + 410 len (32 * _14413) + 32]
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13218 + ceil32(return_data.size) + 378] = 32
                        _14605 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13218 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13218 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14605:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13218 + ceil32(return_data.size) + 410 len (32 * _14605) + 32]
                    if not address(_13147):
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[_13218 + 221] = address(_13147)
                    mem[_13218 + 241] = address(s)
                    mem[_13218 + 189] = 40
                    mem[_13218 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_13218 + 294] = Mask(160, 96, factoryAddress)
                    mem[_13218 + 314] = sha3(address(_13147), address(s))
                    mem[_13218 + 346] = 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c
                    mem[_13218 + 261] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, sha3(address(_13147), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)))
                    staticcall address(sha3(0, factoryAddress, sha3(address(_13147), address(s)), 0x1e767283f05b8e8e637becc66596513bb8cd140538d9a850b3bd5f119bccaf8c)).getReserves() with:
                            gas gas_remaining wei
                    mem[_13218 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _13218 + ceil32(return_data.size) + 378
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if t >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    if mem[(32 * t) + ceil32(32 * arg2.length) + 129] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_13147):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 0, 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 17
                            if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                                revert with 0, 18
                            if 1 > !t:
                                revert with 0, 17
                            if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                                revert with 0, 50
                            mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 0, 50
                                if 1 > !(t + 1):
                                    revert with 0, 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            mem[_13218 + ceil32(return_data.size) + 378] = 32
                            _14414 = mem[ceil32(32 * arg2.length) + 97]
                            mem[_13218 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                            idx = 0
                            s = _13218 + ceil32(return_data.size) + 442
                            t = ceil32(32 * arg2.length) + 129
                            while idx < _14414:
                                mem[s] = mem[t]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return 32, mem[_13218 + ceil32(return_data.size) + 410 len (32 * _14414) + 32]
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[50 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13218 + ceil32(return_data.size) + 378] = 32
                        _14606 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13218 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13218 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14606:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13218 + ceil32(return_data.size) + 410 len (32 * _14606) + 32]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * t) + ceil32(32 * arg2.length) + 129] and 998 > -1 / mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] / 998 != mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[18 len 14]:
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 17
                        if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                            revert with 0, 18
                        if 1 > !t:
                            revert with 0, 17
                        if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                            revert with 0, 50
                        mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 0 / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        mem[_13218 + ceil32(return_data.size) + 378] = 32
                        _14415 = mem[ceil32(32 * arg2.length) + 97]
                        mem[_13218 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                        idx = 0
                        s = _13218 + ceil32(return_data.size) + 442
                        t = ceil32(32 * arg2.length) + 129
                        while idx < _14415:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return 32, mem[_13218 + ceil32(return_data.size) + 410 len (32 * _14415) + 32]
                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] and ext_call.return_data[18 len 14] > -1 / 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] > !(998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 17
                    if (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129]):
                        revert with 0, 18
                    if 1 > !t:
                        revert with 0, 17
                    if t + 1 >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    mem[(32 * t + 1) + ceil32(32 * arg2.length) + 129] = 998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (998 * mem[(32 * t) + ceil32(32 * arg2.length) + 129])
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 < mem[96] - 1:
                        if t + 1 >= mem[96]:
                            revert with 0, 50
                        if 1 > !(t + 1):
                            revert with 0, 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        continue 
                    mem[_13218 + ceil32(return_data.size) + 378] = 32
                    _14607 = mem[ceil32(32 * arg2.length) + 97]
                    mem[_13218 + ceil32(return_data.size) + 410] = mem[ceil32(32 * arg2.length) + 97]
                    idx = 0
                    s = _13218 + ceil32(return_data.size) + 442
                    t = ceil32(32 * arg2.length) + 129
                    while idx < _14607:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return 32, mem[_13218 + ceil32(return_data.size) + 410 len (32 * _14607) + 32]
    revert with 0, 50
}



}
