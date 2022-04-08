contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function isAllowed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function removeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Locked!'
    stor1[address(arg1)] = 0
    return 1
}

function approveAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Locked!'
    stor1[address(arg1)] = 1
    return 1
}

function getPair(address arg1, bytes32 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if arg3 == arg4:
        revert with 0, 'IDENTICAL_ADDRESSES'
    if arg3 < arg4:
        if not arg3:
            revert with 0, 'ZERO_ADDRESS'
        return address(sha3(0, arg1, sha3(arg3, arg4), arg2))
    if not arg4:
        revert with 0, 'ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg4, arg3), arg2))
}

function directSwapBuyAndSell(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) {
    require calldata.size - 4 >= 224
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Not allowed!'
    require ext_code.size(arg2)
    call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg2:
        if not arg5:
            if Mask(112, 0, ext_call.return_data[32]):
                require Mask(112, 0, ext_call.return_data[32])
                if 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
            require arg6
            require arg6
            if Mask(112, 0, ext_call.return_data[0]) * arg6 / arg6 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[0]) * arg6 < Mask(112, 0, ext_call.return_data[0]) * arg6:
                revert with 0, 'ds-math-add-overflow'
            require Mask(112, 0, ext_call.return_data[0]) * arg6
            if arg4:
                if 0 / Mask(112, 0, ext_call.return_data[0]) * arg6 < arg4:
                    revert with 0, 'ERR : SLIPPAGE'
            require ext_code.size(arg1)
            if arg2 == ext_call.return_data[12 len 20]:
                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / Mask(112, 0, ext_call.return_data[0]) * arg6, address(arg7), 128, 0
            else:
                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0 / Mask(112, 0, ext_call.return_data[0]) * arg6, 0, address(arg7), 128, 0
        else:
            require arg5
            if arg3 * arg5 / arg5 != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                if not arg6:
                    if arg3 * arg5 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require arg3 * arg5
                    if arg4:
                        if 0 / arg3 * arg5 < arg4:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / arg3 * arg5, address(arg7), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / arg3 * arg5, 0, address(arg7), 128, 0
                else:
                    require arg6
                    if Mask(112, 0, ext_call.return_data[0]) * arg6 / arg6 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5) < Mask(112, 0, ext_call.return_data[0]) * arg6:
                        revert with 0, 'ds-math-add-overflow'
                    require (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5)
                    if arg4:
                        if 0 / (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5) < arg4:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5), address(arg7), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5), 0, address(arg7), 128, 0
            else:
                require Mask(112, 0, ext_call.return_data[32])
                if arg3 * arg5 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != arg3 * arg5:
                    revert with 0, 'ds-math-mul-overflow'
                if not arg6:
                    if arg3 * arg5 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require arg3 * arg5
                    if arg4:
                        if arg3 * arg5 * Mask(112, 0, ext_call.return_data[32]) / arg3 * arg5 < arg4:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg3 * arg5 * Mask(112, 0, ext_call.return_data[32]) / arg3 * arg5, address(arg7), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3 * arg5 * Mask(112, 0, ext_call.return_data[32]) / arg3 * arg5, 0, address(arg7), 128, 0
                else:
                    require arg6
                    if Mask(112, 0, ext_call.return_data[0]) * arg6 / arg6 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5) < Mask(112, 0, ext_call.return_data[0]) * arg6:
                        revert with 0, 'ds-math-add-overflow'
                    require (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5)
                    if arg4:
                        if arg3 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5) < arg4:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg3 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5), address(arg7), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3 * arg5 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * arg6) + (arg3 * arg5), 0, address(arg7), 128, 0
    else:
        if not arg5:
            if Mask(112, 0, ext_call.return_data[0]):
                require Mask(112, 0, ext_call.return_data[0])
                if 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
            require arg6
            require arg6
            if Mask(112, 0, ext_call.return_data[32]) * arg6 / arg6 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[32]) * arg6 < Mask(112, 0, ext_call.return_data[32]) * arg6:
                revert with 0, 'ds-math-add-overflow'
            require Mask(112, 0, ext_call.return_data[32]) * arg6
            if arg4:
                if 0 / Mask(112, 0, ext_call.return_data[32]) * arg6 < arg4:
                    revert with 0, 'ERR : SLIPPAGE'
            require ext_code.size(arg1)
            if arg2 == ext_call.return_data[12 len 20]:
                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / Mask(112, 0, ext_call.return_data[32]) * arg6, address(arg7), 128, 0
            else:
                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0 / Mask(112, 0, ext_call.return_data[32]) * arg6, 0, address(arg7), 128, 0
        else:
            require arg5
            if arg3 * arg5 / arg5 != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                if not arg6:
                    if arg3 * arg5 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require arg3 * arg5
                    if arg4:
                        if 0 / arg3 * arg5 < arg4:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / arg3 * arg5, address(arg7), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / arg3 * arg5, 0, address(arg7), 128, 0
                else:
                    require arg6
                    if Mask(112, 0, ext_call.return_data[32]) * arg6 / arg6 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5) < Mask(112, 0, ext_call.return_data[32]) * arg6:
                        revert with 0, 'ds-math-add-overflow'
                    require (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5)
                    if arg4:
                        if 0 / (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5) < arg4:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5), address(arg7), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5), 0, address(arg7), 128, 0
            else:
                require Mask(112, 0, ext_call.return_data[0])
                if arg3 * arg5 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != arg3 * arg5:
                    revert with 0, 'ds-math-mul-overflow'
                if not arg6:
                    if arg3 * arg5 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require arg3 * arg5
                    if arg4:
                        if arg3 * arg5 * Mask(112, 0, ext_call.return_data[0]) / arg3 * arg5 < arg4:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg3 * arg5 * Mask(112, 0, ext_call.return_data[0]) / arg3 * arg5, address(arg7), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3 * arg5 * Mask(112, 0, ext_call.return_data[0]) / arg3 * arg5, 0, address(arg7), 128, 0
                else:
                    require arg6
                    if Mask(112, 0, ext_call.return_data[32]) * arg6 / arg6 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5) < Mask(112, 0, ext_call.return_data[32]) * arg6:
                        revert with 0, 'ds-math-add-overflow'
                    require (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5)
                    if arg4:
                        if arg3 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5) < arg4:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg3 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5), address(arg7), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3 * arg5 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * arg6) + (arg3 * arg5), 0, address(arg7), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function directSwapBuyOnly(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Not allowed!'
    require ext_code.size(arg2)
    call arg2.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg2:
        if not arg4:
            if Mask(112, 0, ext_call.return_data[32]):
                require Mask(112, 0, ext_call.return_data[32])
                if 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
            require arg5
            require arg5
            if Mask(112, 0, ext_call.return_data[0]) * arg5 / arg5 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[0]) * arg5 < Mask(112, 0, ext_call.return_data[0]) * arg5:
                revert with 0, 'ds-math-add-overflow'
            require Mask(112, 0, ext_call.return_data[0]) * arg5
            if arg3:
                if 0 / Mask(112, 0, ext_call.return_data[0]) * arg5 < arg3:
                    revert with 0, 'ERR : SLIPPAGE'
            require ext_code.size(arg1)
            if arg2 == ext_call.return_data[12 len 20]:
                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / Mask(112, 0, ext_call.return_data[0]) * arg5, address(arg6), 128, 0
            else:
                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0 / Mask(112, 0, ext_call.return_data[0]) * arg5, 0, address(arg6), 128, 0
        else:
            require arg4
            if msg.value * arg4 / arg4 != msg.value:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                if not arg5:
                    if msg.value * arg4 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require msg.value * arg4
                    if arg3:
                        if 0 / msg.value * arg4 < arg3:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / msg.value * arg4, address(arg6), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / msg.value * arg4, 0, address(arg6), 128, 0
                else:
                    require arg5
                    if Mask(112, 0, ext_call.return_data[0]) * arg5 / arg5 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4) < Mask(112, 0, ext_call.return_data[0]) * arg5:
                        revert with 0, 'ds-math-add-overflow'
                    require (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4)
                    if arg3:
                        if 0 / (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4) < arg3:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4), address(arg6), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4), 0, address(arg6), 128, 0
            else:
                require Mask(112, 0, ext_call.return_data[32])
                if msg.value * arg4 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != msg.value * arg4:
                    revert with 0, 'ds-math-mul-overflow'
                if not arg5:
                    if msg.value * arg4 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require msg.value * arg4
                    if arg3:
                        if msg.value * arg4 * Mask(112, 0, ext_call.return_data[32]) / msg.value * arg4 < arg3:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, msg.value * arg4 * Mask(112, 0, ext_call.return_data[32]) / msg.value * arg4, address(arg6), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.value * arg4 * Mask(112, 0, ext_call.return_data[32]) / msg.value * arg4, 0, address(arg6), 128, 0
                else:
                    require arg5
                    if Mask(112, 0, ext_call.return_data[0]) * arg5 / arg5 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4) < Mask(112, 0, ext_call.return_data[0]) * arg5:
                        revert with 0, 'ds-math-add-overflow'
                    require (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4)
                    if arg3:
                        if msg.value * arg4 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4) < arg3:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, msg.value * arg4 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4), address(arg6), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.value * arg4 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * arg5) + (msg.value * arg4), 0, address(arg6), 128, 0
    else:
        if not arg4:
            if Mask(112, 0, ext_call.return_data[0]):
                require Mask(112, 0, ext_call.return_data[0])
                if 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
            require arg5
            require arg5
            if Mask(112, 0, ext_call.return_data[32]) * arg5 / arg5 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[32]) * arg5 < Mask(112, 0, ext_call.return_data[32]) * arg5:
                revert with 0, 'ds-math-add-overflow'
            require Mask(112, 0, ext_call.return_data[32]) * arg5
            if arg3:
                if 0 / Mask(112, 0, ext_call.return_data[32]) * arg5 < arg3:
                    revert with 0, 'ERR : SLIPPAGE'
            require ext_code.size(arg1)
            if arg2 == ext_call.return_data[12 len 20]:
                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / Mask(112, 0, ext_call.return_data[32]) * arg5, address(arg6), 128, 0
            else:
                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0 / Mask(112, 0, ext_call.return_data[32]) * arg5, 0, address(arg6), 128, 0
        else:
            require arg4
            if msg.value * arg4 / arg4 != msg.value:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                if not arg5:
                    if msg.value * arg4 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require msg.value * arg4
                    if arg3:
                        if 0 / msg.value * arg4 < arg3:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / msg.value * arg4, address(arg6), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / msg.value * arg4, 0, address(arg6), 128, 0
                else:
                    require arg5
                    if Mask(112, 0, ext_call.return_data[32]) * arg5 / arg5 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4) < Mask(112, 0, ext_call.return_data[32]) * arg5:
                        revert with 0, 'ds-math-add-overflow'
                    require (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4)
                    if arg3:
                        if 0 / (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4) < arg3:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4), address(arg6), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4), 0, address(arg6), 128, 0
            else:
                require Mask(112, 0, ext_call.return_data[0])
                if msg.value * arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != msg.value * arg4:
                    revert with 0, 'ds-math-mul-overflow'
                if not arg5:
                    if msg.value * arg4 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require msg.value * arg4
                    if arg3:
                        if msg.value * arg4 * Mask(112, 0, ext_call.return_data[0]) / msg.value * arg4 < arg3:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, msg.value * arg4 * Mask(112, 0, ext_call.return_data[0]) / msg.value * arg4, address(arg6), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.value * arg4 * Mask(112, 0, ext_call.return_data[0]) / msg.value * arg4, 0, address(arg6), 128, 0
                else:
                    require arg5
                    if Mask(112, 0, ext_call.return_data[32]) * arg5 / arg5 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4) < Mask(112, 0, ext_call.return_data[32]) * arg5:
                        revert with 0, 'ds-math-add-overflow'
                    require (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4)
                    if arg3:
                        if msg.value * arg4 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4) < arg3:
                            revert with 0, 'ERR : SLIPPAGE'
                    require ext_code.size(arg1)
                    if arg2 == ext_call.return_data[12 len 20]:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, msg.value * arg4 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4), address(arg6), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.value * arg4 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * arg5) + (msg.value * arg4), 0, address(arg6), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
