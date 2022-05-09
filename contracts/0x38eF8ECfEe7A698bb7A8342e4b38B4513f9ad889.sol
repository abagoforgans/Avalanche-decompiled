contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                    mem[207 len 21]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if 995 * arg1 / 995 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not arg3:
        if 1000 * arg2 / 1000 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * arg2) + (995 * arg1) < 1000 * arg2:
            revert with 0, 'ds-math-add-overflow'
        if (1000 * arg2) + (995 * arg1):
            return (0 / (1000 * arg2) + (995 * arg1))
    else:
        if arg3:
            if 995 * arg1 * arg3 / arg3 != 995 * arg1:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * arg2 / 1000 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * arg2) + (995 * arg1) < 1000 * arg2:
                revert with 0, 'ds-math-add-overflow'
            if (1000 * arg2) + (995 * arg1):
                return (995 * arg1 * arg3 / (1000 * arg2) + (995 * arg1))
    revert
}

function getAmountOutNoCross(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                    mem[207 len 21]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if 997 * arg1 / 997 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not arg3:
        if 1000 * arg2 / 1000 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
            revert with 0, 'ds-math-add-overflow'
        if (1000 * arg2) + (997 * arg1):
            return (0 / (1000 * arg2) + (997 * arg1))
    else:
        if arg3:
            if 997 * arg1 * arg3 / arg3 != 997 * arg1:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * arg2 / 1000 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
                revert with 0, 'ds-math-add-overflow'
            if (1000 * arg2) + (997 * arg1):
                return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
    revert
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[208 len 20]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if not arg1:
        if arg3 - arg1 > arg3:
            revert with 0, 'ds-math-sub-underflow'
        if (995 * arg3) - (995 * arg1) / 995 != arg3 - arg1:
            revert with 0, 'ds-math-mul-overflow'
        require (995 * arg3) - (995 * arg1)
        if (0 / (995 * arg3) - (995 * arg1)) + 1 < 0 / (995 * arg3) - (995 * arg1):
            revert with 0, 'ds-math-add-overflow'
        return ((0 / (995 * arg3) - (995 * arg1)) + 1)
    require arg1
    if arg2 * arg1 / arg1 != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * arg2 * arg1 / 1000 != arg2 * arg1:
        revert with 0, 'ds-math-mul-overflow'
    if arg3 - arg1 > arg3:
        revert with 0, 'ds-math-sub-underflow'
    if (995 * arg3) - (995 * arg1) / 995 != arg3 - arg1:
        revert with 0, 'ds-math-mul-overflow'
    require (995 * arg3) - (995 * arg1)
    if (1000 * arg2 * arg1 / (995 * arg3) - (995 * arg1)) + 1 < 1000 * arg2 * arg1 / (995 * arg3) - (995 * arg1):
        revert with 0, 'ds-math-add-overflow'
    return ((1000 * arg2 * arg1 / (995 * arg3) - (995 * arg1)) + 1)
}

function getAmountInNoCross(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[208 len 20]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if not arg1:
        if arg3 - arg1 > arg3:
            revert with 0, 'ds-math-sub-underflow'
        if (997 * arg3) - (997 * arg1) / 997 != arg3 - arg1:
            revert with 0, 'ds-math-mul-overflow'
        require (997 * arg3) - (997 * arg1)
        if (0 / (997 * arg3) - (997 * arg1)) + 1 < 0 / (997 * arg3) - (997 * arg1):
            revert with 0, 'ds-math-add-overflow'
        return ((0 / (997 * arg3) - (997 * arg1)) + 1)
    require arg1
    if arg2 * arg1 / arg1 != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * arg2 * arg1 / 1000 != arg2 * arg1:
        revert with 0, 'ds-math-mul-overflow'
    if arg3 - arg1 > arg3:
        revert with 0, 'ds-math-sub-underflow'
    if (997 * arg3) - (997 * arg1) / 997 != arg3 - arg1:
        revert with 0, 'ds-math-mul-overflow'
    require (997 * arg3) - (997 * arg1)
    if (1000 * arg2 * arg1 / (997 * arg3) - (997 * arg1)) + 1 < 1000 * arg2 * arg1 / (997 * arg3) - (997 * arg1):
        revert with 0, 'ds-math-add-overflow'
    return ((1000 * arg2 * arg1 / (997 * arg3) - (997 * arg1)) + 1)
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg3 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function getReservesWithCross(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg2:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, bool(ext_call.return_data[0])
    else:
        if not arg3:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg1)
        staticcall arg1.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg3 == arg2:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, bool(ext_call.return_data[0])
}

function calcMintFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.kLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).feeTo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0] <= 3:
            return 0
        s = (ext_call.return_data[0] / 2) + 1
        t = ext_call.return_data[0]
        while s < t:
            require s
            s = (ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if 0 <= t:
            return 0
        if -t > 0:
            revert with 0, 'ds-math-sub-underflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not -t:
            if t < 0:
                revert with 0, 'ds-math-add-overflow'
            if t:
                return (0 / t)
        else:
            if -t:
                if -1 * ext_call.return_data[0] * t / -t != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if t < 0:
                    revert with 0, 'ds-math-add-overflow'
                if t:
                    return (-1 * ext_call.return_data[0] * t / t)
    else:
        if Mask(112, 0, ext_call.return_data[32]):
            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) <= 3:
                if not Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                    if ext_call.return_data[0] <= 3:
                        return 0
                    s = (ext_call.return_data[0] / 2) + 1
                    t = ext_call.return_data[0]
                    while s < t:
                        require s
                        s = (ext_call.return_data[0] / s) + s / 2
                        t = s
                        continue 
                    if 0 <= t:
                        return 0
                    if -t > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not -t:
                        if t < 0:
                            revert with 0, 'ds-math-add-overflow'
                        if t:
                            return (0 / t)
                    else:
                        if -t:
                            if -1 * ext_call.return_data[0] * t / -t != ext_call.return_data[0]:
                                revert with 0, 'ds-math-mul-overflow'
                            if t < 0:
                                revert with 0, 'ds-math-add-overflow'
                            if t:
                                return (-1 * ext_call.return_data[0] * t / t)
                else:
                    if ext_call.return_data[0] <= 3:
                        if ext_call.return_data[0]:
                            return 0
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'ds-math-mul-overflow'
                        return ext_call.return_data[0]
                    s = (ext_call.return_data[0] / 2) + 1
                    t = ext_call.return_data[0]
                    while s < t:
                        require s
                        s = (ext_call.return_data[0] / s) + s / 2
                        t = s
                        continue 
                    if 1 <= t:
                        return 0
                    if -t + 1 > 1:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not -t + 1:
                        if t + 1 < 1:
                            revert with 0, 'ds-math-add-overflow'
                        if t + 1:
                            return (0 / t + 1)
                    else:
                        if -t + 1:
                            if ext_call.return_data[0] - (t * ext_call.return_data[0]) / -t + 1 != ext_call.return_data[0]:
                                revert with 0, 'ds-math-mul-overflow'
                            if t + 1 < 1:
                                revert with 0, 'ds-math-add-overflow'
                            if t + 1:
                                return (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 1)
            else:
                s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                t = Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])
                while s < t:
                    require s
                    s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                    t = s
                    continue 
                if ext_call.return_data[0] <= 3:
                    if not ext_call.return_data[0]:
                        if t <= 0:
                            return 0
                        if t > t:
                            revert with 0, 'ds-math-sub-underflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not t:
                            if 3 * t / 3 != t:
                                revert with 0, 'ds-math-mul-overflow'
                            if 3 * t / 2 < 3 * t / 2:
                                revert with 0, 'ds-math-add-overflow'
                            if 3 * t / 2:
                                return (0 / 3 * t / 2)
                        else:
                            if t:
                                if ext_call.return_data[0] * t / t != ext_call.return_data[0]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 3 * t / 3 != t:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 3 * t / 2 < 3 * t / 2:
                                    revert with 0, 'ds-math-add-overflow'
                                if 3 * t / 2:
                                    return (ext_call.return_data[0] * t / 3 * t / 2)
                    else:
                        if t <= 1:
                            return 0
                        if t - 1 > t:
                            revert with 0, 'ds-math-sub-underflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not t - 1:
                            if 3 * t / 3 != t:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * t / 2) + 1 < 3 * t / 2:
                                revert with 0, 'ds-math-add-overflow'
                            if (3 * t / 2) + 1:
                                return (0 / (3 * t / 2) + 1)
                        else:
                            if t - 1:
                                if -ext_call.return_data[0] + (t * ext_call.return_data[0]) / t - 1 != ext_call.return_data[0]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 3 * t / 3 != t:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * t / 2) + 1 < 3 * t / 2:
                                    revert with 0, 'ds-math-add-overflow'
                                if (3 * t / 2) + 1:
                                    return (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (3 * t / 2) + 1)
                else:
                    s = (ext_call.return_data[0] / 2) + 1
                    u = ext_call.return_data[0]
                    while s < u:
                        require s
                        s = (ext_call.return_data[0] / s) + s / 2
                        u = s
                        continue 
                    if t <= u:
                        return 0
                    if t - u > t:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not t - u:
                        if 3 * t / 3 != t:
                            revert with 0, 'ds-math-mul-overflow'
                        if (3 * t / 2) + u < 3 * t / 2:
                            revert with 0, 'ds-math-add-overflow'
                        if (3 * t / 2) + u:
                            return (0 / (3 * t / 2) + u)
                    else:
                        if t - u:
                            if (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / t - u != ext_call.return_data[0]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 3 * t / 3 != t:
                                revert with 0, 'ds-math-mul-overflow'
                            if (3 * t / 2) + u < 3 * t / 2:
                                revert with 0, 'ds-math-add-overflow'
                            if (3 * t / 2) + u:
                                return ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (3 * t / 2) + u)
    revert
}

function calcReserve(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.kLast() with:
            gas gas_remaining wei
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
    if not ext_call.return_data[0]:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        require ext_code.size(arg1)
        staticcall arg1.0x7b4fb858 with:
                gas gas_remaining wei
               args -1000
    else:
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).feeTo() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'ds-math-sub-underflow'
            require ext_code.size(arg1)
            staticcall arg1.0x7b4fb858 with:
                    gas gas_remaining wei
                   args -1000
        else:
            if not Mask(112, 0, ext_call.return_data[32]):
                if ext_call.return_data[0] <= 3:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(arg1)
                    staticcall arg1.0x7b4fb858 with:
                            gas gas_remaining wei
                           args -1000
                else:
                    s = (ext_call.return_data[0] / 2) + 1
                    t = ext_call.return_data[0]
                    while s < t:
                        require s
                        s = (ext_call.return_data[0] / s) + s / 2
                        t = s
                        continue 
                    if 0 <= t:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0x7b4fb858 with:
                                gas gas_remaining wei
                               args -1000
                    else:
                        if -t > 0:
                            revert with 0, 'ds-math-sub-underflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -t:
                            if t < 0:
                                revert with 0, 'ds-math-add-overflow'
                            require t
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            if 0 / t < 0:
                                revert with 0, 'ds-math-add-overflow'
                            require ext_code.size(arg1)
                            staticcall arg1.0x7b4fb858 with:
                                    gas gas_remaining wei
                                   args ((0 / t) - 1000)
                        else:
                            require -t
                            if -1 * ext_call.return_data[0] * t / -t != ext_call.return_data[0]:
                                revert with 0, 'ds-math-mul-overflow'
                            if t < 0:
                                revert with 0, 'ds-math-add-overflow'
                            require t
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            if -1 * ext_call.return_data[0] * t / t < 0:
                                revert with 0, 'ds-math-add-overflow'
                            require ext_code.size(arg1)
                            staticcall arg1.0x7b4fb858 with:
                                    gas gas_remaining wei
                                   args ((-1 * ext_call.return_data[0] * t / t) - 1000)
            else:
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) <= 3:
                    if not Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
                        if ext_call.return_data[0] <= 3:
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            require ext_code.size(arg1)
                            staticcall arg1.0x7b4fb858 with:
                                    gas gas_remaining wei
                                   args -1000
                        else:
                            s = (ext_call.return_data[0] / 2) + 1
                            t = ext_call.return_data[0]
                            while s < t:
                                require s
                                s = (ext_call.return_data[0] / s) + s / 2
                                t = s
                                continue 
                            if 0 <= t:
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x7b4fb858 with:
                                        gas gas_remaining wei
                                       args -1000
                            else:
                                if -t > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -t:
                                    if t < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require t
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if 0 / t < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x7b4fb858 with:
                                            gas gas_remaining wei
                                           args ((0 / t) - 1000)
                                else:
                                    require -t
                                    if -1 * ext_call.return_data[0] * t / -t != ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if t < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require t
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if -1 * ext_call.return_data[0] * t / t < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x7b4fb858 with:
                                            gas gas_remaining wei
                                           args ((-1 * ext_call.return_data[0] * t / t) - 1000)
                    else:
                        if ext_call.return_data[0] <= 3:
                            require ext_code.size(arg1)
                            if ext_call.return_data[0]:
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x7b4fb858 with:
                                        gas gas_remaining wei
                                       args -1000
                            else:
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'ds-math-add-overflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x7b4fb858 with:
                                        gas gas_remaining wei
                                       args (ext_call.return_data[0] - 1000)
                        else:
                            s = (ext_call.return_data[0] / 2) + 1
                            t = ext_call.return_data[0]
                            while s < t:
                                require s
                                s = (ext_call.return_data[0] / s) + s / 2
                                t = s
                                continue 
                            if 1 <= t:
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x7b4fb858 with:
                                        gas gas_remaining wei
                                       args -1000
                            else:
                                if -t + 1 > 1:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -t + 1:
                                    if t + 1 < 1:
                                        revert with 0, 'ds-math-add-overflow'
                                    require t + 1
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if 0 / t + 1 < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x7b4fb858 with:
                                            gas gas_remaining wei
                                           args ((0 / t + 1) - 1000)
                                else:
                                    require -t + 1
                                    if ext_call.return_data[0] - (t * ext_call.return_data[0]) / -t + 1 != ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if t + 1 < 1:
                                        revert with 0, 'ds-math-add-overflow'
                                    require t + 1
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 1 < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x7b4fb858 with:
                                            gas gas_remaining wei
                                           args ((ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 1) - 1000)
                else:
                    s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    if ext_call.return_data[0] <= 3:
                        if not ext_call.return_data[0]:
                            if t <= 0:
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x7b4fb858 with:
                                        gas gas_remaining wei
                                       args -1000
                            else:
                                if t > t:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not t:
                                    if 3 * t / 3 != t:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 3 * t / 2 < 3 * t / 2:
                                        revert with 0, 'ds-math-add-overflow'
                                    require 3 * t / 2
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if 0 / 3 * t / 2 < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x7b4fb858 with:
                                            gas gas_remaining wei
                                           args ((0 / 3 * t / 2) - 1000)
                                else:
                                    require t
                                    if ext_call.return_data[0] * t / t != ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 3 * t / 3 != t:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 3 * t / 2 < 3 * t / 2:
                                        revert with 0, 'ds-math-add-overflow'
                                    require 3 * t / 2
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[0] * t / 3 * t / 2 < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x7b4fb858 with:
                                            gas gas_remaining wei
                                           args ((ext_call.return_data[0] * t / 3 * t / 2) - 1000)
                        else:
                            if t <= 1:
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x7b4fb858 with:
                                        gas gas_remaining wei
                                       args -1000
                            else:
                                if t - 1 > t:
                                    revert with 0, 'ds-math-sub-underflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not t - 1:
                                    if 3 * t / 3 != t:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * t / 2) + 1 < 3 * t / 2:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * t / 2) + 1
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if 0 / (3 * t / 2) + 1 < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x7b4fb858 with:
                                            gas gas_remaining wei
                                           args ((0 / (3 * t / 2) + 1) - 1000)
                                else:
                                    require t - 1
                                    if -ext_call.return_data[0] + (t * ext_call.return_data[0]) / t - 1 != ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 3 * t / 3 != t:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (3 * t / 2) + 1 < 3 * t / 2:
                                        revert with 0, 'ds-math-add-overflow'
                                    require (3 * t / 2) + 1
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (3 * t / 2) + 1 < 0:
                                        revert with 0, 'ds-math-add-overflow'
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x7b4fb858 with:
                                            gas gas_remaining wei
                                           args ((-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (3 * t / 2) + 1) - 1000)
                    else:
                        s = (ext_call.return_data[0] / 2) + 1
                        u = ext_call.return_data[0]
                        while s < u:
                            require s
                            s = (ext_call.return_data[0] / s) + s / 2
                            u = s
                            continue 
                        if t <= u:
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'ds-math-sub-underflow'
                            require ext_code.size(arg1)
                            staticcall arg1.0x7b4fb858 with:
                                    gas gas_remaining wei
                                   args -1000
                        else:
                            if t - u > t:
                                revert with 0, 'ds-math-sub-underflow'
                            require ext_code.size(arg1)
                            staticcall arg1.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not t - u:
                                if 3 * t / 3 != t:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * t / 2) + u < 3 * t / 2:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * t / 2) + u
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if 0 / (3 * t / 2) + u < 0:
                                    revert with 0, 'ds-math-add-overflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x7b4fb858 with:
                                        gas gas_remaining wei
                                       args ((0 / (3 * t / 2) + u) - 1000)
                            else:
                                require t - u
                                if (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / t - u != ext_call.return_data[0]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 3 * t / 3 != t:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (3 * t / 2) + u < 3 * t / 2:
                                    revert with 0, 'ds-math-add-overflow'
                                require (3 * t / 2) + u
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (3 * t / 2) + u < 0:
                                    revert with 0, 'ds-math-add-overflow'
                                require ext_code.size(arg1)
                                staticcall arg1.0x7b4fb858 with:
                                        gas gas_remaining wei
                                       args (((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (3 * t / 2) + u) - 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if -Mask(144, 112, ext_call.return_data[0]) > Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'ds-math-sub-underflow'
    if -Mask(144, 112, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'ds-math-sub-underflow'
    return -Mask(144, 112, ext_call.return_data[0]), -Mask(144, 112, ext_call.return_data[32])
}

function getAmountsOut(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg3.length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    if not arg3.length:
        require 0 < arg3.length
        mem[(32 * arg3.length) + 160] = arg2
        idx = 0
        while idx < arg3.length - 1:
            require idx < arg3.length
            _465 = mem[(32 * idx) + 128]
            require idx + 1 < arg3.length
            _472 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg3.length) + 265 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(64 * arg3.length) + 164], address(_472)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg3.length) + 271 len 21]
                if address(_465) == address(_465):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] / 995 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 995 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                    else:
                        if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] / 997 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] / 995 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 995 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                    else:
                        if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] / 997 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(64 * arg3.length) + 164], address(_472)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg3.length) + 271 len 21]
                if address(_472) == address(_465):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] / 995 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 995 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                    else:
                        if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] / 997 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] / 995 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 995 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                    else:
                        if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] / 997 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require 0 < arg3.length
        mem[(32 * arg3.length) + 160] = arg2
        idx = 0
        while idx < arg3.length - 1:
            require idx < arg3.length
            _467 = mem[(32 * idx) + 128]
            require idx + 1 < arg3.length
            _476 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg3.length) + 265 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(64 * arg3.length) + 164], address(_476)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg3.length) + 271 len 21]
                if address(_467) == address(_467):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] / 995 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 995 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                    else:
                        if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] / 997 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] / 995 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 995 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                    else:
                        if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] / 997 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(64 * arg3.length) + 164], address(_476)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(64 * arg3.length) + 271 len 21]
                if address(_476) == address(_467):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] / 995 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 995 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                    else:
                        if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] / 997 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] / 995 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 995 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 995 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                    else:
                        if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] / 997 != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            require idx + 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg3.length) + 160] = 997 * mem[(32 * idx) + (32 * arg3.length) + 160] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
            idx = idx + 1
            continue 
    mem[(64 * arg3.length) + 160] = 32
    mem[(64 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
    mem[(64 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[(64 * arg3.length) + 192 len (32 * mem[(32 * arg3.length) + 128]) + 32]
}

function getAmountsIn(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg3.length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    if not arg3.length:
        require arg3.length - 1 < arg3.length
        mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg2
        idx = arg3.length - 1
        while idx:
            require idx - 1 < arg3.length
            require idx < arg3.length
            _536 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg3.length) + 265 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * arg3.length) + 160] = 0xe6a4390500000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + 164] = mem[(32 * idx - 1) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(64 * arg3.length) + 164], address(_536)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                    revert with 0, 
                                32,
                                44,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(64 * arg3.length) + 272 len 20]
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * arg3.length) + 160] = 0xe6a4390500000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + 164] = mem[(32 * idx - 1) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(64 * arg3.length) + 164], address(_536)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                    revert with 0, 
                                32,
                                44,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(64 * arg3.length) + 272 len 20]
                if address(_536) == mem[(32 * idx - 1) + 140 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            idx = idx - 1
            continue 
    else:
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require arg3.length - 1 < arg3.length
        mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg2
        idx = arg3.length - 1
        while idx:
            require idx - 1 < arg3.length
            _531 = mem[(32 * idx - 1) + 128]
            require idx < arg3.length
            _540 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(64 * arg3.length) + 265 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * arg3.length) + 164] = mem[(32 * idx - 1) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(64 * arg3.length) + 164], address(_540)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                    revert with 0, 
                                32,
                                44,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(64 * arg3.length) + 272 len 20]
                if address(_531) == address(_531):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[(64 * arg3.length) + 164] = mem[(32 * idx - 1) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(64 * arg3.length) + 164], address(_540)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x3f8bfb0 with:
                        gas gas_remaining wei
                mem[(64 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                    revert with 0, 
                                32,
                                44,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(64 * arg3.length) + 272 len 20]
                if address(_540) == address(_531):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[32])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(64 * arg3.length) + 268 len 24]
                    if ext_call.return_data[0]:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 995 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (995 * Mask(112, 0, ext_call.return_data[0])) - (995 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                    else:
                        if not mem[(32 * idx) + (32 * arg3.length) + 160]:
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
                        else:
                            require mem[(32 * idx) + (32 * arg3.length) + 160]
                            if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / mem[(32 * idx) + (32 * arg3.length) + 160] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / 1000 != Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]) / 997 != Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])
                            if (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160]):
                                revert with 0, 'ds-math-add-overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * arg3.length) + 160] / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + (32 * arg3.length) + 160])) + 1
            idx = idx - 1
            continue 
    mem[(64 * arg3.length) + 160] = 32
    mem[(64 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
    mem[(64 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[(64 * arg3.length) + 192 len (32 * mem[(32 * arg3.length) + 128]) + 32]
}



}
