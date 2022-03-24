contract main {




// =====================  Runtime code  =====================


#
#  - getAmountsIn(uint256 arg1, address[] arg2)
#  - removeLiquidityAVAXWithPermit(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, bool arg7, uint8 arg8, bytes32 arg9, bytes32 arg10)
#  - removeLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6)
#  - swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6)
#  - swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapTokensForExactAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#  - removeLiquidityAVAXWithPermitSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, bool arg7, uint8 arg8, bytes32 arg9, bytes32 arg10)
#  - swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#  - swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#  - addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8)
#  - addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6)
#
address factoryAddress;
address WAVAXAddress;

function WAVAX() {
    return WAVAXAddress
}

function factory() {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function quote(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
    if not arg1:
        if arg2:
            return (0 / arg2)
    else:
        if arg3 * arg1 / arg1 != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2:
            return (arg3 * arg1 / arg2)
    ('iszero', ('param', 'arg2'))
    revert
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
    if not arg2:
        if arg1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg3 - arg1
        if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require (997 * arg3) - (997 * arg1)
        if (0 / (997 * arg3) - (997 * arg1)) + 1 < 0 / (997 * arg3) - (997 * arg1):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * arg3) - (997 * arg1)) + 1)
    if arg1 * arg2 / arg2 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1 * arg2:
        if arg1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg3 - arg1
        if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require (997 * arg3) - (997 * arg1)
        if (0 / (997 * arg3) - (997 * arg1)) + 1 < 0 / (997 * arg3) - (997 * arg1):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * arg3) - (997 * arg1)) + 1)
    if 1000 * arg1 * arg2 / arg1 * arg2 != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg1 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg3 - arg1
    if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require (997 * arg3) - (997 * arg1)
    if (1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1)) + 1 < 1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1):
        revert with 0, 'SafeMath: addition overflow'
    return ((1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1)) + 1)
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
    if not arg1:
        if arg2:
            if 1000 * arg2 / arg2 != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 1000 * arg2 < 1000 * arg2:
                revert with 0, 'SafeMath: addition overflow'
            if 1000 * arg2:
                return (0 / 1000 * arg2)
    else:
        if 997 * arg1 / arg1 != 997:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 997 * arg1:
            if not arg2:
                if 997 * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 997 * arg1:
                    return (0 / 997 * arg1)
            else:
                if 1000 * arg2 / arg2 != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg1) + (1000 * arg2) < 1000 * arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if (997 * arg1) + (1000 * arg2):
                    return (0 / (997 * arg1) + (1000 * arg2))
        else:
            if 997 * arg3 * arg1 / 997 * arg1 != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2:
                if 997 * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 997 * arg1:
                    return (997 * arg3 * arg1 / 997 * arg1)
            else:
                if 1000 * arg2 / arg2 != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg1) + (1000 * arg2) < 1000 * arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if (997 * arg1) + (1000 * arg2):
                    return (997 * arg3 * arg1 / (997 * arg1) + (1000 * arg2))
    revert
}

function removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg6 == arg6
    if arg7 < block.timestamp:
        revert with 0, 'PangolinRouter: EXPIRED'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).burn(address rg1) with:
                 gas gas_remaining wei
                args arg6
        else:
            if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).burn(address rg1) with:
                     gas gas_remaining wei
                    args arg6
            else:
                if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                    revert with 0, 'Unrecognised factory'
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).burn(address rg1) with:
                     gas gas_remaining wei
                    args arg6
    else:
        if not arg2:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).burn(address rg1) with:
                 gas gas_remaining wei
                args arg6
        else:
            if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).burn(address rg1) with:
                     gas gas_remaining wei
                    args arg6
            else:
                if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                    revert with 0, 'Unrecognised factory'
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).burn(address rg1) with:
                     gas gas_remaining wei
                    args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg1 == arg2:
        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if arg1 == arg1:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'PangolinRouter: INSUFFICIENT_A_AMOUNT'
            if ext_call.return_data[32] < arg5:
                revert with 0, 'PangolinRouter: INSUFFICIENT_B_AMOUNT'
            return ext_call.return_data[0], ext_call.return_data[32]
    else:
        if not arg2:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'PangolinRouter: INSUFFICIENT_A_AMOUNT'
            if ext_call.return_data[32] < arg5:
                revert with 0, 'PangolinRouter: INSUFFICIENT_B_AMOUNT'
            return ext_call.return_data[0], ext_call.return_data[32]
    if ext_call.return_data[32] < arg4:
        revert with 0, 'PangolinRouter: INSUFFICIENT_A_AMOUNT'
    if ext_call.return_data[0] < arg5:
        revert with 0, 'PangolinRouter: INSUFFICIENT_B_AMOUNT'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PangolinLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            if arg8:
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), -1, arg7, arg9 << 248, arg10, arg11
            else:
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3, arg7, arg9 << 248, arg10, arg11
        else:
            if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                if arg8:
                    call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), -1, arg7, arg9 << 248, arg10, arg11
                else:
                    call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3, arg7, arg9 << 248, arg10, arg11
            else:
                if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                    revert with 0, 'Unrecognised factory'
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                if arg8:
                    call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), -1, arg7, arg9 << 248, arg10, arg11
                else:
                    call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3, arg7, arg9 << 248, arg10, arg11
    else:
        if not arg2:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            if arg8:
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), -1, arg7, arg9 << 248, arg10, arg11
            else:
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3, arg7, arg9 << 248, arg10, arg11
        else:
            if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                if arg8:
                    call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), -1, arg7, arg9 << 248, arg10, arg11
                else:
                    call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3, arg7, arg9 << 248, arg10, arg11
            else:
                if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                    revert with 0, 'Unrecognised factory'
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                if arg8:
                    call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), -1, arg7, arg9 << 248, arg10, arg11
                else:
                    call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3, arg7, arg9 << 248, arg10, arg11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg7 < block.timestamp:
        revert with 0, 'PangolinRouter: EXPIRED'
    if arg1 == arg2:
        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).burn(address rg1) with:
                 gas gas_remaining wei
                args arg6
        else:
            if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).burn(address rg1) with:
                     gas gas_remaining wei
                    args arg6
            else:
                if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                    revert with 0, 'Unrecognised factory'
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                call address(sha3(0, factoryAddress, sha3(arg1, arg2), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).burn(address rg1) with:
                     gas gas_remaining wei
                    args arg6
    else:
        if not arg2:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).burn(address rg1) with:
                 gas gas_remaining wei
                args arg6
        else:
            if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).burn(address rg1) with:
                     gas gas_remaining wei
                    args arg6
            else:
                if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                    revert with 0, 'Unrecognised factory'
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                call address(sha3(0, factoryAddress, sha3(arg2, arg1), 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).burn(address rg1) with:
                     gas gas_remaining wei
                    args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg1 == arg2:
        revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if arg1 == arg1:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'PangolinRouter: INSUFFICIENT_A_AMOUNT'
            if ext_call.return_data[32] < arg5:
                revert with 0, 'PangolinRouter: INSUFFICIENT_B_AMOUNT'
            return ext_call.return_data[0], ext_call.return_data[32]
    else:
        if not arg2:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'PangolinRouter: INSUFFICIENT_A_AMOUNT'
            if ext_call.return_data[32] < arg5:
                revert with 0, 'PangolinRouter: INSUFFICIENT_B_AMOUNT'
            return ext_call.return_data[0], ext_call.return_data[32]
    if ext_call.return_data[32] < arg4:
        revert with 0, 'PangolinRouter: INSUFFICIENT_A_AMOUNT'
    if ext_call.return_data[0] < arg5:
        revert with 0, 'PangolinRouter: INSUFFICIENT_B_AMOUNT'
    return ext_call.return_data[32], ext_call.return_data[0]
}

function getAmountsOut(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
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
        revert with 0, 'PangolinLibrary: INVALID_PATH'
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg2.length) + 160] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[96]
            _4000 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _4004 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
                        _4042 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_4004)
                        _4068 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4070 = sha3(mem[_4068 + 32 len mem[_4068]])
                        mem[_4042 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4042 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4042 + 125] = _4070
                        mem[_4042 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_4042 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4070, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, factoryAddress, _4070, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4042 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4042 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4000) == address(_4000):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4042 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                            _4058 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_4004)
                            _4114 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _4116 = sha3(mem[_4114 + 32 len mem[_4114]])
                            mem[_4058 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_4058 + 105] = Mask(160, 96, factoryAddress)
                            mem[_4058 + 125] = _4116
                            mem[_4058 + 157] = 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97
                            mem[_4058 + 72] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, _4116, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                            staticcall address(sha3(0, factoryAddress, _4116, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_4058 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4058 + ceil32(return_data.size) + 189
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require idx < mem[(32 * arg2.length) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(_4000) == address(_4000):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[18 len 14]
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    else:
                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[50 len 14]
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    else:
                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4058 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                        else:
                            if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                                revert with 0, 'Unrecognised factory'
                            _4067 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_4004)
                            _4147 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _4149 = sha3(mem[_4147 + 32 len mem[_4147]])
                            mem[_4067 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_4067 + 105] = Mask(160, 96, factoryAddress)
                            mem[_4067 + 125] = _4149
                            mem[_4067 + 157] = 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188
                            mem[_4067 + 72] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, _4149, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                            staticcall address(sha3(0, factoryAddress, _4149, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_4067 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4067 + ceil32(return_data.size) + 189
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require idx < mem[(32 * arg2.length) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(_4000) == address(_4000):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[18 len 14]
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    else:
                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[50 len 14]
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    else:
                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4067 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
                        _4044 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_4000)
                        _4074 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4076 = sha3(mem[_4074 + 32 len mem[_4074]])
                        mem[_4044 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4044 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4044 + 125] = _4076
                        mem[_4044 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_4044 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4076, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, factoryAddress, _4076, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4044 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4044 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4000) == address(_4000):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4044 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                            _4059 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_4000)
                            _4118 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _4120 = sha3(mem[_4118 + 32 len mem[_4118]])
                            mem[_4059 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_4059 + 105] = Mask(160, 96, factoryAddress)
                            mem[_4059 + 125] = _4120
                            mem[_4059 + 157] = 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97
                            mem[_4059 + 72] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, _4120, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                            staticcall address(sha3(0, factoryAddress, _4120, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_4059 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4059 + ceil32(return_data.size) + 189
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require idx < mem[(32 * arg2.length) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(_4000) == address(_4000):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[18 len 14]
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    else:
                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[50 len 14]
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    else:
                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4059 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                        else:
                            if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                                revert with 0, 'Unrecognised factory'
                            _4073 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_4000)
                            _4155 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _4157 = sha3(mem[_4155 + 32 len mem[_4155]])
                            mem[_4073 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_4073 + 105] = Mask(160, 96, factoryAddress)
                            mem[_4073 + 125] = _4157
                            mem[_4073 + 157] = 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188
                            mem[_4073 + 72] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, _4157, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                            staticcall address(sha3(0, factoryAddress, _4157, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_4073 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4073 + ceil32(return_data.size) + 189
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require idx < mem[(32 * arg2.length) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(_4000) == address(_4000):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[18 len 14]
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    else:
                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[50 len 14]
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    else:
                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4073 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
                        _4046 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_4004)
                        _4080 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4082 = sha3(mem[_4080 + 32 len mem[_4080]])
                        mem[_4046 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4046 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4046 + 125] = _4082
                        mem[_4046 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_4046 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4082, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, factoryAddress, _4082, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4046 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4046 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4000) == address(_4004):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4046 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                            _4060 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_4004)
                            _4122 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _4124 = sha3(mem[_4122 + 32 len mem[_4122]])
                            mem[_4060 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_4060 + 105] = Mask(160, 96, factoryAddress)
                            mem[_4060 + 125] = _4124
                            mem[_4060 + 157] = 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97
                            mem[_4060 + 72] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, _4124, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                            staticcall address(sha3(0, factoryAddress, _4124, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_4060 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4060 + ceil32(return_data.size) + 189
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require idx < mem[(32 * arg2.length) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(_4000) == address(_4004):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[18 len 14]
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    else:
                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[50 len 14]
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    else:
                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4060 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                        else:
                            if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                                revert with 0, 'Unrecognised factory'
                            _4079 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                            mem[mem[64] + 52] = address(_4004)
                            _4163 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _4165 = sha3(mem[_4163 + 32 len mem[_4163]])
                            mem[_4079 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_4079 + 105] = Mask(160, 96, factoryAddress)
                            mem[_4079 + 125] = _4165
                            mem[_4079 + 157] = 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188
                            mem[_4079 + 72] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, _4165, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                            staticcall address(sha3(0, factoryAddress, _4165, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_4079 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4079 + ceil32(return_data.size) + 189
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require idx < mem[(32 * arg2.length) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(_4000) == address(_4004):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[18 len 14]
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    else:
                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[50 len 14]
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    else:
                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4079 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                    if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
                        _4048 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_4000)
                        _4086 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4088 = sha3(mem[_4086 + 32 len mem[_4086]])
                        mem[_4048 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4048 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4048 + 125] = _4088
                        mem[_4048 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                        mem[_4048 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4088, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                        staticcall address(sha3(0, factoryAddress, _4088, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4048 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4048 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4000) == address(_4004):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4048 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                            _4061 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_4000)
                            _4126 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _4128 = sha3(mem[_4126 + 32 len mem[_4126]])
                            mem[_4061 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_4061 + 105] = Mask(160, 96, factoryAddress)
                            mem[_4061 + 125] = _4128
                            mem[_4061 + 157] = 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97
                            mem[_4061 + 72] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, _4128, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                            staticcall address(sha3(0, factoryAddress, _4128, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_4061 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4061 + ceil32(return_data.size) + 189
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require idx < mem[(32 * arg2.length) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(_4000) == address(_4004):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[18 len 14]
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    else:
                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[50 len 14]
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    else:
                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4061 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                        else:
                            if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                                revert with 0, 'Unrecognised factory'
                            _4085 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                            mem[mem[64] + 52] = address(_4000)
                            _4171 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _4173 = sha3(mem[_4171 + 32 len mem[_4171]])
                            mem[_4085 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_4085 + 105] = Mask(160, 96, factoryAddress)
                            mem[_4085 + 125] = _4173
                            mem[_4085 + 157] = 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188
                            mem[_4085 + 72] = 85
                            require ext_code.size(address(sha3(0, factoryAddress, _4173, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                            staticcall address(sha3(0, factoryAddress, _4173, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_4085 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4085 + ceil32(return_data.size) + 189
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require idx < mem[(32 * arg2.length) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                            if address(_4000) == address(_4004):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[18 len 14]
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[18 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    else:
                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[18 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    require ext_call.return_data[50 len 14]
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 1000 * ext_call.return_data[50 len 14]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                                else:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                    if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    else:
                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                        if not ext_call.return_data[50 len 14]:
                                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        else:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_4085 + ceil32(return_data.size) + 290 len 31]
                                            if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                            require idx + 1 < mem[(32 * arg2.length) + 128]
                                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _4008 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len 32 * _4008] = mem[(32 * arg2.length) + 160 len 32 * _4008]
        return 32, mem[mem[64] + 32 len (32 * _4008) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 160] = arg1
    idx = 0
    while idx < arg2.length - 1:
        require idx < mem[96]
        _4002 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _4005 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
                    _4050 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_4005)
                    _4092 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4094 = sha3(mem[_4092 + 32 len mem[_4092]])
                    mem[_4050 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4050 + 105] = Mask(160, 96, factoryAddress)
                    mem[_4050 + 125] = _4094
                    mem[_4050 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_4050 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _4094, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, factoryAddress, _4094, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_4050 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4050 + ceil32(return_data.size) + 189
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require idx < mem[(32 * arg2.length) + 128]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(_4002) == address(_4002):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                            require ext_call.return_data[18 len 14]
                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4050 + ceil32(return_data.size) + 290 len 31]
                            if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            require 1000 * ext_call.return_data[18 len 14]
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                        else:
                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4050 + ceil32(return_data.size) + 290 len 31]
                            if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                if not ext_call.return_data[18 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4050 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4050 + ceil32(return_data.size) + 290 len 31]
                                if not ext_call.return_data[18 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4050 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                            require ext_call.return_data[50 len 14]
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4050 + ceil32(return_data.size) + 290 len 31]
                            if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            require 1000 * ext_call.return_data[50 len 14]
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                        else:
                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4050 + ceil32(return_data.size) + 290 len 31]
                            if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                if not ext_call.return_data[50 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4050 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                            else:
                                if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4050 + ceil32(return_data.size) + 290 len 31]
                                if not ext_call.return_data[50 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4050 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                else:
                    if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                        _4062 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_4005)
                        _4130 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4132 = sha3(mem[_4130 + 32 len mem[_4130]])
                        mem[_4062 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4062 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4062 + 125] = _4132
                        mem[_4062 + 157] = 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97
                        mem[_4062 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4132, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                        staticcall address(sha3(0, factoryAddress, _4132, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4062 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4062 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4002) == address(_4002):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4062 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                            revert with 0, 'Unrecognised factory'
                        _4091 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_4005)
                        _4179 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4181 = sha3(mem[_4179 + 32 len mem[_4179]])
                        mem[_4091 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4091 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4091 + 125] = _4181
                        mem[_4091 + 157] = 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188
                        mem[_4091 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4181, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                        staticcall address(sha3(0, factoryAddress, _4181, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4091 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4091 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4002) == address(_4002):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4091 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
                    _4052 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_4002)
                    _4098 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4100 = sha3(mem[_4098 + 32 len mem[_4098]])
                    mem[_4052 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4052 + 105] = Mask(160, 96, factoryAddress)
                    mem[_4052 + 125] = _4100
                    mem[_4052 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_4052 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _4100, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, factoryAddress, _4100, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_4052 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4052 + ceil32(return_data.size) + 189
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require idx < mem[(32 * arg2.length) + 128]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(_4002) == address(_4002):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                            require ext_call.return_data[18 len 14]
                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4052 + ceil32(return_data.size) + 290 len 31]
                            if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            require 1000 * ext_call.return_data[18 len 14]
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                        else:
                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4052 + ceil32(return_data.size) + 290 len 31]
                            if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                if not ext_call.return_data[18 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4052 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4052 + ceil32(return_data.size) + 290 len 31]
                                if not ext_call.return_data[18 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4052 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                            require ext_call.return_data[50 len 14]
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4052 + ceil32(return_data.size) + 290 len 31]
                            if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            require 1000 * ext_call.return_data[50 len 14]
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                        else:
                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4052 + ceil32(return_data.size) + 290 len 31]
                            if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                if not ext_call.return_data[50 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4052 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                            else:
                                if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4052 + ceil32(return_data.size) + 290 len 31]
                                if not ext_call.return_data[50 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4052 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                else:
                    if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                        _4063 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_4002)
                        _4134 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4136 = sha3(mem[_4134 + 32 len mem[_4134]])
                        mem[_4063 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4063 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4063 + 125] = _4136
                        mem[_4063 + 157] = 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97
                        mem[_4063 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4136, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                        staticcall address(sha3(0, factoryAddress, _4136, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4063 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4063 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4002) == address(_4002):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4063 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                            revert with 0, 'Unrecognised factory'
                        _4097 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_4002)
                        _4187 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4189 = sha3(mem[_4187 + 32 len mem[_4187]])
                        mem[_4097 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4097 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4097 + 125] = _4189
                        mem[_4097 + 157] = 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188
                        mem[_4097 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4189, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                        staticcall address(sha3(0, factoryAddress, _4189, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4097 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4097 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4002) == address(_4002):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4097 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PangolinLibrary: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
                    _4054 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_4005)
                    _4104 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4106 = sha3(mem[_4104 + 32 len mem[_4104]])
                    mem[_4054 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4054 + 105] = Mask(160, 96, factoryAddress)
                    mem[_4054 + 125] = _4106
                    mem[_4054 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_4054 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _4106, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, factoryAddress, _4106, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_4054 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4054 + ceil32(return_data.size) + 189
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require idx < mem[(32 * arg2.length) + 128]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(_4002) == address(_4005):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                            require ext_call.return_data[18 len 14]
                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4054 + ceil32(return_data.size) + 290 len 31]
                            if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            require 1000 * ext_call.return_data[18 len 14]
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                        else:
                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4054 + ceil32(return_data.size) + 290 len 31]
                            if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                if not ext_call.return_data[18 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4054 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4054 + ceil32(return_data.size) + 290 len 31]
                                if not ext_call.return_data[18 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4054 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                            require ext_call.return_data[50 len 14]
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4054 + ceil32(return_data.size) + 290 len 31]
                            if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            require 1000 * ext_call.return_data[50 len 14]
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                        else:
                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4054 + ceil32(return_data.size) + 290 len 31]
                            if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                if not ext_call.return_data[50 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4054 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                            else:
                                if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4054 + ceil32(return_data.size) + 290 len 31]
                                if not ext_call.return_data[50 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4054 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                else:
                    if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                        _4064 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_4005)
                        _4138 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4140 = sha3(mem[_4138 + 32 len mem[_4138]])
                        mem[_4064 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4064 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4064 + 125] = _4140
                        mem[_4064 + 157] = 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97
                        mem[_4064 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4140, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                        staticcall address(sha3(0, factoryAddress, _4140, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4064 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4064 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4002) == address(_4005):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4064 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                            revert with 0, 'Unrecognised factory'
                        _4103 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_4005)
                        _4195 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4197 = sha3(mem[_4195 + 32 len mem[_4195]])
                        mem[_4103 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4103 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4103 + 125] = _4197
                        mem[_4103 + 157] = 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188
                        mem[_4103 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4197, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                        staticcall address(sha3(0, factoryAddress, _4197, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4103 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4103 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4002) == address(_4005):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4103 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
                if factoryAddress == 0xefa94de7a4656d787667c749f7e1223d71e9fd88:
                    _4056 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_4002)
                    _4110 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _4112 = sha3(mem[_4110 + 32 len mem[_4110]])
                    mem[_4056 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_4056 + 105] = Mask(160, 96, factoryAddress)
                    mem[_4056 + 125] = _4112
                    mem[_4056 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                    mem[_4056 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _4112, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                    staticcall address(sha3(0, factoryAddress, _4112, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                            gas gas_remaining wei
                    mem[_4056 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4056 + ceil32(return_data.size) + 189
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require idx < mem[(32 * arg2.length) + 128]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(_4002) == address(_4005):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                            require ext_call.return_data[18 len 14]
                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4056 + ceil32(return_data.size) + 290 len 31]
                            if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            require 1000 * ext_call.return_data[18 len 14]
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                        else:
                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4056 + ceil32(return_data.size) + 290 len 31]
                            if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                if not ext_call.return_data[18 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4056 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                            else:
                                if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4056 + ceil32(return_data.size) + 290 len 31]
                                if not ext_call.return_data[18 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4056 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                            require ext_call.return_data[50 len 14]
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4056 + ceil32(return_data.size) + 290 len 31]
                            if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            require 1000 * ext_call.return_data[50 len 14]
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                        else:
                            if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[_4056 + ceil32(return_data.size) + 290 len 31]
                            if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                if not ext_call.return_data[50 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4056 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                            else:
                                if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4056 + ceil32(return_data.size) + 290 len 31]
                                if not ext_call.return_data[50 len 14]:
                                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4056 + ceil32(return_data.size) + 290 len 31]
                                    if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                    require idx + 1 < mem[(32 * arg2.length) + 128]
                                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                else:
                    if factoryAddress == 0x5c02e78a3969d0e64aa2cfa765acc1d671914ac0:
                        _4065 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_4002)
                        _4142 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4144 = sha3(mem[_4142 + 32 len mem[_4142]])
                        mem[_4065 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4065 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4065 + 125] = _4144
                        mem[_4065 + 157] = 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97
                        mem[_4065 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4144, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)))
                        staticcall address(sha3(0, factoryAddress, _4144, 0xf75b63316180834cae9ff38fbeb719026e1435e60ddb4509bd435f148feac97)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4065 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4065 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4002) == address(_4005):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4065 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if factoryAddress != 0x2ef422f30cdb7c5f1f7267ab5cf567a88974b308:
                            revert with 0, 'Unrecognised factory'
                        _4109 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_4002)
                        _4203 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _4205 = sha3(mem[_4203 + 32 len mem[_4203]])
                        mem[_4109 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_4109 + 105] = Mask(160, 96, factoryAddress)
                        mem[_4109 + 125] = _4205
                        mem[_4109 + 157] = 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188
                        mem[_4109 + 72] = 85
                        require ext_code.size(address(sha3(0, factoryAddress, _4205, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)))
                        staticcall address(sha3(0, factoryAddress, _4205, 0x4b5b254233f8aba1e01c0538653d54036e3c9f7873daf99623bb358f1cf33188)).getReserves() with:
                                gas gas_remaining wei
                        mem[_4109 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4109 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require idx < mem[(32 * arg2.length) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 'PangolinLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(_4002) == address(_4005):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                else:
                                    if 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'PangolinLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != 997:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                if not 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                else:
                                    if 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 * mem[(32 * idx) + (32 * arg2.length) + 160]
                                    else:
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_4109 + ceil32(return_data.size) + 290 len 31]
                                        if (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
                                        require idx + 1 < mem[(32 * arg2.length) + 128]
                                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) + (1000 * ext_call.return_data[50 len 14])
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _4009 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len 32 * _4009] = mem[(32 * arg2.length) + 160 len 32 * _4009]
    return 32, mem[mem[64] + 32 len (32 * _4009) + 32]
}



}
